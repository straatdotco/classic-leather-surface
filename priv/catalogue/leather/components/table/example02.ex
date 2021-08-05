defmodule Leather.Components.Table.Example02 do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Table,
    direction: "vertical",
    height: "800px",
    title: "Sortable table"

  data items, :list, default: [
    %{name: "Frozen yoghurt", calories: 159, fat: 6},
    %{name: "Ice cream sandwich", calories: 237, fat: 9},
    %{name: "Eclair", calories: 262, fat: 16},
  ]

  data sortedBy, :atom
  data sortDirection, :string, default: ""

  def render(assigns) do
    ~F"""
    <div class="card">
      <Table
        columns={[
          %{id: :name, label: "Dessert (100g serving)", sortable: true},
          %{id: :calories, label: "Calories", align: "right", sortable: true},
          %{id: :fat, label: "Fat (g)", align: "right", sortable: true}
        ]}
        data={@items}
        sort="sorted"
        sortBy={Map.get(assigns, :sortedBy)}
        {=@sortDirection}
      />
    </div>
    <pre>
    Items: {Jason.encode!(@items, pretty: true)}
    {#if Map.has_key?(assigns, :sortedBy)}
    SortedBy: {Jason.encode!(@sortedBy, pretty: true)}
    {/if}
    SortDirection: {Jason.encode!(@sortDirection, pretty: true)}
    </pre>
    """
  end

  def handle_event("sorted", params, socket) do
    columnId = String.to_atom(params["column"])
    newDirection =
      if Map.has_key?(socket.assigns, :sortedBy) && socket.assigns.sortedBy == columnId do
        if socket.assigns.sortDirection == "asc" do
          "desc"
        else
          "asc"
        end
      else
        "asc"
      end

    {
      :noreply,
      socket
        |> update(:items, fn list -> Enum.sort_by(list, fn item -> Map.get(item, columnId) end, (if newDirection == "asc", do: :asc, else: :desc)) end)
        |> assign(:sortDirection, newDirection)
        |> assign(:sortedBy, columnId)
    }
  end
end

defmodule Leather.Components.Table.Example01 do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Table,
    direction: "vertical",
    height: "400px",
    title: "Simple table"


  def render(assigns) do
    ~F"""
    <div class="card">
      <Table
        columns={[
          %{id: :name, label: "Dessert (100g serving)"},
          %{id: :calories, label: "Calories", align: "right", opts: [id: "custom-id"]},
          %{id: :fat, label: "Fat (g)", align: "right"}
        ]}
        data={[
          %{name: "Frozen yoghurt", calories: 159, fat: 6},
          %{name: "Ice cream sandwich", calories: 237, fat: 9},
          %{name: "Eclair", calories: 262, fat: 16},
        ]}
      />
    </div>
    """
  end
end

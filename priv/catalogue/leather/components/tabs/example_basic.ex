defmodule Leather.Components.Tabs.ExampleBasic do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Tabs,
    direction: "vertical",
    height: "140px",
    title: "Basic Tabs"
  alias Leather.Components.Card

  data active, :integer, default: 0

  def render(assigns) do
    ~F"""
    <Card noPadding>
      <Tabs
        {=@active}
        onChange="change_tab"
        data={[
          %{id: 0, label: "Your Markets"},
          %{id: 1, label: "Saved Searches"},
          %{id: 2, label: "Saved Vehicles"},
          %{id: 3, label: "Your Embeds"},
          %{id: 4, label: "Your Account"},
        ]}
      />
    </Card>
    """
  end

  def handle_event("change_tab", values, socket) do
    {newTabId, ""} = Integer.parse(values["id"])
    {:noreply, assign(socket, active: newTabId)}
  end
end

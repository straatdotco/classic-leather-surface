defmodule Leather.Components.IconButton.Example01 do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.IconButton,
    direction: "vertical"

  alias Leather.Components.Icon, as: Icon

  def render(assigns) do
    ~F"""
    <IconButton><Icon name="search" /></IconButton>
    <IconButton color="secondary"><Icon name="search" /></IconButton>
    """
  end
end

defmodule Leather.Components.ListItemText do
  use Surface.Component, slot: "text"

  slot default, required: true

  def render(assigns) do
    ~F"""
    <span class="collection-item-text"><#slot /></span>
    """
  end
end

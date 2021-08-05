defmodule Leather.Components.ListItemIcon do
  use Surface.Component, slot: "icon"

  slot default, required: true

  def render(assigns) do
    ~F(<div class={"collection-item-icon"}><#slot /></div>)
  end
end

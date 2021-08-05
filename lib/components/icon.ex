defmodule Leather.Components.Icon do
  use Surface.Component

  @doc "Name of the icon, check full list [here](https://fonts.google.com/icons)"
  prop name, :string, required: true
  prop class, :css_class, default: []
  prop fontSize, :string, values: ~w(small large inherit)
  prop opts, :keyword, default: []

  def render(assigns) do
    ~F"""
    <i class={["material-icons", "font-#{@fontSize}": @fontSize] ++ @class} {...@opts}>{@name}</i>
    """
  end
end

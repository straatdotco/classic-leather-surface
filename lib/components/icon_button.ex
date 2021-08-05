defmodule Leather.Components.IconButton do
  @moduledoc """
  Generates a icon button using Material Design
  """

  use Surface.Component

  @doc "Set the button as disabled"
  prop disabled, :boolean

  @doc "Color of the button"
  prop color, :string, values: ~w(primary secondary inherit)

  @doc "On click event"
  prop click, :event

  @doc "Custom CSS class"
  prop class, :css_class, default: []

  @doc """
  Additional attributes to add onto the generated element
  """
  prop opts, :keyword, default: []

  slot default, required: true

  def render(assigns) do
    ~F"""
    <button
      :on-click={@click}
      class={[
        "icon-btn waves-effect waves-light",
        secondary: @color == "secondary",
        "color-inherit": @color == "inherit"]
      ++ @class} {...@opts}><#slot /></button>
    """
  end
end

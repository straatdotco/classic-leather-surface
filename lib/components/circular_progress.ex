defmodule Leather.Components.CircularProgress do
  @moduledoc """
  Circular loader
  """

  use Surface.Component

  @doc "Size of the circle in css-valid units"
  prop size, :string, default: "40px"

  @doc "Color of the button"
  prop color, :string, values: ~w(primary secondary inherit)

  prop class, :css_class, default: []

  @doc """
  Additional attributes to add onto the generated element
  """
  prop opts, :keyword, default: []

  def render(assigns) do
    ~F"""
    <div class={["preloader-wrapper active"] ++ @class} style={"height: #{@size}; width: #{@size}; font-size: #{@size}"}>
      <div class={["spinner-layer", secondary: @color == "secondary", "inherit-color": @color === "inherit"]}>
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>
    </div>
    """
  end
end

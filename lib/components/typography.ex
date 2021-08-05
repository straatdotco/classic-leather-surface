defmodule Leather.Components.Typography do
  @moduledoc """
  Use it to present the text in a consistent way
  """

  use Surface.Component

  @doc "Defines the size"
  prop(variant, :string,
    default: "body1",
    values:
      ~w("h1" "h2" "h3" "h4" "h5" "h6" "h6" "subtitle1" "subtitle2" "body1" "body2" "caption")
  )

  prop(smVariant, :string,
    default: "",
    values:
      ~w("h1" "h2" "h3" "h4" "h5" "h6" "h6" "subtitle1" "subtitle2" "body1" "body2" "caption")
  )

  prop(mdVariant, :string,
    default: "",
    values:
      ~w("h1" "h2" "h3" "h4" "h5" "h6" "h6" "subtitle1" "subtitle2" "body1" "body2" "caption")
  )

  prop(lgVariant, :string,
    default: "",
    values:
      ~w("h1" "h2" "h3" "h4" "h5" "h6" "h6" "subtitle1" "subtitle2" "body1" "body2" "caption")
  )

  @doc "Set the text color"
  prop(color, :string,
    default: "primary",
    values: ~w("primary" "secondary" "hint" "success" "error" "inherit")
  )

  @doc "Adds an extra margint at the bottom"
  prop(gutterBottom, :boolean, default: false)

  prop(class, :css_class, default: [])

  prop(elementId, :string, default: "")

  slot(default, required: true)

  def render(assigns) do
    ~F"""
    <span id={@elementId} class={[
      "typography-#{@variant}",
      "typography-#{@color}-color",
      "typography-sm-#{@smVariant}": @smVariant,
      "typography-md-#{@mdVariant}": @mdVariant,
      "typography-lg-#{@lgVariant}": @lgVariant,
      "gutter-bottom": @gutterBottom]
     ++ @class}><#slot /></span>
    """
  end
end

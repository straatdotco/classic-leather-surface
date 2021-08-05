defmodule Leather.Components.Link do
  @moduledoc """
  Generate a Link, wrapper over [Surface Link](https://surface-ui.org/builtincomponents/Link)
  """

  use Surface.Component
  alias Surface.Components.Link, as: SurfaceLink
  alias Surface.Components.LivePatch, as: SurfaceLivePatch
  alias Surface.Components.LiveRedirect, as: SurfaceLiveRedirect

  prop(href, :string, required: true)

  prop(patch, :boolean, default: false)

  prop(redirect, :boolean, default: false)

  prop(color, :string,
    default: "primary",
    values: ~w(primary secondary text-primary text-secondary inherit)
  )

  prop(underline, :string, default: "none", values: ~w(none hover always))

  prop(class, :css_class, default: [])

  prop(opts, :keyword, default: [])

  prop(variant, :string, default: "body1")

  slot(default)

  def render(assigns) do
    ~F"""
    <SurfaceLink :if={!@patch && !@redirect} to={@href} class={[
      "typography-#{@variant}",
      "color-#{@color}": @color != "primary",
      "underline-#{@underline}": @underline != "none",
    ] ++ @class}
      {=@opts}
    ><#slot /></SurfaceLink>
    <SurfaceLivePatch :if={@patch} to={@href} class={[
      "typography-#{@variant}",
      "color-#{@color}": @color != "primary",
      "underline-#{@underline}": @underline != "none",
    ] ++ @class}
      {=@opts}
    ><#slot /></SurfaceLivePatch>
    <SurfaceLiveRedirect :if={@redirect} to={@href} class={[

      "typography-#{@variant}",
      "color-#{@color}": @color != "primary",
      "underline-#{@underline}": @underline != "none",
    ] ++ @class}
      {=@opts}
    ><#slot /></SurfaceLiveRedirect>
    """
  end
end

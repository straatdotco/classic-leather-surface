defmodule Leather.Components.List do
  use Surface.Component

  prop class, :css_class, default: []
  prop opts, :keyword, default: []

  slot default, required: true

  def render(assigns) do
    ~F(<ul class={["collection"] ++ @class} {...@opts}><#slot /></ul>)
  end
end

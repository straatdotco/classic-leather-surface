defmodule Leather.Components.CarouselItem do
  use Surface.Component

  prop class, :css_class, default: []
  prop opts, :keyword, default: []
  prop fixed, :boolean, default: false
  slot default

  def render(assigns) do
    ~F"""
    <div class={["carousel-item": !@fixed, "carousel-fixed-item": @fixed] ++ @class} {...@opts}>
      <#slot />
    </div>
    """
  end
end

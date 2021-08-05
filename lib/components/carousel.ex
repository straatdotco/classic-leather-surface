defmodule Leather.Components.Carousel do
  use Surface.Component

  prop class, :css_class, default: []
  prop opts, :keyword, default: []
  prop autoPlay, :boolean, default: false
  prop autoPlaySpeed, :integer, default: 1000
  slot default

  def render(assigns) do
    ~F"""
    <div
      id={"carousel-" <> Integer.to_string(:os.system_time(:millisecond))}
      :hook="Carousel"
      class={["carousel carousel-slider center"] ++ @class}
      data-auto-play={@autoPlay}
      data-auto-play-speed={@autoPlaySpeed}
      {...@opts}><#slot /></div>
    """
  end
end

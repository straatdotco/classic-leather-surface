defmodule Leather.Components.Carousel.Example02 do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Carousel,
    direction: "vertical",
    height: "500px",
    title: "AutoPlay Carousel"

  alias Leather.Components.CarouselItem

  def render(assigns) do
    ~F"""
    <Carousel autoPlay autoPlaySpeed={2000}>
      <CarouselItem class="red white-text">
        <h2>First Panel</h2>
        <p class="white-text">This is your first panel</p>
      </CarouselItem>
      <CarouselItem class="amber white-text">
        <h2>Second Panel</h2>
        <p class="white-text">This is your second panel</p>
      </CarouselItem>
      <CarouselItem class="green white-text">
        <h2>Third Panel</h2>
        <p class="white-text">This is your third panel</p>
      </CarouselItem>
    </Carousel>
    """
  end
end

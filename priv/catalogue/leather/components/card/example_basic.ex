defmodule Leather.Components.Card.ExampleBasic do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Card,
    direction: "vertical",
    height: "150px",
    title: "Basic Card"

  def render(assigns) do
    ~F"""
    <Card>
      This is the content of the Card element
    </Card>
    """
  end
end

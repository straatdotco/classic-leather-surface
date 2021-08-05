defmodule Leather.Components.Card.ExampleWithFooter do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Card,
    direction: "vertical",
    height: "200px",
    title: "Card with Footer"
  alias Leather.Components.Button
  # alias Leather.Components.CardFooter

  def render(assigns) do
    ~F"""
    <Card>
      This is the content of the Card element
      <:cardFooter>
        <Button variant="outlined" color="primary" style="margin-right: 12px;">Action Button 1</Button>
        <Button variant="outlined" color="secondary">Action Button 2</Button>
      </:cardFooter>
    </Card>
    """
  end
end

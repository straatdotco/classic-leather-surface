defmodule Leather.Components.Catalogue.Button.ExampleText do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Button,
    direction: "vertical",
    title: "Text Buttons"


  def render(assigns) do
    ~F"""
    <Button color="primary">Primary</Button>
    <Button color="secondary">Secondary</Button>
    <Button color="error">Error</Button>
    <Button color="success">Success</Button>
    <Button disabled>Button</Button>
    <Button href="https://classic.com" opts={target: "_blank"}>Link</Button>
    """
  end
end

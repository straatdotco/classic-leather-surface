defmodule Leather.Components.Button.ExampleOutlined do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Button,
    direction: "vertical",
    title: "Outlined Buttons"


  def render(assigns) do
    ~F"""
    <Button variant="outlined" color="primary">Primary</Button>
    <Button variant="outlined" color="secondary">Secondary</Button>
    <Button variant="outlined" color="error">Error</Button>
    <Button variant="outlined" color="success">Success</Button>
    <Button variant="outlined" disabled>Button</Button>
    <Button variant="outlined" href="https://classic.com" opts={target: "_blank"}>Link</Button>
    """
  end
end

defmodule Leather.Components.Button.ExampleVariants do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Button,
    direction: "vertical",
    title: "More variants"

  def render(assigns) do
    ~F"""
    <Button variant="contained" size="large">Large</Button>
    <Button variant="contained">Default</Button>
    <Button variant="contained" size="small">Small</Button>
    <Button variant="contained" loading>Default</Button>
    <Button variant="outlined" color="secondary" loading>Default</Button>
    """
  end
end

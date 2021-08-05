defmodule Leather.Components.Typography.ExampleSizes do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Typography,
    direction: "vertical",
    height: "750px"

  def render(assigns) do
    ~F"""
    <h1><Typography variant="h1" gutterBottom>h1. Heading</Typography></h1>
    <h2><Typography variant="h2" gutterBottom>h2. Heading</Typography></h2>
    <h3><Typography variant="h3" gutterBottom>h3. Heading</Typography></h3>
    <h4><Typography variant="h4" gutterBottom>h4. Heading</Typography></h4>
    <h5><Typography variant="h5" gutterBottom>h5. Heading</Typography></h5>
    <h6><Typography variant="h6" gutterBottom>h6. Heading</Typography></h6>

    <p><Typography variant="subtitle1" gutterBottom>Subtitle 1</Typography></p>
    <p><Typography variant="subtitle2" gutterBottom>Subtitle 2</Typography></p>

    <p><Typography variant="body1" gutterBottom>Body 1</Typography></p>
    <p><Typography variant="body2" gutterBottom>Body 2</Typography></p>
    <p><Typography variant="caption" gutterBottom>Caption</Typography></p>
    """
  end
end

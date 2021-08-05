defmodule Leather.Components.Alert.Example do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Alert,
    direction: "vertical",
    height: "300px",
    title: "Alert component"

  def render(assigns) do
    ~F"""
    <Alert severity="error">This is an error alert — check it out!</Alert>
    <Alert severity="warning">This is a warning alert — check it out!</Alert>
    <Alert severity="info">This is an info alert — check it out!</Alert>
    <Alert severity="success">This is a success alert — check it out!</Alert>
    """
  end
end

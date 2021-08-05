defmodule Leather.Components.CircularProgress.Example01 do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.CircularProgress,
    direction: "vertical"

  def render(assigns) do
    ~F"""
    <CircularProgress />
    <CircularProgress color="secondary"/>
    <CircularProgress color="secondary" size="24px"/>
    """
  end
end

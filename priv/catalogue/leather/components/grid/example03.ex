defmodule Leather.Components.Grid.Example03 do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Grid,
    direction: "vertical",
    height: "250px",
    title: "Auto Layout"

  alias Leather.Components.Icon, as: Icon
  alias Leather.Components.Grid.Wrapper, as: Wrapper
  alias Leather.Components.Card, as: Card

  def render(assigns) do
    ~F"""
    <Grid container spacing={3}>
      <Grid item xs>
        <Card>xs</Card>
      </Grid>
      <Grid item xs={6}>
        <Card>xs=6</Card>
      </Grid>
      <Grid item xs>
        <Card>xs</Card>
      </Grid>
    </Grid>

    <Grid container spacing={3}>
      <Grid item xs>
        <Card>xs</Card>
      </Grid>
      <Grid item xs>
        <Card>xs</Card>
      </Grid>
      <Grid item xs>
        <Card>xs</Card>
      </Grid>
    </Grid>
    """
  end
end

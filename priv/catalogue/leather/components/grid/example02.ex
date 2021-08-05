defmodule Leather.Components.Grid.Example02 do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Grid,
    direction: "vertical",
    height: "250px",
    title: "Responsive Layout"

  alias Leather.Components.Icon, as: Icon
  alias Leather.Components.Grid.Wrapper, as: Wrapper
  alias Leather.Components.Card, as: Card

  def render(assigns) do
    ~F"""
    <Grid container spacing={3}>
      <Grid item xs={12}>
        <Card>xs=12</Card>
      </Grid>
      <Grid item xs={12} sm={6}>
        <Card>xs=12 sm=6</Card>
      </Grid>
      <Grid item xs={12} sm={6}>
        <Card>xs=12 sm=6</Card>
      </Grid>
      <Grid item xs={3}>
        <Card>xs=3</Card>
      </Grid>
      <Grid item xs={3}>
        <Card>xs=3</Card>
      </Grid>
      <Grid item xs={3}>
        <Card>xs=3</Card>
      </Grid>
      <Grid item xs={3}>
        <Card>xs=3</Card>
      </Grid>
    </Grid>
    """
  end
end

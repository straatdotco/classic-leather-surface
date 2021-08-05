defmodule Leather.Components.Popover.ExampleBasic do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Popover,
    direction: "vertical",
    height: "350px",
    title: "Basic Popover"

  alias Leather.Components.Button
  alias Leather.Components.Grid

  def render(assigns) do
    ~F"""
    <div style="margin-top: 80px" />
    <Grid container justify="space-between">
      <Grid xs item>
        <Popover id="top-popover" placement="top" event="hover">
          <:trigger><Button variant="contained">Top</Button></:trigger>
          <span>This is a Popover tooltip example.</span>
        </Popover>
      </Grid>
      <Grid xs item>
        <Popover id="left-popover" placement="left" event="hover">
          <:trigger><Button variant="contained">Left</Button></:trigger>
          <span>This is a Popover tooltip example.</span>
        </Popover>
      </Grid>
      <Grid xs item>
        <Popover id="right-popover" placement="right" event="hover">
          <:trigger><Button variant="contained">Right</Button></:trigger>
          <span>This is a Popover tooltip example.</span>
        </Popover>
      </Grid>
      <Grid xs item>
        <Popover id="bottom-popover" placement="bottom" event="hover">
          <:trigger><Button variant="contained">Bottom</Button></:trigger>
          <span>This is a Popover tooltip example.</span>
        </Popover>
      </Grid>
    </Grid>
    """
  end
end

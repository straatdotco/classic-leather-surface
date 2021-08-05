defmodule Leather.Components.Popover.ExampleClick do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Popover,
    direction: "vertical",
    height: "350px",
    title: "Click Popover"

  alias Leather.Components.Button
  alias Leather.Components.Grid

  def render(assigns) do
    ~F"""
    <div style="margin-top: 80px" />
    <Grid container justify="space-between">
      <Grid xs item>
        <Popover id="top-popover" placement="top" event="click">
          <:trigger><Button variant="contained">Top</Button></:trigger>
          <span>This is a Popover tooltip example.</span>
        </Popover>
      </Grid>
      <Grid xs item>
        <Popover id="left-popover" placement="left" event="click">
          <:trigger><Button variant="contained">Left</Button></:trigger>
          <span>This is a Popover tooltip example.</span>
        </Popover>
      </Grid>
      <Grid xs item>
        <Popover id="right-popover" placement="right" event="click">
          <:trigger><Button variant="contained">Right</Button></:trigger>
          <span>This is a Popover tooltip example.</span>
        </Popover>
      </Grid>
      <Grid xs item>
        <Popover id="bottom-popover" placement="bottom" event="click">
          <:trigger><Button variant="contained">Bottom</Button></:trigger>
          <span>This is a Popover tooltip example.</span>
        </Popover>
      </Grid>
    </Grid>
    """
  end
end

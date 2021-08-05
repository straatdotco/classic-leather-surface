defmodule Leather.Components.Drawer.Example01 do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Drawer,
    direction: "vertical",
    height: "400px"

  alias Leather.Components.Button
  alias Leather.Components.List
  alias Leather.Components.ListItem
  alias Leather.Components.ListItemText
  alias Leather.Components.ListItemIcon
  alias Leather.Components.Icon

  data open, :string, default: ""

  def render(assigns) do
    content = ~F"""
    <List>
      <ListItem><ListItemIcon><Icon name="send" /></ListItemIcon><ListItemText>Page 1</ListItemText></ListItem>
      <ListItem><ListItemIcon><Icon name="send" /></ListItemIcon><ListItemText>Page 2</ListItemText></ListItem>
      <ListItem><ListItemIcon><Icon name="send" /></ListItemIcon><ListItemText>Page 3</ListItemText></ListItem>
    </List>
    """

    ~F"""
    <Drawer open={@open == "left"} close="close">
      {content}
    </Drawer>
    <Drawer open={@open == "right"} close="close" align="right">
      {content}
    </Drawer>
    <Drawer open={@open == "top"} close="close" align="top">
      {content}
    </Drawer>
    <Drawer open={@open == "bottom"} close="close" align="bottom">
      {content}
    </Drawer>
    <Button click="open" variant="contained" opts={"phx-value-align": "left"}>left</Button>
    <Button click="open" variant="contained" opts={"phx-value-align": "right"}>right</Button>
    <Button click="open" variant="contained" opts={"phx-value-align": "top"}>top</Button>
    <Button click="open" variant="contained" opts={"phx-value-align": "bottom"}>bottom</Button>
    """
  end

  def handle_event("open", params, socket) do
    {:noreply, assign(socket, :open, params["align"])}
  end

  def handle_event("close", _, socket) do
    {:noreply, assign(socket, :open, false)}
  end
end

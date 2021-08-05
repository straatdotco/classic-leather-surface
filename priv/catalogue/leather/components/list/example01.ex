defmodule Leather.Components.List.Example01 do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.List,
    direction: "vertical",
    height: "400px"

  alias Leather.Components.ListItem
  alias Leather.Components.ListItemText
  alias Leather.Components.ListItemIcon
  alias Leather.Components.Icon

  def render(assigns) do
    ~F"""
    <div style="background-color: lightgray; padding: 1rem">
      <div style="width: 100%; max-width: 360px; background-color: white; margin: 0.5rem auto">
        <List>
          <ListItem button>Single item 1</ListItem>
          <ListItem button>
            <ListItemIcon><Icon name="home" /></ListItemIcon>
            <ListItemText>Single item 2</ListItemText>
          </ListItem>
          <ListItem button>
            <ListItemText>Single item 3</ListItemText>
          </ListItem>
        </List>
      </div>
    </div>
    """
  end
end

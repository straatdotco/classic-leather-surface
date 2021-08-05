defmodule Leather.Components.TextField.Example01 do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.TextField,
    direction: "vertical",
    height: "450px"

  alias Leather.Components.TextFieldStartAdornment, as: TextFieldStartAdornment
  alias Leather.Components.TextFieldEndAdornment, as: TextFieldEndAdornment
  alias Leather.Components.Icon, as: Icon
  alias Leather.Components.Grid

  def render(assigns) do
    ~F"""
    <Grid container justify="space-between">
      <Grid item>
        <TextField placeholder="This is a placeholder" id="field" name="field" />
      </Grid>
      <Grid item>
        <TextField value="This is a password" id="password" name="password" type="password" />
      </Grid>
      <Grid item>
        <TextField label="Label" id="with_label" name="with_label" />
      </Grid>
    </Grid>

    <TextField label="Label" id="with_icon" name="with_icon" fullWidth>
      <TextFieldStartAdornment>
        <Icon name="search" />
      </TextFieldStartAdornment>
    </TextField>

    <TextField label="Label" id="with_end_icon" name="with_end_icon" fullWidth>
      <TextFieldEndAdornment>
        <Icon name="search" />
      </TextFieldEndAdornment>
    </TextField>

    <TextField label="Label" id="with_double_icon" name="with_double_icon" fullWidth>
      <TextFieldStartAdornment>
        <Icon name="done" />
      </TextFieldStartAdornment>
      <TextFieldEndAdornment>
        <Icon name="search" />
      </TextFieldEndAdornment>
    </TextField>
    """
  end
end

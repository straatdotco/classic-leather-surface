defmodule Leather.Components.Select.Example01 do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Select,
    direction: "vertical",
    height: "400px",
    title: "Basic usage"

  alias Leather.Components.SelectItem

  def render(assigns) do
    ~F"""
    <Select label="Age" name="age">
      <SelectItem value={10}>Ten</SelectItem>
      <SelectItem value={20}>Twenty</SelectItem>
      <SelectItem value={30}>Thirty</SelectItem>
    </Select>

    <Select label="Age" name="full_width_age" fullWidth>
      <SelectItem value={10}>Ten</SelectItem>
      <SelectItem value={20}>Twenty</SelectItem>
      <SelectItem value={30}>Thirty</SelectItem>
    </Select>
    """
  end
end

defmodule Leather.Components.Select.Example02 do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Select,
    direction: "vertical",
    height: "400px",
    title: "Usage with form"

  alias Leather.Components.SelectItem
  alias Surface.Components.Form

  data user, :map, default: %{"age" => ""}

  def render(assigns) do
    ~F"""
    <Form for={:user} change="change">
      <Select label="Age" name="age" fullWidth>
        <SelectItem value={10}>Ten</SelectItem>
        <SelectItem value={20}>Twenty</SelectItem>
        <SelectItem value={30}>Thirty</SelectItem>
      </Select>
    </Form>
    <pre>@user = {Jason.encode!(@user, pretty: true)}</pre>
    """
  end

  def handle_event("change", %{"user" => params}, socket) do
    {:noreply, assign(socket, :user, params)}
  end
end

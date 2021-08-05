defmodule Leather.Components.TextField.ExampleForm do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.TextField,
    direction: "vertical",
    height: "450px",
    title: "Usage with form"

  alias Surface.Components.Form

  data user, :map, default: %{"name" => "", "email" => ""}

  def render(assigns) do
    ~F"""
    <Form for={:user} change="change" submit="submit" opts={autocomplete: "off"}>
      <TextField label="Name" value={@user["name"]} name="name" fullWidth/>
      <TextField label="Email" value={@user["email"]} name="email" fullWidth/>
    </Form>
    <pre>@user = {Jason.encode!(@user, pretty: true)}</pre>
    """
  end

  def handle_event("change", %{"user" => params}, socket) do
    {:noreply, assign(socket, :user, params)}
  end
end

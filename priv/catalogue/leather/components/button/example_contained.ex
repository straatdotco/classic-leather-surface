defmodule Leather.Components.Button.ExampleContained do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Button,
    direction: "vertical",
    title: "Contained Buttons"

  data last_clicked, :string, default: ""

  def render(assigns) do
    ~F"""
    <Button variant="contained" color="primary" click="primary">Primary</Button>
    <Button variant="contained" color="secondary" click="secondary">Secondary</Button>
    <Button variant="contained" color="error" click="error">Error</Button>
    <Button variant="contained" color="success" click="success">Success</Button>
    <Button variant="contained" disabled>Disabled</Button>
    <Button variant="contained" href="https://classic.com" opts={target: "_blank"}>Link</Button>
    <div>{@last_clicked}</div>
    """
  end

  def handle_event("primary", _, socket) do
    {:noreply, assign(socket, :last_clicked, "primary")}
  end

  def handle_event("secondary", _, socket) do
    {:noreply, assign(socket, :last_clicked, "secondary")}
  end

  def handle_event("error", _, socket) do
    {:noreply, assign(socket, :last_clicked, "error")}
  end

  def handle_event("success", _, socket) do
    {:noreply, assign(socket, :last_clicked, "success")}
  end
end

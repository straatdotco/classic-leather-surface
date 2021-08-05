defmodule Leather.Components.Modal.ExampleBasic do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Modal,
    direction: "vertical",
    height: "400px",
    title: "Basic Modal"
  alias Leather.Components.Button
  alias Leather.Components.Typography

  def render(assigns) do
    ~F"""
    <Modal title="Alert" id="my-modal">
      <:title>
        <h6><Typography variant="h6">Are you sure?</Typography></h6>
      </:title>
      <:body>
        <div>
          The <b>Modal</b> is now a stateful component.<br />
          All event handlers were defined in the component itself.<br /><br /><br />
          <b>Cool!</b>
        </div>
      </:body>
      <:actions>
        <Button color="primary" click="hide_modal">CANCEL</Button>
        <Button variant="outlined" color="secondary" click="hide_modal">ACCEPT</Button>
      </:actions>
    </Modal>
    <Button variant="contained" color="primary" click="show_modal">OPEN MODAL</Button>
    """
  end

  def handle_event("show_modal", _, socket) do
    Modal.show("my-modal")
    {:noreply, socket}
  end

  def handle_event("hide_modal", _, socket) do
    Modal.hide("my-modal")
    {:noreply, socket}
  end
end

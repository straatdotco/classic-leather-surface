defmodule Leather.Components.Modal do
  use Surface.Component

  @doc "Bottom sliding variant."
  prop bottom, :boolean, default: false

  @doc "Shows or hides the modal."
  prop isOpen, :boolean, default: false

  @doc "On close event"
  prop onClose, :event

  @doc "Title of the `Modal` element."
  slot title, required: false

  @doc "Body of the `Modal` element."
  slot body, required: true

  @doc "Actions of the `Modal` element."
  slot actions, required: false

  slot default

  def render(assigns) do
    ~F"""
    <div
      class={"modal-wrapper", active: @isOpen}
      :on-window-keydown="hide"
      phx-key="Escape"
    >
      <div :on-click={@onClose} class={"modal-backdrop", active: @isOpen} />
      <div id="modal1" class={"modal", "bottom-sheet": @bottom, open: @isOpen}>
        <i class="material-icons close text-black" :on-click={@onClose}>close</i>
        {#if slot_assigned?(:title)}
        <div class="modal-title">
          <#slot name="title" />
        </div>
        {/if}
        <div class="modal-content">
          <#slot name="body" />
        </div>
        {#if slot_assigned?(:actions)}
        <div class="modal-footer">
          <#slot name="actions" />
        </div>
        {/if}
      </div>
    </div>
    """
  end
end

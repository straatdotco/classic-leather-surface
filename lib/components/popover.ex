defmodule Leather.Components.Popover do
  use Surface.Component
  alias Leather.Components.Icon

  @doc "Id to apply to the button"
  prop id, :string

  prop placement, :string, values: ~w(auto top top-start top-end bottom bottom-start bottom-end right right-start right-end lefet lefet-start lefet-end), default: "auto"

  prop event, :string, values: ~w(hover click), default: "hover"

  prop class, :css_class, default: []

  prop contentClass, :css_class, default: []

  @doc "Content of the `Popover` element."
  slot default, required: true

  @doc "element that triggers the tooltip"
  slot trigger, required: true

  def render(assigns) do
    ~F"""
    <div class={["popover"] ++ @class} :hook="Popover" id={@id} data-placement={@placement} data-event={@event}>
      <div class="popover-opener">
        <#slot name="trigger" />
      </div>
      <div class={["popover-content"] ++ @contentClass}>
        <#slot />
      </div>
    </div>
    """
  end
end

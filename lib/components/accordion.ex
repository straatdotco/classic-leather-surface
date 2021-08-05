defmodule Leather.Components.Accordion do
  use Surface.Component
  alias Leather.Components.Icon

  @moduledoc """
  Generates a Accordion using Material Design
  """

  @doc "ID of the Accordion"
  prop name, :string

  @doc "Custom CSS class"
  prop class, :css_class, default: []

  @doc "Additional attributes to add onto the generated element"
  prop opts, :keyword, default: []

  @doc "Default open/closed status"
  prop defaultOpen, :boolean, default: false, values: ~w(true false)

  @doc "Defines if the Accordion is expanded"
  prop expanded, :boolean, default: true, values: ~w(true false)

  @doc "The content of the generated `Accordion` title element."
  slot title, required: false

  @doc "The content of the generated `Accordion` element."
  slot body, required: true

  @doc "The content of the action when not expanded"
  slot expand_action, required: false

  def render(assigns) do
    ~F"""
    <div id={@name} class="collapsible bg-white" :hook="Accordion">
      <div class="collapsible-header items-center">
        <div class="collapsible-title">
          <#slot name="title" />
        </div>
        <Icon class={"collapsible-icon toggable", active: @defaultOpen} name="chevron_right" />
      </div>
      <div class={"collapsible-body relative toggable", active: @defaultOpen} style={!@expanded && "height: 350px" || ""}>
        <#slot name="body"/>
        {#if slot_assigned?(:expand_action)}
          <div
            class={
              "absolute -bottom-px left-0 w-full justify-center items-center pt-4 collapsible-actions toggable",
              active: @defaultOpen,
              "bg-gradient": !@expanded
            }
          >
            <#slot name="expand_action"/>
          </div>
        {/if}
      </div>
    </div>
    """
  end
end

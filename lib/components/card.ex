defmodule Leather.Components.Card do
  use Surface.Component

  @moduledoc """
  Generates a Card using Material Design
  """

  @doc "Id to apply to the Card"
  prop id, :string

  @doc "Custom CSS class"
  prop class, :css_class, default: []

  @doc "Additional attributes to add onto the generated element"
  prop opts, :keyword, default: []

  @doc "The content of the generated `Card` element."
  slot default

  @doc "Additional attributes to add onto the generated element"
  prop noPadding, :boolean, default: false

  @doc "Footer of the `Card` element."
  slot cardFooter, required: false

  @doc "Footer of the `Card` element."
  slot body, required: false

  def render(assigns) do
    ~F"""
    <div
      {...@opts}
      id={@id}
      class={[
        "card bg-white",
        'no-padding': @noPadding
      ] ++ @class}
    >
      <#slot name="default" />
      {#if slot_assigned?(:body)}
      <div class={"card-content", 'no-padding': @noPadding}>
        <#slot name="body" />
      </div>
      {/if}
      {#if slot_assigned?(:cardFooter)}
      <div class="card-separator" />
      <div class="card-action">
        <#slot name="cardFooter">
          Default action
        </#slot>
      </div>
      {/if}
    </div>
    """
  end
end

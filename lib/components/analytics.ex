defmodule Leather.Components.Analytics do
  use Surface.Component

  prop id, :string

  @doc "gtagSendTo to apply to the analytics button"
  prop gtagSendTo, :string, default: ""

  prop kind, :string, default: ""
  prop object, :string, default: ""
  prop from, :string, default: ""

  @doc "Custom CSS class"
  prop class, :css_class, default: []

  @doc """
  The content of the generated `<div>` element.
  """
  slot default

  def render(assigns) do
    ~F"""
    <div
      id={@id}
      data-analytics-kind={@kind}
      data-analytics-object={@object}
      data-analytics-from={@from}
      :hook="Analytics"
      class={@class}
      data-gtagSendTo={@gtagSendTo}
    >
      <#slot />
    </div>
    """
  end
end

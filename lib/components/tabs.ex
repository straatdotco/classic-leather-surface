defmodule Leather.Components.Tabs do
  @moduledoc """
  Generates a tabs list based on data
  """

  use Surface.Component
  alias Leather.Components.Icon, as: Icon

  prop data, :list, default: {}, required: true
  prop active, :integer, required: true
  prop class, :css_class, default: []
  prop onChange, :event, required: true

  def render(assigns) do
    ~F"""
    <ul class={[
      "tabs",
    ] ++ @class}>
      {#for tab <- @data}
        <li class={"tab", selected: @active == tab.id} :on-click={@onChange} phx-value-id={tab.id}>
          {tab.label}
        </li>
      {/for}
    </ul>
    """
  end
end

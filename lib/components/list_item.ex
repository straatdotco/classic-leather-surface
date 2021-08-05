defmodule Leather.Components.ListItem do
  use Surface.Component

  prop button, :boolean, default: false
  prop class, :css_class, default: []
  prop opts, :keyword, default: []

  slot default
  slot icon
  slot text

  def render(assigns) do
    # if Map.get(assigns, :default) do
    # IO.inspect(is_list(Map.get(assigns, :default)))
    # end

    ~F"""
    <li class={["collection-item", button: @button] ++ @class} {...@opts}>
      <#slot name="icon" />
      <#slot name="text" />
      <#slot name="default" />
    </li>
    """
  end
end

# {/if}
# {#if is_bitstring(@defaultText)}
# <span class="collection-item-text">{@defaultText}</span>
# {#else}
# {Jason.encode!(@inner_block)}

# WIP, coming from here: https://github.com/surface-ui/surface/issues/24#issuecomment-580049400
defmodule Leather.Components.Dynamic do
  use Surface.Component

  prop component, :module, required: true
  prop props, :map, default: %{}

  def render(assigns) do
    props =
      assigns
      |> Map.get(:props)
      |> Map.merge(%{__surface__: %{groups: %{__default__: %{binding: false, size: 0}}}}) # Don't worry about this for now :)

    ~F"""
    {{ live_component(@socket, @component, props) }}
    """
  end
end

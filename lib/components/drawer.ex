defmodule Leather.Components.Drawer do
  use Surface.Component

  prop open, :boolean, default: false
  prop class, :css_class, default: []
  prop align, :string, default: "left", values: ~w(left right top bottom)
  prop close, :event, default: "close"
  prop sideNavClass, :css_class, default: []
  prop backdropClass, :css_class, default: []

  slot default

  def render(assigns) do
    ~F"""
    <div
      class={["modal-wrapper", "active": @open] ++ @class}
      :on-window-keydown={@close}
      phx-key="Escape">
      <div class={["modal-backdrop", "active": @open] ++ @backdropClass} :on-click={@close} />
      <div class={["sidenav", "active": @open, "#{@align}-aligned": @align != "left" ] ++ @sideNavClass}>
        <#slot />
      </div>
    </div>
    """
  end
end

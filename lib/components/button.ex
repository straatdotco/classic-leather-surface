defmodule Leather.Components.Button do
  @moduledoc """
  Generates a button using Material Design
  """

  use Surface.Component

  @doc "Id to apply to the button"
  prop id, :string

  @doc """
  The button type, defaults to "button"
  """
  prop type, :string, default: "button"

  @doc "Set the button as disabled"
  prop disabled, :boolean

  @doc "Color of the button"
  prop color, :string, values: ~w(primary secondary error success)

  @doc "Size of the button"
  prop size, :string, default: "", values: ~w(small large)

  @doc "Renders a <a> tag if passed"
  prop href, :string

  @doc "Button variant"
  prop variant, :string, values: ~w(contained outlined text), default: "text"

  prop loading, :boolean

  @doc "On click event"
  prop click, :event

  @doc "Custom CSS class"
  prop class, :css_class, default: []

  @doc """
  Additional attributes to add onto the generated element
  """
  prop opts, :keyword, default: []

  @doc """
  The content of the generated `<button>` element.
  """
  slot default

  def render(assigns) do
    ~F"""
    {#if @href}
    <a
      {...@opts}
      id={@id}
      type={@type}
      href={@href}
      class={[
        "waves-effect waves-light",
        btn: @variant == "contained",
        "btn-flat": @variant == "text" || @variant == "outlined",
        "btn-outlined": @variant == "outlined",
        "btn-#{@size}": @size,
        secondary: @color == "secondary",
        disabled: @disabled
      ] ++ @class}
      disabled={@disabled}
      :on-click={@click}
    >{#if @loading}
    <Leather.Components.CircularProgress color={@color} size="20px" />
    {#else}
    <#slot/>
    {/if}</a>
    {#else}
    <button
      {...@opts}
      id={@id}
      type={@type}
      class={[
        "waves-effect waves-light",
        btn: @variant == "contained",
        "btn-flat": @variant == "text" || @variant == "outlined",
        "btn-outlined": @variant == "outlined",
        "btn-#{@size}": @size,
        "#{@color}": @color != "primary",
        disabled: @disabled
      ] ++ @class}
      disabled={@disabled}
      :on-click={@click}
      >{#if @loading}
      <Leather.Components.CircularProgress color="inherit" size="20px" />
      {#else}
      <#slot/>
      {/if}</button>
      {/if}
    """
  end
end

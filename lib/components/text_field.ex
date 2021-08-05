defmodule Leather.Components.TextFieldStartAdornment do
  use Surface.Component, slot: "startAdornment"

  prop class, :css_class, default: []

  slot default, required: true

  def render(assigns) do
    ~F"""
    <span class={["start-adornment"] ++ @class}><#slot /></span>
    """
  end
end

defmodule Leather.Components.TextFieldEndAdornment do
  use Surface.Component, slot: "endAdornment"

  prop class, :css_class, default: []

  slot default, required: true

  def render(assigns) do
    ~F"""
    <span class={["end-adornment"] ++ @class}><#slot /></span>
    """
  end
end

defmodule Leather.Components.TextField do
  @moduledoc """
  TextField component wrapper over Surface's [TextInput](https://surface-ui.org/builtincomponents/TextInput)
  """
  use Surface.Component

  alias Surface.Components.Form.TextInput, as: TextInput

  prop id, :string
  prop name, :string, required: true
  prop placeholder, :string
  prop type, :string, default: "text"
  prop label, :string
  prop value, :string, default: ""
  prop fullWidth, :boolean, default: false
  prop class, :css_class, default: []
  prop opts, :keyword, default: []
  prop inputOpts, :keyword, default: []

  @doc "Content to be appended at the beginning of the input like icons"
  slot startAdornment

  @doc "Content to be appended at the end of the input like icons"
  slot endAdornment

  def render(assigns) do
    forceActive = Map.has_key?(assigns, :startAdornment)

    ~F"""
    <div
      id={"text-field-" <> (@id || @name)}
      :hook="TextField"
      class={["input-field outlined col", "full-width": @fullWidth] ++ @class}
      {...@opts}>
      <#slot name="startAdornment" />
      <TextInput field={@name} value={@value} opts={[placeholder: @placeholder, type: @type] ++ @inputOpts}/>
      {#if @label}
      <label for={@id} class={["active": forceActive || @value != ""]} data-force-active={forceActive}>{@label}</label>
      {/if}
      <#slot name="endAdornment" />
    </div>
    """
  end
end

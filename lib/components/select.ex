defmodule Leather.Components.SelectItem do
  use Surface.Component, slot: "options"

  prop value, :any, required: true
end

defmodule Leather.Components.Select do
  use Surface.LiveComponent

  alias Surface.Components.Form.Field
  alias Surface.Components.Form.Select

  prop name, :string, required: true
  prop label, :string
  prop fullWidth, :boolean, default: false
  prop value, :any, default: ""
  prop opts, :keyword, default: []
  prop selectOpts, :keyword, default: []

  slot options

  def render(assigns) do
    selectOptions =
      Enum.with_index(Map.get(assigns, :options))
        |> Enum.map(fn {option, index} -> [key: ~F(<#slot name="options" index={index} />), value: option.value] end)

    ~F"""
    <div :hook="Select" id={"select-" <> @name} class={["input-field outlined hide-first-option", "full-width": @fullWidth]} phx-update="ignore" {...@opts}>
      <Select field={@name} value={@value} options={[[key: "", value: ""]] ++ selectOptions} opts={[tabindex: -1] ++ @selectOpts} />
      {#if @label}
      <label>{@label}</label>
      {/if}
    </div>
    """
  end
end

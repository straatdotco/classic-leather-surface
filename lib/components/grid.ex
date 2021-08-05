defmodule Leather.Components.Grid do
  @moduledoc """
  Support the grid system, 12-based
  """

  use Surface.Component

  prop container, :boolean, default: false
  prop item, :boolean, default: false
  prop spacing, :integer, values: ~w(0 1 2 3 4 5 6 7 8), default: 0
  prop alignContent, :string, values: ~w(stretch center flex-start flex-end space-between space-around)
  prop alignItems, :string, values: ~w(center flex-start flex-end stretch baseline)
  prop direction, :string, values: ~w(row row-reverse column column-reverse)
  prop justify, :string, values: ~w(flex-start center flex-end space-between space-around space-evenly)
  prop wrap, :string, values: ~w(nowrap wrap wrap-reverse), default: "wrap"

  prop xs, :any, values: ~w(false auto true 1 2 3 4 5 6 7 8 9 10 11 12), default: false
  prop sm, :any, values: ~w(false auto true 1 2 3 4 5 6 7 8 9 10 11 12), default: false
  prop md, :any, values: ~w(false auto true 1 2 3 4 5 6 7 8 9 10 11 12), default: false
  prop lg, :any, values: ~w(false auto true 1 2 3 4 5 6 7 8 9 10 11 12), default: false

  prop class, :css_class, default: []

  slot default

  def render(assigns) do
    ~F"""
    <div class={[
      "grid-container": @container,
      "grid-item": @item,
      "spacing-#{@spacing}": @spacing > 0,
      "align-content-#{@alignContent}": @container && @alignContent,
      "align-items-#{@alignItems}": @container && @alignItems,
      "direction-#{@direction}": @container && @direction,
      "justify-#{@justify}": @container && @justify,
      "wrap-#{@wrap}": @container && @wrap,
      "xs-#{@xs}": @xs,
      "sm-#{@sm}": @sm,
      "md-#{@md}": @md,
      "lg-#{@lg}": @lg,
    ] ++ @class}><#slot /></div>
    """
  end

end

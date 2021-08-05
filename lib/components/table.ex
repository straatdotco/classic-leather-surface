defmodule Leather.Components.Table do
  @moduledoc """
  Generates a table based on columns and data
  """

  use Surface.Component
  alias Leather.Components.Icon, as: Icon

  prop columns, :list, required: true
  prop data, :list, default: {}
  prop sort, :event, default: "sort"
  prop sortBy, :atom
  prop sortDirection, :string
  prop class, :css_class, default: []
  prop size, :string, default: "medium", values: ~w(small medium)

  def render(assigns) do
    ~F"""
    <table class={["small": @size == "small"] ++ @class}>
      <thead>
        <tr>
        {#for column <- @columns}
          <th
            {...Map.get(column, :headerOpts, [])}
            class={[
              "text-#{Map.get(column, :align, "left")}",
            ] ++ Keyword.get(Map.get(column, :headerOpts, []), :class, [])}
          >
            {#if Map.get(column, :sortable, false)}
              <span class={[
                "sort-label",
                reversed: Map.get(column, :align) == "right",
                "active": @sortBy == column.id,
                "sort-desc": @sortDirection == "desc"
              ]} role="button" :on-click={@sort} phx-value-column={column.id}>{column.label}<Icon name="arrow_upward" /></span>
            {#else}
              {column.label}
            {/if}
          </th>
        {/for}
        </tr>
      </thead>
      <tbody>
      {#for row <- @data}
        <tr>
          {#for column <- @columns}
            <td
              {...Map.get(column, :bodyOpts, [])}
              class={[
                "text-#{Map.get(column, :align, "left")}"
              ] ++ Keyword.get(Map.get(column, :bodyOpts, []), :class, [])}
            >
            {if Map.has_key?(column, :cell), do: column.cell.(Map.get(row, column.id), row), else: Map.get(row, column.id)}
            </td>
          {/for}
        </tr>
      {/for}
      </tbody>
    </table>
    """
  end
end

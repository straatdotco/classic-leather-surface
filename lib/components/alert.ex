defmodule Leather.Components.Alert do
  use Surface.Component

  alias Leather.Components.Card
  alias Leather.Components.Icon

  @moduledoc """
  Generates an Alert using Material Design
  """

  @doc "Id to apply to the Alert"
  prop id, :string

  @doc "Severity of the Alert, affects the coloring"
  prop severity, :string, values: ~w(error warning info success), default: "info"

  @doc "Custom CSS class"
  prop class, :css_class, default: []

  @doc "The content of the generated `Alert` element."
  slot default


  def render(assigns) do

    severity_icon_name = case assigns.severity do
      "error" -> "error"
      "warning" -> "warning"
      "info" -> "info"
      "success" -> "check_circle"
    end

    ~F"""
    <Card class={[
      "px-4 py-3 flex items-center",
      "bg-red-50 text-red-900": @severity == "error",
      "bg-yellow-50 text-yellow-900": @severity == "warning",
      "bg-blue-50 text-blue-900": @severity == "info",
      "bg-green-50 text-green-900": @severity == "success",
    ] ++ @class}>
      <Icon class="mr-4" name={severity_icon_name} />
      <#slot />
    </Card>
    """
  end
end

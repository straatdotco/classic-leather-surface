defmodule Leather.LooseOperators do
  def falsy(false), do: true
  def falsy(nil), do: true
  def falsy(0), do: true
  def falsy([]), do: true
  def falsy(%{} = map) when map == %{}, do: true
  def falsy(""), do: true
  def falsy(_), do: false
  def truthy(x), do: !falsy(x)

  def a ||| b do
    if falsy(a), do: b, else: a
  end
  def a &&& b do
    if truthy(a), do: b, else: a
  end
  def a +++ b do
    if falsy(a), do: b, else:
      if falsy(b), do: a, else: a ++ b
  end
  defmacro iffy(expr, do: doblock, else: elseblock) do
    quote do
      if truthy(unquote(expr)), do: unquote(doblock), else: unquote(elseblock)
    end
  end
  defmacro iffy(expr, do: doblock) do
    quote do
      if truthy(unquote(expr)), do: unquote(doblock), else: nil
    end
  end
end


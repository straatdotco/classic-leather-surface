defmodule Leather.Components.Link.Example01 do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Link,
    direction: "vertical",
    height: "400px"

  def render(assigns) do
    ~F"""
    <div>
      <Link href="https://classic.com" opts={target: "_blank"}>Link</Link>
    </div>

    <div>
      <Link href="https://classic.com" color="secondary" opts={target: "_blank"}>color=secondary</Link>
    </div>

    <div style="color: pink">
      <Link href="https://classic.com" color="inherit" opts={target: "_blank"}>color=inherit</Link>
    </div>

    <div>
      <Link href="https://classic.com" underline="hover" opts={target: "_blank"}>underline=hover</Link>
    </div>

    <div>
      <Link href="https://classic.com" underline="always" opts={target: "_blank"}>underline=always</Link>
    </div>

    <div>
      <Link href="#" patch>with LivePatch</Link>
    </div>
    """
  end
end

defmodule Leather.Components.Catalogue.Accordion.ExampleBasic do
  use Surface.Catalogue.Example,
    catalogue: Leather.Components.Catalogue,
    subject: Leather.Components.Accordion,
    direction: "vertical",
    height: "340px",
    title: "Basic Accordion"
    alias Leather.Components.Typography

  def render(assigns) do
    ~F"""
    <Accordion id="my-accordion">
      <:title>
        <Typography variant="subtitle2">Suggested Markets</Typography>
      </:title>
      <:body>
        <div>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
          labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
          nisi ut aliquip ex ea commodo consequat. consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
          labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
          nisi ut aliquip ex ea commodo consequat.
        </div>
        <div>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
          labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
          nisi ut aliquip ex ea commodo consequat.
        </div>
        <div>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
          labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
          nisi ut aliquip ex ea commodo consequat.
        </div>
      </:body>
    </Accordion>
    """
  end
end

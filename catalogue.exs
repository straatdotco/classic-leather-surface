
Logger.configure(level: :debug)

defmodule Surface.Catalogue.ErrorView do
  use Phoenix.View,
  root: "lib/surface/catalogue/templates",
  namespace: Surface.Catalogue
end

# Start the catalogue server
Surface.Catalogue.Server.start(
  live_reload: [
    patterns: [
      ~r"priv/catalogue/leather/.*(ex)$"
    ]
  ]
)

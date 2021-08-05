
Logger.configure(level: :debug)

# Start the catalogue server
Surface.Catalogue.Server.start(
  live_reload: [
    patterns: [
      ~r"priv/catalogue/leather/.*(ex)$"
    ]
  ]
)

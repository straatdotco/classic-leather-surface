defmodule Leather.MixProject do
  use Mix.Project

  def project do
    [
      app: :leather,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp aliases do
    [
      catalogue: "run --no-halt catalogue.exs"
    ]
  end
  
  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:floki, ">= 0.30.0", only: :test},
      {:httpoison, "~> 1.8"},
      {:jason, "~> 1.0"},
      {:phoenix, "~> 1.5.9"},
      {:phoenix_live_view, "~> 0.15.1"},
      {:phoenix_html, "~> 2.11"},
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:phoenix_live_dashboard, "~> 0.4"},
      {:surface, "~> 0.5.0"},
      {:surface_catalogue, "~> 0.1.0"},
    ]
  end

  def catalogues do
    [
      "priv/catalogue"
    ]
  end

  defp elixirc_paths(:dev), do: ["lib"] ++ catalogues()

end

defmodule Diamond.MixProject do
  use Mix.Project

  def project do
    [
      app: :diamond,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end
end

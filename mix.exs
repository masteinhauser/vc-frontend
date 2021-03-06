defmodule Frontend.Mixfile do
  use Mix.Project

  def project do
    [app: :frontend,
     version: "0.1.2",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
      mod: { Frontend, [] },
      applications: [:phoenix, :cowboy, :logger, :phoenix_ecto, :plug_byte_serve]
    ]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [
      {:phoenix, "~> 0.10.0"},
      {:phoenix_ecto, "~> 0.1"},
      {:postgrex, ">= 0.0.0"},
      {:cowboy, "~> 1.0"},
      {:plug_byte_serve, "~> 0.3.0"},
      {:exrm, "~> 0.14.16"}
    ]
  end
end

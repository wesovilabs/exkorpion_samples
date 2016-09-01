defmodule ExkorpionSamples.Mixfile do
  use Mix.Project

  def project do
    [app: :exkorpion_samples,
     version: "0.1.0",
     elixir: "~> 1.3",
     deps: deps]
  end

  def application do
    [applications: [:logger, :exkorpion]]
  end

  defp deps do
    [  { :exkorpion, path: "/Users/Ivan/Sandbox/WesoviLabs/exkorpion/" }]
  end
end

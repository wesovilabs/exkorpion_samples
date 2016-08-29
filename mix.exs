defmodule ExkorpionSamples.Mixfile do
  use Mix.Project

  def project do
    [app: :exkorpion_samples,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :exkorpion]]
  end

  defp deps do
    [{:exkorpion, "~> 0.0.1"}]
  end
end

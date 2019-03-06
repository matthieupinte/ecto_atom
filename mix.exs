defmodule Ecto.Atom.Mixfile do
  use Mix.Project

  def project do
    [app: :ecto_atom,
     version: "1.0.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     source_url: "https://github.com/matthieupinte/ecto_atom"]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  defp description do
    """
    Provide an Ecto custom type Ecto.Atom to manage `:atom`.
    """
  end

  defp deps do
    [{:ecto, "~> 3.0"},
     {:ex_doc, "~> 0.14", only: :dev, runtime: false}]
  end

  defp package do
    # These are the default files included in the package
    [
      name: :ecto_atom,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Matthieu Pinte"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/matthieupinte/ecto_atom"}
    ]
  end
end

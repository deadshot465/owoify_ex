defmodule OwoifyEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :owoify_ex,
      version: "1.0.0",
      elixir: "~> 1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      source_url: "https://github.com/deadshot465/owoify_ex",
      homepage_url: "https://github.com/deadshot465/owoify_ex",
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.28", only: :dev, runtime: false}
    ]
  end

  defp description do
    "This Elixir port of mohan-cao's owoify-js is released under MIT license, which is also the same license of owoify-js. This simple library will turn any string into nonsensical babyspeak similar to what LeafySweet's infamous Chrome extension did."
  end

  defp package do
    [
      name: "owoify_ex",
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*
                CHANGELOG*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/deadshot465/owoify_ex"}
    ]
  end
end

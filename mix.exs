defmodule PDFTools.MixProject do
  use Mix.Project

  @version "0.0.1"

  def project do
    [
      app: :pdf_tools,
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps(),
      name: "PDF Tools",
      description: "Helper functions for working with PDFs",
      source_url: "https://github.com/agoodway/pdf_tools",
      docs: [
        main: "pdf_tools",
        extras: ["README.md"]
      ]
    ]
  end

  defp package do
    [
      files: ~w[
        lib
        native/pdf_tools/src
        native/pdf_tools/Cargo.*
        native/pdf_tools/README.md
        native/pdf_tools/.cargo
        .formatter.exs
        mix.exs
        README.md
        ],
      links: %{
        "GitHub" => "https://github.com/agoodway/pdf_tools",
        "Docs" => "https://hexdocs.pm/pdf_tools"
      },
      source_url: "https://github.com/agoodway/pdf_tools"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:rustler, ">= 0.0.0", optional: true},
      {:credo, ">= 0.0.0", only: [:dev, :test], runtime: false},
      {:dialyxir, ">= 0.0.0", only: [:dev, :test], runtime: false},
      {:doctor, ">= 0.0.0", only: [:dev, :test], runtime: false},
      {:ex_doc, ">= 0.0.0", only: [:dev, :test], runtime: false},
      {:mix_audit, ">= 0.0.0", only: [:dev, :test], runtime: false},
      {:styler, "~> 0.11", only: [:dev, :test], runtime: false}
    ]
  end
end

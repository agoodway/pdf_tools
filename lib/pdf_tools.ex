defmodule PDFTools do
  @moduledoc """
  Helper functions for working with PDFs.
  """

  use Rustler,
    otp_app: :pdf_tools,
    crate: :pdf_tools

  @doc """
  Extracts text from the binary blob of a PDF.
  """
  @spec from_binary(String.t()) :: {:ok, String.t()} | {:error, any()}
  def from_binary(_binary), do: :erlang.nif_error(:nif_not_loaded)

  @doc """
  Extracts text from a PDF on disk given its path.
  """
  @spec from_path(String.t()) :: {:ok, String.t()} | {:error, any()}
  def from_path(_path), do: :erlang.nif_error(:nif_not_loaded)
end

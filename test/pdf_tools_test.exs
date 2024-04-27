defmodule PDFToolsTest do
  use ExUnit.Case

  @pdf_fixture "./test/test_files/dummy.pdf"

  describe "from_path/1" do
    test "when file is available, parses content correctly" do
      assert {:ok, content} = PDFTools.from_path(@pdf_fixture)
      assert content =~ "Dummy PDF file\n\n;"
    end

    test "when file isn't available, return error" do
      assert {:error, _} = PDFTools.from_path("/invalid/path/to/file.pdf")
    end
  end

  describe "from_binary" do
    test "parses content correctly" do
      binary = File.read!(@pdf_fixture)
      assert {:ok, pdf} = PDFTools.from_binary(binary)
      assert pdf =~ "Dummy PDF file\n\n;"
    end
  end
end

# typed: false
# frozen_string_literal: true

# This formula is kept only to guide users to the cask replacement.
class Mdtool < Formula
  desc "Render templated Markdown documents to HTML or PDF with Chromium."
  homepage "https://gitlab.com/pidrakin/mdtool"
  version "0.5.2"
  license "MIT"
  disable! date: "2026-03-26", because: "is now distributed as a cask", replacement_cask: "mdtool"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://gitlab.com/pidrakin/mdtool/-/releases/0.5.2/downloads/mdtool-0.5.2-darwin-arm64.tar.gz"
    sha256 "3227d016492e83eed11bed10fbd93b00e0e36d5bed55be1910a58c91ac26c46c"

    define_method(:install) do
      bin.install "mdtool"
      doc.install "LICENSE"
      doc.install "README.md"
    end
  end

  def caveats
    <<~EOS
      Install Google Chrome or Chromium if you want to generate PDFs with the native binary.
      Set MDTOOL_BROWSER when auto-discovery is not sufficient.

      PlantUML code fences also require a Java runtime and the plantuml executable in PATH.
    EOS
  end

  test do
    system "#{bin}/mdtool", "--version"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotfiles < Formula
  desc "This tool encourages and supports creating, maintaining and distributing a set of dotfiles. Dotfiles encompasses the relevant configuration files accompanying most of the binaries, tools on nix-themed systems."
  homepage "https://gitlab.com/pidrakin/dotfiles-cli"
  version "1.2.4"
  license "HOOKAH-WARE"

  depends_on "bash-completion@2"
  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v1.2.4/downloads/dotfiles-1.2.4-darwin-amd64.tar.gz"
      sha256 "6aa836cdcc5808c95c49a95a91803c3a0eef41621267a51eda6f9f92fce6589f"

      def install
        bin.install "dotfiles"
        man1.install Dir["man/*"]
        doc.install Dir["docs/*"]
        doc.install "LICENSE"
        doc.install "README.md"
        doc.install "preview.png"
      end
    end
    if Hardware::CPU.arm?
      url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v1.2.4/downloads/dotfiles-1.2.4-darwin-arm64.tar.gz"
      sha256 "b015a78287c17d9999a9685bfdf5254111a8640ec7bef5fcfac70b48d94f9a5a"

      def install
        bin.install "dotfiles"
        man1.install Dir["man/*"]
        doc.install Dir["docs/*"]
        doc.install "LICENSE"
        doc.install "README.md"
        doc.install "preview.png"
      end
    end
  end

  def post_install
    system "#{bin}/dotfiles completion bash > /usr/local/etc/bash_completion.d/dotfiles"
  end

  test do
    system "#{bin}/dotfiles --version"
  end
end

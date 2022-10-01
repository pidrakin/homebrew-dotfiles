# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotfiles < Formula
  desc "This tool encourages and supports creating, maintaining and distributing a set of dotfiles. Dotfiles encompasses the relevant configuration files accompanying most of the binaries, tools on nix-themed systems."
  homepage "https://gitlab.com/pidrakin/dotfiles-cli"
  version "1.3.0"
  license "HOOKAH-WARE"

  depends_on "bash-completion@2"
  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v1.3.0/downloads/dotfiles-1.3.0-darwin-amd64.tar.gz"
      sha256 "702601a16ad1382ea9810ec3aa2456e5f4d0b61abd93c7df9c7d67580954861a"

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
      url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v1.3.0/downloads/dotfiles-1.3.0-darwin-arm64.tar.gz"
      sha256 "f02cecf0c463ec8257d855def836cb960a135e83a6920bb09c13a22b71bf1700"

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

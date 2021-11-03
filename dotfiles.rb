# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotfiles < Formula
  desc "This tool encourages and supports creating, maintaining and distributing a set of dotfiles. Dotfiles encompasses the relevant configuration files accompanying most of the binaries, tools on nix-themed systems."
  homepage "https://gitlab.com/pidrakin/dotfiles-cli"
  version "1.0.1"
  license "HOOKAH-WARE"

  on_macos do
    if Hardware::CPU.intel?
      url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/1.0.1/downloads/dotfiles_1.0.1_Darwin_x86_64.tar.gz"
      sha256 "dc55080ce1ac6f86dabba93c43514cc2b48f971245622a2d7f3063053e7e7e98"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/1.0.1/downloads/dotfiles_1.0.1_Linux_x86_64.tar.gz"
      sha256 "afdf362a91a65a4f893d5efc5d2c8790acd636c0609d11f4c2592db83464ca4c"
    end
  end

  def install
    bin.install "dotfiles"
  end

  test do
    system "#{bin}/dotfiles --version"
  end
end

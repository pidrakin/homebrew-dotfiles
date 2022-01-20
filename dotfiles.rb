# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotfiles < Formula
  desc "This tool encourages and supports creating, maintaining and distributing a set of dotfiles. Dotfiles encompasses the relevant configuration files accompanying most of the binaries, tools on nix-themed systems."
  homepage "https://gitlab.com/pidrakin/dotfiles-cli"
  version "1.0.2"
  license "HOOKAH-WARE"

  on_macos do
    if Hardware::CPU.intel?
      url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v1.0.2/downloads/dotfiles_1.0.2_Darwin_x86_64.tar.gz"
      sha256 "3654fd1d51540bf3196454a36f81695fe0e95fe2b930211a7c67a24bb71d5103"

      def install
        bin.install "dotfiles"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v1.0.2/downloads/dotfiles_1.0.2_Linux_x86_64.tar.gz"
      sha256 "36f1ab93a99520d79dd433d549875135e8bb20d08fce7aa427c02ede173b1256"

      def install
        bin.install "dotfiles"
      end
    end
  end

  test do
    system "#{bin}/dotfiles --version"
  end
end

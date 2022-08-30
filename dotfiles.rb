# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotfiles < Formula
  desc "This tool encourages and supports creating, maintaining and distributing a set of dotfiles. Dotfiles encompasses the relevant configuration files accompanying most of the binaries, tools on nix-themed systems."
  homepage "https://gitlab.com/pidrakin/dotfiles-cli"
  version "1.1.20"
  license "HOOKAH-WARE"

  on_macos do
    url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v1.1.20/downloads/dotfiles_1.1.20_Darwin_x86_64.tar.gz"
    sha256 "a15474b23818c93fe1d810a824a2864ff1dfc9ff7077b6a4e8fe999b9a8eeaf0"

    def install
      bin.install "dotfiles"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Dotfiles
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v1.1.20/downloads/dotfiles_1.1.20_Linux_x86_64.tar.gz"
      sha256 "4c5c85da8de5d74afea714856ecca6b90595092c05aa9335c422dafc99b43e87"

      def install
        bin.install "dotfiles"
      end
    end
  end

  test do
    system "#{bin}/dotfiles --version"
  end
end

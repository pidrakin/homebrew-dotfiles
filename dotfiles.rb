# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotfiles < Formula
  desc "This tool encourages and supports creating, maintaining and distributing a set of dotfiles. Dotfiles encompasses the relevant configuration files accompanying most of the binaries, tools on nix-themed systems."
  homepage "https://gitlab.com/pidrakin/dotfiles-cli"
  version "2.1.0"
  license "HOOKAH-WARE"

  on_macos do
    url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v2.1.0/downloads/dotfiles_2.1.0_Darwin_x86_64.tar.gz"
    sha256 "be503a305f05dceece87e69e91b34efcf66dca4c863ca05b7cfcf89602b831ec"

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
      url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v2.1.0/downloads/dotfiles_2.1.0_Linux_x86_64.tar.gz"
      sha256 "ebac1f9e81710b8adfa329c0e5b1b92c7bf07a315c766ba5c8727483712db214"

      def install
        bin.install "dotfiles"
      end
    end
  end

  test do
    system "#{bin}/dotfiles --version"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotfiles < Formula
  desc "This tool encourages and supports creating, maintaining and distributing a set of dotfiles. Dotfiles encompasses the relevant configuration files accompanying most of the binaries, tools on nix-themed systems."
  homepage "https://gitlab.com/pidrakin/dotfiles-cli"
  version "1.1.14"
  license "HOOKAH-WARE"

  on_macos do
    url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v1.1.14/downloads/dotfiles_1.1.14_Darwin_x86_64.tar.gz"
    sha256 "dbd3100010215776baad389c8139128c4a1ab6cd8e8a939fa2782eefa5f90114"

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
      url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v1.1.14/downloads/dotfiles_1.1.14_Linux_x86_64.tar.gz"
      sha256 "4725ee02de622500e17fff747bb1b34ba5dc8e519e90c68a0285a01006934be5"

      def install
        bin.install "dotfiles"
      end
    end
  end

  test do
    system "#{bin}/dotfiles --version"
  end
end

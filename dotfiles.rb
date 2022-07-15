# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotfiles < Formula
  desc "This tool encourages and supports creating, maintaining and distributing a set of dotfiles. Dotfiles encompasses the relevant configuration files accompanying most of the binaries, tools on nix-themed systems."
  homepage "https://gitlab.com/pidrakin/dotfiles-cli"
  version "2.0.3"
  license "HOOKAH-WARE"

  on_macos do
    url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v2.0.3/downloads/dotfiles_2.0.3_Darwin_x86_64.tar.gz"
    sha256 "87ed356f1cc4356334539c5f670747222af66cdf8d5ff91d615d1463d2fd0aeb"

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
      url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v2.0.3/downloads/dotfiles_2.0.3_Linux_x86_64.tar.gz"
      sha256 "67b2ec19752dbfd1db20322e2380727930223c205fabdec4efb663e1b73ecd6c"

      def install
        bin.install "dotfiles"
      end
    end
  end

  test do
    system "#{bin}/dotfiles --version"
  end
end

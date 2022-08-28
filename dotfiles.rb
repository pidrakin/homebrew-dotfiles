# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotfiles < Formula
  desc "This tool encourages and supports creating, maintaining and distributing a set of dotfiles. Dotfiles encompasses the relevant configuration files accompanying most of the binaries, tools on nix-themed systems."
  homepage "https://gitlab.com/pidrakin/dotfiles-cli"
  version "2.1.2"
  license "HOOKAH-WARE"

  on_macos do
    url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v2.1.2/downloads/dotfiles_2.1.2_Darwin_x86_64.tar.gz"
    sha256 "123ba578bae9ceabc7675dcc25b51cda515c7823562df1fd8e26623245d743f5"

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
      url "https://gitlab.com/pidrakin/dotfiles-cli/-/releases/v2.1.2/downloads/dotfiles_2.1.2_Linux_x86_64.tar.gz"
      sha256 "f7031abe879d3fea614abeff816f9553577c2625eafe14700e5a6b1bb1857796"

      def install
        bin.install "dotfiles"
      end
    end
  end

  test do
    system "#{bin}/dotfiles --version"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "0.1.34"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.34/blocc_0.1.34_Darwin_x86_64.tar.gz"
      sha256 "559370c9e19988ed399d00d8895fa8cd52ab61e36409b8df110a67f77059cb34"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.34/blocc_0.1.34_Darwin_arm64.tar.gz"
      sha256 "97aec095476fde39b329ee3486e995057a331d2c86077749a9864b101bfb0af6"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.34/blocc_0.1.34_Linux_x86_64.tar.gz"
      sha256 "e30cf647ba814d5da29c20d7b2fb51374fb8dfafbd507d6f0d4c785e734af877"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.34/blocc_0.1.34_Linux_arm64.tar.gz"
      sha256 "4daa2f68611ac241b42d2426c0f7511cd162ca0d7c32682826cfe459801574d4"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

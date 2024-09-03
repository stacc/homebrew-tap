# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "0.23.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.23.0/blocc_0.23.0_darwin_arm64.tar.gz"
      sha256 "5515ead88484ec08f10c538bc7f8dcf9284465109359f8117fbf1066a36f26b2"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.23.0/blocc_0.23.0_darwin_amd64.tar.gz"
      sha256 "3828b2e19f3dd7cee467222e1030f0d7e7397a4e1136f611f40b78b796283148"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.23.0/blocc_0.23.0_linux_amd64.tar.gz"
      sha256 "7d7bb0716e376c7a8d3404af2d6a9f4e7d1e542134cc574a90fb661026596452"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.23.0/blocc_0.23.0_linux_arm64.tar.gz"
      sha256 "01afac15e6631743c5d20ea6bc48be0e63883f1cf1770a3bfefeaaf6cc5689e7"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

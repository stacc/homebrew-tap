# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "0.2.12-beta"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.2.12-beta/blocc_0.2.12-beta_darwin_amd64.tar.gz"
      sha256 "a0a15380199c1816c3ad1a8f02a2b4054dec4cf2fd58c570f918c34ce41c97c3"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.2.12-beta/blocc_0.2.12-beta_darwin_arm64.tar.gz"
      sha256 "9fff9809250b07263d1b73e5072a59a04fea7a0cf3bd4e7eec27e9ab615ca4d7"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.2.12-beta/blocc_0.2.12-beta_linux_amd64.tar.gz"
      sha256 "2cc22079d0044341483c5d92cf8f512de59b3fa93de3cc7318cbbf06f77f6922"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.2.12-beta/blocc_0.2.12-beta_linux_arm64.tar.gz"
      sha256 "f1277c307debaa60009b23f98d342c95746e59adc55cfcdbdb22716fd6c5a0b8"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

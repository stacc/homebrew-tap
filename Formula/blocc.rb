# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "0.2.18"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.2.18/blocc_0.2.18_darwin_amd64.tar.gz"
      sha256 "75f2a5c7873488f0e7bbd03854184fbd3001dc531105b74f4361f686538abe53"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.2.18/blocc_0.2.18_darwin_arm64.tar.gz"
      sha256 "981eb66d5bbd2511976df3ebb705193f947798ddcae34fff5f8e26f65242b38a"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.2.18/blocc_0.2.18_linux_amd64.tar.gz"
      sha256 "5c51cd23f05793a71bddfbd0a2e97abf523d681ba5f44b1d86db6faec489fd87"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.2.18/blocc_0.2.18_linux_arm64.tar.gz"
      sha256 "79317ddec4396f4c270495de54930b325606104b0a8459e703d79fa208ab5b97"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

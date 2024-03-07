# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "0.2.17"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.2.17/blocc_0.2.17_darwin_arm64.tar.gz"
      sha256 "9e175249a1de0e8bd3f1b91b641b16d21aa5d7a07e20162f2127d0b69efb3f9d"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.2.17/blocc_0.2.17_darwin_amd64.tar.gz"
      sha256 "318ad50f8b3e360ce4b59e44a1706187243671bd879cab338c3b64dba0463385"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.2.17/blocc_0.2.17_linux_amd64.tar.gz"
      sha256 "3cdd95d4171c896003e5d5662bdaa8d61f47882826b9ec30d486a37438388e55"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.2.17/blocc_0.2.17_linux_arm64.tar.gz"
      sha256 "6f37685d5865679a9d6f3d2485cc4253f1da6a5a48dc89186cae514d07b39f02"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

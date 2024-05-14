# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "0.16.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.16.1/blocc_0.16.1_darwin_amd64.tar.gz"
      sha256 "a78ea3fb8a4e42fc50d81b2aed7fbaf3b01ee9418b15fbf864c1dd3f96bf7169"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.16.1/blocc_0.16.1_darwin_arm64.tar.gz"
      sha256 "302ee8aa96ceb5159b81755e70c975824b17bf3315448f1ca6e5ed28ced6bb92"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.16.1/blocc_0.16.1_linux_amd64.tar.gz"
      sha256 "8b1c3002a1ea1f1c9aa60092539a3c74169abeef87d5cbf72e21f18d4acd9b81"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.16.1/blocc_0.16.1_linux_arm64.tar.gz"
      sha256 "625a557b7161ba3cf427684125784db321434dd922c7d9dc33e2e8ed422e2a8b"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

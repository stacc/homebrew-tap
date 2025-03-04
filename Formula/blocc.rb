# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v1.0.3/blocc_1.0.3_darwin_amd64.tar.gz"
      sha256 "58a190422574798bc37adc41620c801cd8e46ed94fe22d631da3a749f4526dc8"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v1.0.3/blocc_1.0.3_darwin_arm64.tar.gz"
      sha256 "80550391d40ad2ef0422a82ff3f4fef16933381622a80ead2a4eb85228da7312"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v1.0.3/blocc_1.0.3_linux_amd64.tar.gz"
      sha256 "c11b25bc1054665f642f613299ed9d80b5edd407280bce9cd8ce6b1fccdf056d"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v1.0.3/blocc_1.0.3_linux_arm64.tar.gz"
      sha256 "2d839e76394cdd25d33f957fbcc487c6e7ccaa1eb9a3c91d7f97992d7b36add6"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

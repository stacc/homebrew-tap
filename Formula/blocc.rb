# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v1.2.0/blocc_1.2.0_darwin_amd64.tar.gz"
      sha256 "0b56818a3c0f8c2090e76e0018f227c8f0bb9b82deee4d319b59c8ba7dcd5d65"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v1.2.0/blocc_1.2.0_darwin_arm64.tar.gz"
      sha256 "ff22623051030a8a8c9b07e1f08610d16c9f44dca37f7a439bc61b2678381466"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v1.2.0/blocc_1.2.0_linux_arm64.tar.gz"
      sha256 "db8b960923662e472bc99296f3a002a166325e3c05b528c4540f74c3055746a7"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v1.2.0/blocc_1.2.0_linux_amd64.tar.gz"
      sha256 "3fb6e1785a785aa539c6d32eb60c1c1c4b6789bf67ac517eeef81168f9f5ef7f"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "0.1.54"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.54/blocc_0.1.54_Darwin_x86_64.tar.gz"
      sha256 "ce644dce642c4ab273f422bf839b33a8c5e90401d909969bd1f89110b4fbc630"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.54/blocc_0.1.54_Darwin_arm64.tar.gz"
      sha256 "1341afa482e51161dac735fc4a68132b95e8789e592cb871ea516e8df60d8d61"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.54/blocc_0.1.54_Linux_x86_64.tar.gz"
      sha256 "270d3bfddc9467d046e6cd792ab38f039ed1541f66cf336681af95a8f55cad65"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.54/blocc_0.1.54_Linux_arm64.tar.gz"
      sha256 "48015a7828b8e1dba0b86e00fe8dacd42403753a312b55ac8038d0c468c88ca5"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StaccNext < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/cli"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.5.0/stacc_0.5.0_Darwin_x86_64.tar.gz"
      sha256 "70fad85356833cf3b45bf02bdd1919f692e46eb98014c6d24e04c737bb175989"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli-next/releases/download/v0.5.0/stacc_0.5.0_Darwin_arm64.tar.gz"
      sha256 "4f4e44497d6dc17e2436284ed1d6894010337e4fb15da95eb3f09495782e7ab0"

      def install
        bin.install "stacc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.5.0/stacc_0.5.0_Linux_x86_64.tar.gz"
      sha256 "c15504d8c998d0e7469cbaf8e71df7b37c88c1cd7cc0b89b7dd8cf31880e42b2"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli-next/releases/download/v0.5.0/stacc_0.5.0_Linux_arm64.tar.gz"
      sha256 "6e5f1ab82af829dde9b3e6c42341c5b338aaadb76f59363170073a17d8fe0a07"

      def install
        bin.install "stacc"
      end
    end
  end

  conflicts_with "stacc/tap/stacc"

  def caveats; <<~EOS
    This formula is installed as 'stacc'
  EOS
  end

  test do
    system "#{bin}/stacc"
  end
end

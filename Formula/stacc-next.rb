# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StaccNext < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/cli"
  version "0.7.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli-next/releases/download/v0.7.14/stacc_0.7.14_Darwin_arm64.tar.gz"
      sha256 "ff71aac59385089cc3c389ae6f917ec3112501d593b97662dc79b8f0d4dfe0cd"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.7.14/stacc_0.7.14_Darwin_x86_64.tar.gz"
      sha256 "97a5d4bf83e7818de4df3dbf32042d145a735b36a5876d13870031818508070b"

      def install
        bin.install "stacc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.7.14/stacc_0.7.14_Linux_x86_64.tar.gz"
      sha256 "b5a59f55bf0ff856c0caa1ad9fab215a6e3cec6cbfd9c14d8e75c041c605ed0f"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli-next/releases/download/v0.7.14/stacc_0.7.14_Linux_arm64.tar.gz"
      sha256 "093c8e797efe10ebea500512c446dd79d1ce8a6b1ba529688bca2d0a74424f7d"

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

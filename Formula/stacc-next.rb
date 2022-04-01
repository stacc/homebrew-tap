# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StaccNext < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/cli"
  version "0.6.26"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.26/stacc_0.6.26_Darwin_x86_64.tar.gz"
      sha256 "102cadc49869ebeee01d9119ebf63d63ecdd791fbad24b485d5355890beaab8c"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.26/stacc_0.6.26_Darwin_arm64.tar.gz"
      sha256 "39ccefe6d4913abb8a218b8cfc788ff504fa04bed2b410c7ccc65c3d85de4d13"

      def install
        bin.install "stacc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.26/stacc_0.6.26_Linux_x86_64.tar.gz"
      sha256 "fc258d8bc16a66b50deef7e68192254c2262125215684271a49b2fc759773c8a"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.26/stacc_0.6.26_Linux_arm64.tar.gz"
      sha256 "96f5ebe06b6a1bf02667f330e2d679115c2c8da51a131e5dfcd3c7bf7a74edfb"

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

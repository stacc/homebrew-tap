# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StaccNext < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/cli"
  version "0.6.25"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.25/stacc_0.6.25_Darwin_arm64.tar.gz"
      sha256 "9f532473c3c55154592b0dc3da62d4358323eeb905cf3854fd4933cafba3cadd"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.25/stacc_0.6.25_Darwin_x86_64.tar.gz"
      sha256 "dc9407cf3d4bc073447dd2f27d9de75da152705728d5b4802c680d76e068e5d3"

      def install
        bin.install "stacc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.25/stacc_0.6.25_Linux_arm64.tar.gz"
      sha256 "97442645aa7d5846ecb092faf9a20e736038a031e8dc8dadcace5b83c674e343"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.25/stacc_0.6.25_Linux_x86_64.tar.gz"
      sha256 "e7903e73dffdc150f0f52c0bd915b859fcd374ff68d6ea1da0aedb7d7ca44a8f"

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

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StaccNext < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/cli"
  version "0.6.20"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.20/stacc_0.6.20_Darwin_arm64.tar.gz"
      sha256 "6b57b2d39480f37000dd17f9c112eb521318a96eef1a2695b39f76944f6a69e4"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.20/stacc_0.6.20_Darwin_x86_64.tar.gz"
      sha256 "8f3532d65c1b3c906b5172df95fc3d55ae45670e2a06d0888ee89454cf9a0f58"

      def install
        bin.install "stacc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.20/stacc_0.6.20_Linux_x86_64.tar.gz"
      sha256 "60a69797dddfe7552b4a01ee39314a48928daa14883e8018c763e2e60e1d44cd"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.20/stacc_0.6.20_Linux_arm64.tar.gz"
      sha256 "5af3239bff0e2bcb8b91fc42540a083eb387d7b3a10fcdde09076fc560842164"

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

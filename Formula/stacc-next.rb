# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StaccNext < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/cli"
  version "0.5.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.5.8/stacc_0.5.8_Darwin_x86_64.tar.gz"
      sha256 "064066e3c0e9a62f9b49aacb53e8096e2873e2ad46e868a4a9c94d01b30beed4"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli-next/releases/download/v0.5.8/stacc_0.5.8_Darwin_arm64.tar.gz"
      sha256 "635b39e6d05ebff3f3809cffda1d899381cbe2380bf48386614c733581907b11"

      def install
        bin.install "stacc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli-next/releases/download/v0.5.8/stacc_0.5.8_Linux_arm64.tar.gz"
      sha256 "9950cf4f86f240f0f1b34de31a8bba0581d4473f9a8f566cc84d6a53a5d04bec"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.5.8/stacc_0.5.8_Linux_x86_64.tar.gz"
      sha256 "4de1d98b93815a617720ee5b7423a586988fde29ce724315415619a413e4084f"

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

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StaccNext < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/cli"
  version "0.7.30"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.7.30/stacc_0.7.30_Darwin_x86_64.tar.gz"
      sha256 "b2f5990c3af3b405c4a6267245fe2e093409b2a20450f6a2adf07388b3295869"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli-next/releases/download/v0.7.30/stacc_0.7.30_Darwin_arm64.tar.gz"
      sha256 "b395ff2d51ba6cbf23ac4428b314546a53e7c9f1fc6a0c29bc5f86e5c1e8eb10"

      def install
        bin.install "stacc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli-next/releases/download/v0.7.30/stacc_0.7.30_Linux_arm64.tar.gz"
      sha256 "a810724ac249ec4d52735b4b25822bed117f897a1b105eae9814a4bb36d7311b"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.7.30/stacc_0.7.30_Linux_x86_64.tar.gz"
      sha256 "4c850ba8ce5d64e2a595195181709d61f605c97a188825cb52f56c32177c1d01"

      def install
        bin.install "stacc"
      end
    end
  end

  conflicts_with "stacc/tap/stacc"

  def caveats
    <<~EOS
      This formula is installed as 'stacc'
    EOS
  end

  test do
    system "#{bin}/stacc"
  end
end

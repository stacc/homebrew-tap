# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "0.21.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.21.1/blocc_0.21.1_darwin_arm64.tar.gz"
      sha256 "49106b54ae5d4c8de107eadf57534a2d196cf5200d654c2d2d1792901673dd2e"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.21.1/blocc_0.21.1_darwin_amd64.tar.gz"
      sha256 "6a0dd3f6b23866f8c8be4851f52e68ef0181aa80b7eaa1fcb01464f164802a46"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.21.1/blocc_0.21.1_linux_arm64.tar.gz"
      sha256 "ec559d58f1d3fe817cf0bec67df269bf883b8e3d21c4b400c41f581abeac90ca"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.21.1/blocc_0.21.1_linux_amd64.tar.gz"
      sha256 "e2a082f4996f6ba6fcf8a6eb80f62d3283f934458048415b7391db07f152d109"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

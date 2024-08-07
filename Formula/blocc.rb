# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "0.20.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.20.0/blocc_0.20.0_darwin_arm64.tar.gz"
      sha256 "30ba0f44114db4f12dffc7086c27c94b8681ff863b61740a03ad65512e1e7170"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.20.0/blocc_0.20.0_darwin_amd64.tar.gz"
      sha256 "10e943aa2221ec5a2ede2d7694447ab79b8e95a6067b06b5d4bf01e43d1a65a1"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.20.0/blocc_0.20.0_linux_arm64.tar.gz"
      sha256 "b8578d1736d6a7b1863fe9475940857c151dadb2efd7dc345cc18e5928adbf43"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.20.0/blocc_0.20.0_linux_amd64.tar.gz"
      sha256 "8d90b657ad14aa929cee3df8ed1c7e31c28cbe26455310513d7c2f93c3b495f8"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

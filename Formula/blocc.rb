# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "0.29.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.29.3/blocc_0.29.3_darwin_amd64.tar.gz"
      sha256 "4829b0c5e4f5d67a64e083ca3fbbec558155da2a8507e672dca0bfdea0c0e9be"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.29.3/blocc_0.29.3_darwin_arm64.tar.gz"
      sha256 "a3a002a48d9c31430ee2761dd7121eba5ceda2a52e6237071734a80a79d407f0"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.29.3/blocc_0.29.3_linux_amd64.tar.gz"
      sha256 "15398f4a0edc986dda988a73d44668828dda927d3d764d2698be0c46ddc21af7"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.29.3/blocc_0.29.3_linux_arm64.tar.gz"
      sha256 "1eb3b0357512734a7210c50cdd585d0672f659ca0eb4c4ea07e2a649ddd1151d"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

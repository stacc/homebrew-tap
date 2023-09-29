# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "0.1.46"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.46/blocc_0.1.46_Darwin_x86_64.tar.gz"
      sha256 "2b327e0fd599337717a5607bd68b24e92f8233006936c775f9d783fd18515a6a"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.46/blocc_0.1.46_Darwin_arm64.tar.gz"
      sha256 "0cd795c05fdb547c24e8e6a4b9adea98c851840adf898fc4b3869335b433c57a"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.46/blocc_0.1.46_Linux_arm64.tar.gz"
      sha256 "0b6eab7811a5ef0a130f1d628f606a0afbc2a83abe93b8168b3e7b99eeaa90b1"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.46/blocc_0.1.46_Linux_x86_64.tar.gz"
      sha256 "d7ce8715b0d629bebc4b32be039fdad1c20ed818ddc8380c6f16df9827fd212b"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "0.1.44"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.44/blocc_0.1.44_Darwin_x86_64.tar.gz"
      sha256 "c62232c036da10a76557f65988afeab7d4108cd733802c9a7df9e1d6261e70a9"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.44/blocc_0.1.44_Darwin_arm64.tar.gz"
      sha256 "755203bb4a90ba69df8f06fbf81f6c8b58de4d328c0d3eaa2d8c0d00cdb92820"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.44/blocc_0.1.44_Linux_x86_64.tar.gz"
      sha256 "c23fcbb8b131558b75bfe6da4f4a2c6eb6b645ea8c058d9a44fef3e91c990912"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/v0.1.44/blocc_0.1.44_Linux_arm64.tar.gz"
      sha256 "303bde9b40d0c2fd3dace7f76355557d3f54ea085191d0d97080266a49d216d4"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

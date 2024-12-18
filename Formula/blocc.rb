# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "0.28.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.28.3/blocc_0.28.3_darwin_arm64.tar.gz"
      sha256 "42740989cff7f907636ebd455038d6f013e4a0e0ee853f0db70c572406c22cf6"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.28.3/blocc_0.28.3_darwin_amd64.tar.gz"
      sha256 "4b9542578972a39225636b3f3cb9019fc1d44b97e01db39d0641a8583fb4e592"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.28.3/blocc_0.28.3_linux_arm64.tar.gz"
      sha256 "4a12920821673c03040abd441a73179489d17384d24079b24e2f015d05afed33"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.28.3/blocc_0.28.3_linux_amd64.tar.gz"
      sha256 "bb1c93e51cea6e54f0623b8be7e98e4d6ef156ebf788f9a51539b4f77d5823dd"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blocc < Formula
  desc "CLI to use interact with the blocc ecosystem."
  homepage "https://github.com/stacc/blocc-cli-releases"
  version "0.29.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.29.1/blocc_0.29.1_darwin_arm64.tar.gz"
      sha256 "f3b9de5891d82db280a2067e5f81515cb9c480156a0a6f3135003099df5ca7af"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.29.1/blocc_0.29.1_darwin_amd64.tar.gz"
      sha256 "2293baf2fa10cf827337f352b32410ef1b351d47afca5c2b8b7aa93781084119"

      def install
        bin.install "blocc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.29.1/blocc_0.29.1_linux_amd64.tar.gz"
      sha256 "138908465eb4dfbb66dd001a95d4c6586ce03465282ebfc7718388a6c1c10b8b"

      def install
        bin.install "blocc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/blocc-cli-releases/releases/download/cli-v0.29.1/blocc_0.29.1_linux_arm64.tar.gz"
      sha256 "3f31171a46694ff7dcf1c81ffaabf74bf987d547faffd5a76de8c871fb17ed7c"

      def install
        bin.install "blocc"
      end
    end
  end

  test do
    system "#{bin}/blocc"
  end
end

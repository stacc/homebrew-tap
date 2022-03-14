# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StaccNext < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/cli"
  version "0.6.22"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.22/stacc_0.6.22_Darwin_x86_64.tar.gz"
      sha256 "b64043cb792e7f59ea7f6abe1623f545b24c262192e68c66849bf1c5c9e2b27b"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.22/stacc_0.6.22_Darwin_arm64.tar.gz"
      sha256 "31400609636457e4861210f452bafba13c454016a589132ca45ba2608e91e5a9"

      def install
        bin.install "stacc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.22/stacc_0.6.22_Linux_arm64.tar.gz"
      sha256 "bcc9bc0e4c12fa89201ee22ac4463c714f66c4542825ed67deb5750c8336810a"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.22/stacc_0.6.22_Linux_x86_64.tar.gz"
      sha256 "b96bd5daca0e8b05c99fb9db0dbdf2a3185ede442535836ffda0fc8209ec0ed9"

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

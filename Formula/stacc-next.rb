# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StaccNext < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/cli"
  version "0.4.49"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.4.49/stacc_0.4.49_Darwin_x86_64.tar.gz"
      sha256 "07b512f28aa858bf0cf82556a4fad54650f99eb9f56be546b84e184b124f70bc"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli-next/releases/download/v0.4.49/stacc_0.4.49_Darwin_arm64.tar.gz"
      sha256 "bfe6360b5a28e9d7a8c971c4299298635f93e3799011da096aea1c8194cd3f88"

      def install
        bin.install "stacc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.4.49/stacc_0.4.49_Linux_x86_64.tar.gz"
      sha256 "eeba8ea316861e4ab464da746519e5a7aa78ab29c10d1cc905d794eda1a61969"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli-next/releases/download/v0.4.49/stacc_0.4.49_Linux_arm64.tar.gz"
      sha256 "40c70a5541f6ffdeb2d61fd7e804d348b1a1657e24605f36ba70e1dd192c4f8c"

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

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StaccNext < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/cli"
  version "0.7.62"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.7.62/stacc_0.7.62_Darwin_x86_64.tar.gz"
      sha256 "029d4bd764d96a6e73a98913addaf17d5e5152be46616bd4bdccf21638a57773"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli-next/releases/download/v0.7.62/stacc_0.7.62_Darwin_arm64.tar.gz"
      sha256 "2ff3b02db083dfd55ec9c2c6ce76e83cf879c47bc877eca41203877386eb5515"

      def install
        bin.install "stacc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli-next/releases/download/v0.7.62/stacc_0.7.62_Linux_arm64.tar.gz"
      sha256 "64faf356b67c83d124fbd380eed1acebd1fd25af356ced320d5fbcf30b4f2c54"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.7.62/stacc_0.7.62_Linux_x86_64.tar.gz"
      sha256 "cf8199d6e768a0e90052006a13dd30fb79a78cf63a4fe3209080a287b9c000d4"

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

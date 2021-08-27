# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stacc < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/stacc-CLI"
  version "0.2.45"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli/releases/download/v0.2.45/stacc_0.2.45_Darwin_x86_64.tar.gz"
      sha256 "7410fd8afc988568c5aa53bad216c54fa3281c3f2674a721d6efca674df4e269"
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli/releases/download/v0.2.45/stacc_0.2.45_Darwin_arm64.tar.gz"
      sha256 "1bc5a8594d8e8653cfe7b52140ba1147c64b576619908d2a4de705a3705cec31"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli/releases/download/v0.2.45/stacc_0.2.45_Linux_x86_64.tar.gz"
      sha256 "301072af15508f60a443175a5ba00be7fb43f99e4b857786297fb015f4c78124"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli/releases/download/v0.2.45/stacc_0.2.45_Linux_arm64.tar.gz"
      sha256 "e778661f6a05af6fae0e95b622afb8150a2e96bdccd4f4d21fcb048c487b61c8"
    end
  end

  def install
    bin.install "stacc"
  end

  test do
    system "#{bin}/stacc"
  end
end

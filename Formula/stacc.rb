# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stacc < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/stacc-CLI"
  version "0.2.40"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli/releases/download/v0.2.40/stacc_0.2.40_Darwin_x86_64.tar.gz"
      sha256 "bfb12a5a6b986494aeff4eaf9c927469cd329beb7c029d9a57e858d67660f16e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli/releases/download/v0.2.40/stacc_0.2.40_Darwin_arm64.tar.gz"
      sha256 "5afde53517439288133f4015dda105b3edde9ca801ea24147fcf72fa0f480240"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli/releases/download/v0.2.40/stacc_0.2.40_Linux_x86_64.tar.gz"
      sha256 "1ae151dbff151b2345b6b58e1815574e79696bb55e8247ea9bfceb1af4f0334a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli/releases/download/v0.2.40/stacc_0.2.40_Linux_arm64.tar.gz"
      sha256 "a281e6d603f7f75966e3d0584ba0190f9828250337e5aa82318b02b6bfc2e428"
    end
  end

  def install
    bin.install "stacc"
  end

  test do
    system "#{bin}/stacc"
  end
end

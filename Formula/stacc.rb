# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stacc < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/stacc-CLI"
  version "0.1.62"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/stacc/stacc-CLI/releases/download/v0.1.62/stacc_0.1.62_Darwin_x86_64.tar.gz"
    sha256 "da26ec8f6b9182e927b482fd71f6d5e0e8b1c63c2e81f7f225f13c221679629d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/stacc/stacc-CLI/releases/download/v0.1.62/stacc_0.1.62_Darwin_arm64.tar.gz"
    sha256 "59e6259326f66571848c4d27536580fba83c0f442235181c62fce5993fac2bb6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/stacc/stacc-CLI/releases/download/v0.1.62/stacc_0.1.62_Linux_x86_64.tar.gz"
    sha256 "37daf14f497c56da3d3f02e45fd1c686eede5e75bf6de0c6ba16514221850e22"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/stacc/stacc-CLI/releases/download/v0.1.62/stacc_0.1.62_Linux_arm64.tar.gz"
    sha256 "f2dcd42f7295778d1855325c176b4c32cca9f5f30450e8a91bb296ea4f247bae"
  end

  def install
    bin.install "stacc"
  end

  test do
    system "#{bin}/stacc"
  end
end

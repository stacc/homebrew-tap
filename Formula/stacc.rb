# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stacc < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/stacc-CLI"
  version "0.1.109"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/stacc/stacc-CLI/releases/download/v0.1.109/stacc_0.1.109_Darwin_x86_64.tar.gz"
    sha256 "21eb0b7a2e197fb654e9d90c2f466a7f3f9eebf946ee2095425f106b4157594b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/stacc/stacc-CLI/releases/download/v0.1.109/stacc_0.1.109_Darwin_arm64.tar.gz"
    sha256 "26c41715022573359c64d6a063ad85add7475b0772136434694f4df8d9f545e1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/stacc/stacc-CLI/releases/download/v0.1.109/stacc_0.1.109_Linux_x86_64.tar.gz"
    sha256 "f758b1a495773ad7bd6fc7c44c946312d24d64df14a09997afe8c2b7e35b2314"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/stacc/stacc-CLI/releases/download/v0.1.109/stacc_0.1.109_Linux_arm64.tar.gz"
    sha256 "5d071aa794551b134ea0878df2bfce142405f6a0dc5d08f0d06c53a93b6834e9"
  end

  def install
    bin.install "stacc"
  end

  test do
    system "#{bin}/stacc"
  end
end

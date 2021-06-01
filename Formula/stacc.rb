# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stacc < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/stacc-CLI"
  version "0.1.85"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/stacc/stacc-CLI/releases/download/v0.1.85/stacc_0.1.85_Darwin_x86_64.tar.gz"
    sha256 "6daf822cdf8a6c6df3f1f5154c20598c2b46aae3c57c8bf89d0f1fc01f5e836a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/stacc/stacc-CLI/releases/download/v0.1.85/stacc_0.1.85_Darwin_arm64.tar.gz"
    sha256 "41826b614ed9ea9e3e2fa5c5165b1a8056400925f4a1627d93d74cfacbcc0e7e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/stacc/stacc-CLI/releases/download/v0.1.85/stacc_0.1.85_Linux_x86_64.tar.gz"
    sha256 "3a6336d4ddd400c6233cc7fc381561a1f29671df9c6a0e4f7fae283b73fac850"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/stacc/stacc-CLI/releases/download/v0.1.85/stacc_0.1.85_Linux_arm64.tar.gz"
    sha256 "f10e58933f6ba714e6c41311d45277600fa836028aec0540a36ab24f62cd877d"
  end

  def install
    bin.install "stacc"
  end

  test do
    system "#{bin}/stacc"
  end
end

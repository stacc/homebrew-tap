# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StaccNext < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/cli"
  version "0.4.29"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.4.29/stacc_0.4.29_Darwin_x86_64.tar.gz"
      sha256 "d79569066b8d60bf3cd32d62c0ace430112d324965d2de0bbfeec570082139a1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli-next/releases/download/v0.4.29/stacc_0.4.29_Darwin_arm64.tar.gz"
      sha256 "a582bacec99d3416b4dcdb4430a3ee21f53ab7674e700c77b7a1c983c6de5b71"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.4.29/stacc_0.4.29_Linux_x86_64.tar.gz"
      sha256 "62ed300a6fbd2646eb057f424538374a6d9e517d9998a7ad7c282b931fcb1d71"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli-next/releases/download/v0.4.29/stacc_0.4.29_Linux_arm64.tar.gz"
      sha256 "a9595aac127c992451220e9be5768fe083e32f065a5f6d4b96da6a54689123f2"
    end
  end

  conflicts_with "stacc/tap/stacc"

  def install
    bin.install "stacc"
  end

  def caveats; <<~EOS
    This formula is installed as 'stacc'
  EOS
  end

  test do
    system "#{bin}/stacc"
  end
end

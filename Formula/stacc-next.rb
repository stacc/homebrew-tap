# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StaccNext < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/cli"
  version "0.0.11-morten-herman-test"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli-next/releases/download/v0.0.11-morten-herman-test/stacc_0.0.11-morten-herman-test_Darwin_arm64.tar.gz"
      sha256 "4945977a7b084a1e2f9aa21683a5fd871802796aaf1f7ff692de8224f6eb6238"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.0.11-morten-herman-test/stacc_0.0.11-morten-herman-test_Darwin_x86_64.tar.gz"
      sha256 "80d32f2946514155d408e2d87c4c0a3d099c82a567107853bedf35f6c326dbcc"

      def install
        bin.install "stacc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.0.11-morten-herman-test/stacc_0.0.11-morten-herman-test_Linux_x86_64.tar.gz"
      sha256 "2841ee4e2f4663de7256499394baf67d2f25c5169bf3966a2e1597e80fce549c"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli-next/releases/download/v0.0.11-morten-herman-test/stacc_0.0.11-morten-herman-test_Linux_arm64.tar.gz"
      sha256 "3eeb0b140371891e3d424c3db8d7391721d7a6afa6f0182a71a1cd64628e4341"

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

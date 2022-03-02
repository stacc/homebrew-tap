# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StaccNext < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/cli"
  version "0.6.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.11/stacc_0.6.11_Darwin_arm64.tar.gz"
      sha256 "2e6e51cea738dc9f471ff9831281887a784185539ab0b71201347277261b7908"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.11/stacc_0.6.11_Darwin_x86_64.tar.gz"
      sha256 "e1055906be4b831c37be0e5e5f0f54ebb9217b9be3e88b202c176e5a1d9ef31c"

      def install
        bin.install "stacc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.11/stacc_0.6.11_Linux_x86_64.tar.gz"
      sha256 "787afd434e0d70d25c496a95f88bbe55d5a4bb3d636d7d2968a96fb82aff2a8d"

      def install
        bin.install "stacc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli-next/releases/download/v0.6.11/stacc_0.6.11_Linux_arm64.tar.gz"
      sha256 "4451c8dcc499cbb16c6dc93a8cd0ff43d68050e0766efa95d18782d5702b8604"

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

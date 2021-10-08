# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StaccNext < Formula
  desc "Software used to communicate with Stacc cloud environments"
  homepage "https://github.com/stacc/cli"
  version "0.4.22"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stacc/cli-next/releases/download/v0.4.22/stacc_0.4.22_Darwin_arm64.tar.gz"
      sha256 "846b9dbe06cf2abdf2302d808badf51a52edb5765f839b68fa2fa2bd2b85a752"
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.4.22/stacc_0.4.22_Darwin_x86_64.tar.gz"
      sha256 "8192fbe51366a40e24b735194665138d04ea347c874b077bdd49c0c6c82b0d4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stacc/cli-next/releases/download/v0.4.22/stacc_0.4.22_Linux_arm64.tar.gz"
      sha256 "98bc805d024b4deeae5b3641a97d115327ae62e4b230da1a6ab06997d002f36c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/stacc/cli-next/releases/download/v0.4.22/stacc_0.4.22_Linux_x86_64.tar.gz"
      sha256 "bd928596de715c54bd0d99a54f6d5162ecdc19870c6eb1b16d89f63463aa1a9e"
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

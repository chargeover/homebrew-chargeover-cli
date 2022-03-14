# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ChargeoverCli < Formula
  desc "ChargeOver developer CLI for installing, managing, and orchestrating a developer environment."
  homepage "https://chargeover.com/"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chargeover/homebrew-chargeover-cli/releases/download/1.1.0/chargeover_1.1.0_Darwin_arm64.tar.gz"
      sha256 "7ae4c4e283b9b2c9713e0bc5f94e52b80e492ab2e1f370081e885daa3c75ca43"

      def install
        bin.install "chargeover"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chargeover/homebrew-chargeover-cli/releases/download/1.1.0/chargeover_1.1.0_Darwin_x86_64.tar.gz"
      sha256 "2ff21c05b4dd835c27ce34f8a6dc5f0df724e59c0fe5063025c3708cb6148274"

      def install
        bin.install "chargeover"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chargeover/homebrew-chargeover-cli/releases/download/1.1.0/chargeover_1.1.0_Linux_arm64.tar.gz"
      sha256 "464c9a78a3007fb15b11ba0d9dcf4a2a02e35a3f83c2148ea7609bd6a5b18a4d"

      def install
        bin.install "chargeover"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chargeover/homebrew-chargeover-cli/releases/download/1.1.0/chargeover_1.1.0_Linux_x86_64.tar.gz"
      sha256 "a59cf87a1667bfc0b8961a6c3b5a0eb895db4e1db44886a3c4ac66a940140f3c"

      def install
        bin.install "chargeover"
      end
    end
  end

  test do
    system "#{bin}/chargeover --help"
  end
end

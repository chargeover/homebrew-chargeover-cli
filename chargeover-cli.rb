# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ChargeoverCli < Formula
  desc "ChargeOver developer CLI for installing, managing, and orchestrating a developer environment."
  homepage "https://chargeover.com/"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chargeover/homebrew-chargeover-cli/releases/download/2.2.0/chargeover_2.2.0_Darwin_arm64.tar.gz"
      sha256 "f585fb3d867b4b399ec0a39c06332f8454d4e08791064343674d75c0644f1157"

      def install
        bin.install "chargeover"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chargeover/homebrew-chargeover-cli/releases/download/2.2.0/chargeover_2.2.0_Darwin_x86_64.tar.gz"
      sha256 "ec0544fd3cb2932c283171039928aace30a13230d96c88f624fe24cb5b53738e"

      def install
        bin.install "chargeover"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chargeover/homebrew-chargeover-cli/releases/download/2.2.0/chargeover_2.2.0_Linux_arm64.tar.gz"
      sha256 "8c30166252bb25ffbb81950db5353da4ca560e3c0f104e7aa3b8b956b428e015"

      def install
        bin.install "chargeover"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chargeover/homebrew-chargeover-cli/releases/download/2.2.0/chargeover_2.2.0_Linux_x86_64.tar.gz"
      sha256 "f757bcf16162d66d60fdac979cbc742c4aaf8889fa09418d3cd6bb41241f6575"

      def install
        bin.install "chargeover"
      end
    end
  end

  test do
    system "#{bin}/chargeover --help"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AsapTools < Formula
  desc "The asap-tools it is collection of tools to simplify daily monotonous monotonous cases. For syncing tasks between ClickUp teams and more."
  homepage "https://github.com/gebv/asap-tools"
  version "0.0.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gebv/asap-tools/releases/download/v0.0.13/asap-tools_Darwin_x86_64.zip"
      sha256 "f4d89d55a4a00022de526c29555a9e5475bff6ab2d9dc34202d9665bcba9d6e4"

      def install
        bin.install "asap-tools"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gebv/asap-tools/releases/download/v0.0.13/asap-tools_Darwin_arm64.zip"
      sha256 "82c0aa6ee0cd90424d75edd059d774fc0efaa91fa90aa485c833e755c1191921"

      def install
        bin.install "asap-tools"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gebv/asap-tools/releases/download/v0.0.13/asap-tools_Linux_arm64.zip"
      sha256 "f42c74f929e53fbf29b409bf6e38dd81ba5a203c5e81ca6bee9679b3920c0bc6"

      def install
        bin.install "asap-tools"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gebv/asap-tools/releases/download/v0.0.13/asap-tools_Linux_armv6.zip"
      sha256 "28c19e4afab670f43ec4d9aa2a7bf7579d6897786305eda229411b12d6816896"

      def install
        bin.install "asap-tools"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gebv/asap-tools/releases/download/v0.0.13/asap-tools_Linux_x86_64.zip"
      sha256 "624ed600abfaa2f7a0b69cb117bad454015778fadb576789057f5eb0884ac38b"

      def install
        bin.install "asap-tools"
      end
    end
  end

  test do
    system "#{bin}/asap-tools-cli -v"
  end
end

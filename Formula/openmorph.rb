# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Openmorph < Formula
  desc "A tool for transforming and optimizing OpenAPI specifications"
  homepage "https://github.com/developerkunal/OpenMorph"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/developerkunal/OpenMorph/releases/download/v0.4.0/openmorph_0.4.0_darwin_amd64.tar.gz"
      sha256 "7bb8f4beae42318f83eba9399d0e94c3f002586d38f16691caaf365e50ae0b48"

      def install
        bin.install "openmorph"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/developerkunal/OpenMorph/releases/download/v0.4.0/openmorph_0.4.0_darwin_arm64.tar.gz"
      sha256 "0012f2ec68480364071c8d11fe5fbcce99ccfb9ca714f0ae1762073cd2a12e6e"

      def install
        bin.install "openmorph"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/developerkunal/OpenMorph/releases/download/v0.4.0/openmorph_0.4.0_linux_amd64.tar.gz"
      sha256 "89b3c95a2e052a7622217b0f46d70d79ad8160c27c928ce9b6c5c7c58336bbb2"
      def install
        bin.install "openmorph"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/developerkunal/OpenMorph/releases/download/v0.4.0/openmorph_0.4.0_linux_arm64.tar.gz"
      sha256 "60bf9f5531f0b818f7a87d20cb3de8ad03938223b41cf1311a61f008e8855f1f"
      def install
        bin.install "openmorph"
      end
    end
  end

  test do
    system "#{bin}/openmorph --version"
  end
end

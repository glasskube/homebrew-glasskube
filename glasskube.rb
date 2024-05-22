# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Glasskube < Formula
  desc "Glasskube is a cloud native package manager for Kubernetes. It includes an UI and CLI, is dependency aware and GitOps ready."
  homepage "https://glasskube.dev"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://releases.dl.glasskube.dev/glasskube_v0.5.0_darwin_x86_64.tar.gz"
      sha256 "2e2d443b825a71733adf93e54f9dc1434540fee6b485ae9b79390b828b3f9fb5"

      def install
        bin.install "glasskube"
      end
    end
    on_arm do
      url "https://releases.dl.glasskube.dev/glasskube_v0.5.0_darwin_arm64.tar.gz"
      sha256 "8f6d8af8b69f3236e75fa628c5a2cac2652a3c9ea16060b59e974e2393c62295"

      def install
        bin.install "glasskube"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://releases.dl.glasskube.dev/glasskube_v0.5.0_linux_x86_64.tar.gz"
        sha256 "b06d0d4db3cd72bc2985ec4294ee28b6d1dc543f617983519230c12304ee42c9"

        def install
          bin.install "glasskube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://releases.dl.glasskube.dev/glasskube_v0.5.0_linux_arm64.tar.gz"
        sha256 "cf085d44b1eb55a4f002afc07c6a051a2293b3707f35c22fd25c6847515504d1"

        def install
          bin.install "glasskube"
        end
      end
    end
  end
end

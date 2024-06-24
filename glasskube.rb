# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Glasskube < Formula
  desc "Glasskube is a cloud native package manager for Kubernetes. It includes an UI and CLI, is dependency aware and GitOps ready."
  homepage "https://glasskube.dev"
  version "0.10.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://releases.dl.glasskube.dev/glasskube_v0.10.1_darwin_x86_64.tar.gz"
      sha256 "00cf89d837bb423fb3501f2fd3f605a72cbf054318f87433cb16ab80955147d6"

      def install
        bin.install "glasskube"
      end
    end
    on_arm do
      url "https://releases.dl.glasskube.dev/glasskube_v0.10.1_darwin_arm64.tar.gz"
      sha256 "6c7246857afc6d1c56981cf8eed212da0db0ba41105d5a172be4f80a3d198681"

      def install
        bin.install "glasskube"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://releases.dl.glasskube.dev/glasskube_v0.10.1_linux_x86_64.tar.gz"
        sha256 "67fb394d1399b8e136489e4e7c1e5853c3556ee426ab85e975f5b47c29c0136c"

        def install
          bin.install "glasskube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://releases.dl.glasskube.dev/glasskube_v0.10.1_linux_arm64.tar.gz"
        sha256 "2c29b192414e2970951f2a82686ae9a9572af9e18cc480e8062bbcaf83660d61"

        def install
          bin.install "glasskube"
        end
      end
    end
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Glasskube < Formula
  desc "Glasskube is a cloud native package manager for Kubernetes. It includes an UI and CLI, is dependency aware and GitOps ready."
  homepage "https://glasskube.dev"
  version "0.23.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://releases.dl.glasskube.dev/glasskube_v0.23.0_darwin_x86_64.tar.gz"
      sha256 "36b8531458e0f879e72183c7ab3fb510b2744b6990f5911ebac0ea724eeebbb4"

      def install
        bin.install "glasskube"
      end
    end
    on_arm do
      url "https://releases.dl.glasskube.dev/glasskube_v0.23.0_darwin_arm64.tar.gz"
      sha256 "483d6bdb487f547a39c139e3204168530d571ed7ce811599bb8258c34475df24"

      def install
        bin.install "glasskube"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://releases.dl.glasskube.dev/glasskube_v0.23.0_linux_x86_64.tar.gz"
        sha256 "ccfbe2e8049a5f5f896c439afe2ab0e3b0e8678c8cce392582f0982028b64d59"

        def install
          bin.install "glasskube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://releases.dl.glasskube.dev/glasskube_v0.23.0_linux_arm64.tar.gz"
        sha256 "1b792cf5d9a3f8ce507ed8c6cdaac99bdfe123f6d0933a6f372b9f4d97186673"

        def install
          bin.install "glasskube"
        end
      end
    end
  end

  def post_install
    generate_completions_from_executable(bin/"glasskube", "completion")
  end
end

# typed: false
# frozen_string_literal: true

class Inbai < Formula
  desc "Agent-native email control plane CLI and server"
  homepage "https://github.com/Impakta-io/inbai"
  version "0.1.0-alpha.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.2/inbai_0.1.0-alpha.2_darwin_arm64.tar.gz"
      sha256 "0fc86cab4695327f15e1062a6aee325bb96ba4c3a861be58e15539eed8a92cda"
    else
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.2/inbai_0.1.0-alpha.2_darwin_amd64.tar.gz"
      sha256 "31b05266e9db2b8a5661ad344ff96059f2bf1a8dab1e7aa997dd5db841416923"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.2/inbai_0.1.0-alpha.2_linux_arm64.tar.gz"
      sha256 "f990dafa35dfeee3bbfa3cbec1e72d506a8899318c1a94d2d58f7bad5099e4cc"
    else
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.2/inbai_0.1.0-alpha.2_linux_amd64.tar.gz"
      sha256 "bcd290ca3c0eb2d3d74f4f004f09cc7a6cc08167154e538d0b0c4b42bca7f5cb"
    end
  end

  def install
    bin.install "inbai"
    bin.install "inbaid"
  end

  test do
    assert_match "inbai #{version}", shell_output("#{bin}/inbai version")
    assert_match "inbaid #{version}", shell_output("#{bin}/inbaid version")
  end
end

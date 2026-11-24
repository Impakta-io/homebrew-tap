# typed: false
# frozen_string_literal: true

class Inbai < Formula
  desc "Agent-native email control plane CLI and server"
  homepage "https://github.com/Impakta-io/inbai"
  version "0.1.0-alpha.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.1/inbai_0.1.0-alpha.1_darwin_arm64.tar.gz"
      sha256 "5534606cfd250228ad31a0854a4ebd53235d367d8715c54bf85488f8cad31598"
    else
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.1/inbai_0.1.0-alpha.1_darwin_amd64.tar.gz"
      sha256 "ff294290a36f965b417c115f6d12dd87ac5f9f23afb9e41d481ec94138a61976"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.1/inbai_0.1.0-alpha.1_linux_arm64.tar.gz"
      sha256 "8191f1f44745267fab520b8d95d4ec3274954ea396b95c077d0ba1243cc5b566"
    else
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.1/inbai_0.1.0-alpha.1_linux_amd64.tar.gz"
      sha256 "b538d1fa66fe088828cd9ae06d9334462316d2398effb7a4686852b7dbdbeb9e"
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

# typed: false
# frozen_string_literal: true

class Inbai < Formula
  desc "Agent-native email control plane CLI and server"
  homepage "https://github.com/Impakta-io/inbai"
  version "0.1.0-alpha.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.3/inbai_0.1.0-alpha.3_darwin_arm64.tar.gz"
      sha256 "a48fb8d8e3824cb61f39289c139bba7f2bb6dc1795482eaac90de3548b966f51"
    else
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.3/inbai_0.1.0-alpha.3_darwin_amd64.tar.gz"
      sha256 "cc9a319089091dd9a936de37341f2e84f40e276f72ee7b6cae030b1aa5bff98e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.3/inbai_0.1.0-alpha.3_linux_arm64.tar.gz"
      sha256 "19fd31ce31cd1479dad51d96e14710f2e15097e748abeb2da41010f6a713d411"
    else
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.3/inbai_0.1.0-alpha.3_linux_amd64.tar.gz"
      sha256 "a94c2d81d791da1dcf146821c60fd915220b052ff4b06f3f6342447f29cb02e5"
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

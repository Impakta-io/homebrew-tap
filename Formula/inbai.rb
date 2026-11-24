# typed: false
# frozen_string_literal: true

class Inbai < Formula
  desc "Agent-native email control plane CLI and server"
  homepage "https://github.com/Impakta-io/inbai"
  version "0.1.0-alpha.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.4/inbai_0.1.0-alpha.4_darwin_arm64.tar.gz"
      sha256 "a55504f4b648d38c1ead7bb9776451d48aeab1e8197f92e41cfd3ac7c11e6015"
    else
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.4/inbai_0.1.0-alpha.4_darwin_amd64.tar.gz"
      sha256 "17d7bf078c8d8b9c09c48586e291f9ece3e2c81a709e536556b4d4d73e96fe64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.4/inbai_0.1.0-alpha.4_linux_arm64.tar.gz"
      sha256 "9ae7991ca2d146195ef7c2e30958735b34b874a2e8d70148d6babe73477ee2c1"
    else
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.4/inbai_0.1.0-alpha.4_linux_amd64.tar.gz"
      sha256 "b9dfbc633440a61212a29d35d503c67d88e1b585e0cb96934b45022dd6937890"
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

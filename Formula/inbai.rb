# typed: false
# frozen_string_literal: true

class Inbai < Formula
  desc "Agent-native email control plane CLI and server"
  homepage "https://github.com/Impakta-io/inbai"
  version "0.1.0-alpha.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.5/inbai_0.1.0-alpha.5_darwin_arm64.tar.gz"
      sha256 "79278cee33c94e96fa48c12dc37493d152df47bc89e4b7b53693c1b76cea044e"
    else
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.5/inbai_0.1.0-alpha.5_darwin_amd64.tar.gz"
      sha256 "1cc15aedb2743fb32b57aaf3df952cad86b848658547e9b7c63d5445345c18c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.5/inbai_0.1.0-alpha.5_linux_arm64.tar.gz"
      sha256 "8d517e526245366270fb3c5346b84d7a8d4707f3e26d7c2fbf998110606b6c2f"
    else
      url "https://github.com/Impakta-io/inbai/releases/download/v0.1.0-alpha.5/inbai_0.1.0-alpha.5_linux_amd64.tar.gz"
      sha256 "7317fc9acae0ed8e3aff20e2ba8d92b7f483042ac287f53facf824fc1e4ed41e"
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

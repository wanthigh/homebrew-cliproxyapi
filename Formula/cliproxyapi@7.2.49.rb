class CliproxyapiAT7249 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.49"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.49/CLIProxyAPI_7.2.49_darwin_amd64.tar.gz"
      sha256 "d71de862088f0319dabf62e8eb6a618623418d6c3199d17235b206d59c0ddd54"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.49/CLIProxyAPI_7.2.49_darwin_aarch64.tar.gz"
      sha256 "034aef3ebdebb5ea8f9dc5d6f40fc66b2233e8667b44b7b78e622d67611ff99c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.49/CLIProxyAPI_7.2.49_linux_amd64.tar.gz"
      sha256 "491dab72049558ad89b762bd37eef05be8605876aee3abbfd4f4c7b3307aef42"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.49/CLIProxyAPI_7.2.49_linux_aarch64.tar.gz"
      sha256 "7095411c1f0194cfb68a26d1aeacca7fc85c3330c914a63de2118d00db327998"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.49", shell_output("#{bin}/cliproxyapi version")
  end
end

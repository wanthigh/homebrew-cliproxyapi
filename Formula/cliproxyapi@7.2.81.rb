class CliproxyapiAT7281 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.81"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.81/CLIProxyAPI_7.2.81_darwin_amd64.tar.gz"
      sha256 "75af5e17e4d211422d1dadf37dbfe715c2c8acad5b9784afe25ed5394e238376"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.81/CLIProxyAPI_7.2.81_darwin_aarch64.tar.gz"
      sha256 "c48e80b51973f3102f7eac78c32be9bcfcde0dad48aa940d0bc2ee7052fa741a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.81/CLIProxyAPI_7.2.81_linux_amd64.tar.gz"
      sha256 "9a21b417e76c94267f747357bb83f87c8e9fccd5b15cbf8c3a8b3de1418a6472"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.81/CLIProxyAPI_7.2.81_linux_aarch64.tar.gz"
      sha256 "861a8fd33f6f57945d29e632ab4cca826a69649bc37be1fbccfaef0fd019f889"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.81", shell_output("#{bin}/cliproxyapi version")
  end
end

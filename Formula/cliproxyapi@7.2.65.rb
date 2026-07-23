class CliproxyapiAT7265 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.65"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.65/CLIProxyAPI_7.2.65_darwin_amd64.tar.gz"
      sha256 "cabbcc14cb8a4ae6a2c4ee3349a0bcea6a11e8b99c310b6f3bdddc48a1da645b"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.65/CLIProxyAPI_7.2.65_darwin_aarch64.tar.gz"
      sha256 "aee7326de0c2d8b5236eec5103ec41a610f8d4c4c46b7645091da977d8c1b4f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.65/CLIProxyAPI_7.2.65_linux_amd64.tar.gz"
      sha256 "1e8dc03c073d2cbe20830b3f8fe3f9c4e82191f1d20aaeb21e4710ca29cf7c9f"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.65/CLIProxyAPI_7.2.65_linux_aarch64.tar.gz"
      sha256 "7192c4029c0ab790619bd59ebe2da14d8c637cc5c9dfffd62e342832acf0a277"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.65", shell_output("#{bin}/cliproxyapi version")
  end
end

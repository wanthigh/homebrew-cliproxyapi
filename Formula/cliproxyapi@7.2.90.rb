class CliproxyapiAT7290 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.90"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.90/CLIProxyAPI_7.2.90_darwin_amd64.tar.gz"
      sha256 "619cc8351d1e3df9c5ce91ba4ccf830069e358d4a29c40ae6f7abfbf54a38ac7"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.90/CLIProxyAPI_7.2.90_darwin_aarch64.tar.gz"
      sha256 "02ca3d0e056fb325249b3349e156f87df4a8856d94942e2a9a6f3942346d91f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.90/CLIProxyAPI_7.2.90_linux_amd64.tar.gz"
      sha256 "fb637f1471ca3ca4225db3e190dd0613b8a4a5a2233ac1860a66355426038863"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.90/CLIProxyAPI_7.2.90_linux_aarch64.tar.gz"
      sha256 "e233d9c2d882be4acea29bf717ea682ced7d2366cfee1f856d53d60034807192"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.90", shell_output("#{bin}/cliproxyapi version")
  end
end

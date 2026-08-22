class CliproxyapiAT72140 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.140"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.140/CLIProxyAPI_7.2.140_darwin_amd64.tar.gz"
      sha256 "a4adccf70ce97ffbc10f0f38cf19be21e7d5d651bbf336719769af635a786820"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.140/CLIProxyAPI_7.2.140_darwin_aarch64.tar.gz"
      sha256 "47aa529e29a75804283ad44206390e1c35b290e2c4e191739bd82759461ec7e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.140/CLIProxyAPI_7.2.140_linux_amd64.tar.gz"
      sha256 "334b8417f0c24d2744700d63c10023c5b5d7c7c5b43b1609456432813ce713bf"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.140/CLIProxyAPI_7.2.140_linux_aarch64.tar.gz"
      sha256 "f6a95b34be658f69e327113a342170beb0b400b726dbf0bc52b6758feb8081d1"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  service do
    run [opt_bin/"cliproxyapi", "-config", etc/"cliproxyapi.conf"]
    keep_alive true
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.140", shell_output("#{bin}/cliproxyapi version")
  end
end

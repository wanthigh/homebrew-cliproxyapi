class CliproxyapiAT7259 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.59"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.59/CLIProxyAPI_7.2.59_darwin_amd64.tar.gz"
      sha256 "15cd6db4fbc47a57f0515ab894230321f8c8ab6bc7ed1097ecfc28b76e7ec1cd"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.59/CLIProxyAPI_7.2.59_darwin_aarch64.tar.gz"
      sha256 "7039c2e8f6aa0d282f6e9d059602a7b5c7a58c28bfc1f7090d3dcc67dcec4778"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.59/CLIProxyAPI_7.2.59_linux_amd64.tar.gz"
      sha256 "0a2d5ebcf976831a68756fcb3914b67cca48882be91c82cacb0f1f65852e5a75"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.59/CLIProxyAPI_7.2.59_linux_aarch64.tar.gz"
      sha256 "398b9e710c5aaecf6377c94d268110d19f11bf485eca55e205bbe8cd1a2322a7"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.59", shell_output("#{bin}/cliproxyapi version")
  end
end

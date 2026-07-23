class CliproxyapiAT7278 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.78"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.78/CLIProxyAPI_7.2.78_darwin_amd64.tar.gz"
      sha256 "8c52648c7380e8d3221419987ec8e18f8b1c3a4be002d2f64d488a49fd6c3963"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.78/CLIProxyAPI_7.2.78_darwin_aarch64.tar.gz"
      sha256 "bc1f95cacb4f9b66a1a850ce0b09259499917011bf36f6c6eede4eefb9cb1b75"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.78/CLIProxyAPI_7.2.78_linux_amd64.tar.gz"
      sha256 "66c4560a24b2a01a3f4c097002ff1305804a0c5488df29ea13ab05f8d9b0a88f"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.78/CLIProxyAPI_7.2.78_linux_aarch64.tar.gz"
      sha256 "803872ad23afe11515327cad38d04840110b600b668853db5328dcad078e66d1"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.78", shell_output("#{bin}/cliproxyapi version")
  end
end

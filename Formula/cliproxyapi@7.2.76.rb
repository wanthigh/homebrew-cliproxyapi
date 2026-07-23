class CliproxyapiAT7276 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.76"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.76/CLIProxyAPI_7.2.76_darwin_amd64.tar.gz"
      sha256 "7b424e9ee4b00fa5369c43addb0618f45ceacc352b8398a0d3460e098f964bd6"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.76/CLIProxyAPI_7.2.76_darwin_aarch64.tar.gz"
      sha256 "6c088e75de34d0aee8ccbb9200bd6155f8cabb3ce4318ad486f2b0b0f24b98ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.76/CLIProxyAPI_7.2.76_linux_amd64.tar.gz"
      sha256 "f75e18621a0afc6367ad6424c9a1faed157e22b3bac07e04c02406c2b25c9df0"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.76/CLIProxyAPI_7.2.76_linux_aarch64.tar.gz"
      sha256 "35b065b92512d9d6f199366a30f2a45bb9880a25ff3fec3afeded2506e6e5d6e"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.76", shell_output("#{bin}/cliproxyapi version")
  end
end

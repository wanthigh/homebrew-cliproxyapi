class CliproxyapiAT7257 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.57"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.57/CLIProxyAPI_7.2.57_darwin_amd64.tar.gz"
      sha256 "95a3252e23c4d63f3b247f5df5d8372d49b8fad57674f8d295477d04c31f3bb0"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.57/CLIProxyAPI_7.2.57_darwin_aarch64.tar.gz"
      sha256 "2f0dbf64e138d251f2604509ce86aa547cb5d65dd90ea16db67811c09849d361"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.57/CLIProxyAPI_7.2.57_linux_amd64.tar.gz"
      sha256 "52cc1ba225a7b0ec8887d7887107b2790dc5043e6385fe0d5f2ec41f5cc9b22b"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.57/CLIProxyAPI_7.2.57_linux_aarch64.tar.gz"
      sha256 "f60208f6447eb35c3d9d0b5ed1e97acaf64a5efc3223a9b8b325e9e8aa6fa95c"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.57", shell_output("#{bin}/cliproxyapi version")
  end
end

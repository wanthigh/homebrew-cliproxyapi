class CliproxyapiAT8018 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.18"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.18/CLIProxyAPI_8.0.18_darwin_amd64.tar.gz"
      sha256 "6d882da845e71ef4c9f651d292193cac3bc8b9e966c34911cb15690e0759794f"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.18/CLIProxyAPI_8.0.18_darwin_aarch64.tar.gz"
      sha256 "c24e1cca9c91f021dd98c762e3eec1fd65d5cdb2d8db5491d4661af15ba7c772"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.18/CLIProxyAPI_8.0.18_linux_amd64.tar.gz"
      sha256 "fa9aea4aa0bc170fae849575e522b4d1a865c8dd0b4e215faf50c7ce8bbfb4c8"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.18/CLIProxyAPI_8.0.18_linux_aarch64.tar.gz"
      sha256 "232536263a8541024d0baabe5af8f84c17442587229bb0a7a58bda14f1b60795"
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
    assert_match "CLIProxyAPI Version: 8.0.18", shell_output("#{bin}/cliproxyapi version")
  end
end

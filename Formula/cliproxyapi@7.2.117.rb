class CliproxyapiAT72117 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.117"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.117/CLIProxyAPI_7.2.117_darwin_amd64.tar.gz"
      sha256 "4a61438ec7ce1e3c980e1f900dd45fc620f914ff6e7549c3357c8fa42143ba78"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.117/CLIProxyAPI_7.2.117_darwin_aarch64.tar.gz"
      sha256 "3f7c5fb1720d6d05013161de35d38f647677b788a4c50f24ce1327c90de15819"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.117/CLIProxyAPI_7.2.117_linux_amd64.tar.gz"
      sha256 "e13e36d02d0f7fece1ad31e5aa2dd8b6ac4e0b22b82fd3d339843ce9948026fd"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.117/CLIProxyAPI_7.2.117_linux_aarch64.tar.gz"
      sha256 "50ec1f2df21f107b8763a0d4ef608f4187dd0a97ec94f73e0ced6558c7057cdd"
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
    assert_match "CLIProxyAPI Version: 7.2.117", shell_output("#{bin}/cliproxyapi version")
  end
end

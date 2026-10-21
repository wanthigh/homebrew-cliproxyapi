class CliproxyapiAT8038 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.38"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.38/CLIProxyAPI_8.0.38_darwin_amd64.tar.gz"
      sha256 "e7e36545d5badc8d16cccc2e27d776cfe10ae5c2d220274fce22681ec9770ff3"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.38/CLIProxyAPI_8.0.38_darwin_aarch64.tar.gz"
      sha256 "58899af288fc25bf5b9c8a59dc936ca375c331addfa7b4e4ecc1f13fba00d5d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.38/CLIProxyAPI_8.0.38_linux_amd64.tar.gz"
      sha256 "05690c53245a149230a8b7d64085ed96036275a72414d0097f88bb6314acb39b"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.38/CLIProxyAPI_8.0.38_linux_aarch64.tar.gz"
      sha256 "a1282bbbaa3a9ca9e5c36865d1a840e2902b783bbda4894935c04befdb623c29"
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
    assert_match "CLIProxyAPI Version: 8.0.38", shell_output("#{bin}/cliproxyapi version")
  end
end

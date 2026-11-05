class CliproxyapiAT8057 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.57"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.57/CLIProxyAPI_8.0.57_darwin_amd64.tar.gz"
      sha256 "428ad123451238972d208ba76d360df461517647e78bcb2ef8ab7cce5b3eebe1"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.57/CLIProxyAPI_8.0.57_darwin_aarch64.tar.gz"
      sha256 "dd620c0d24e000ffe908d0d8eeb4a6c7315a31d3776fa09f198856b09fd7821f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.57/CLIProxyAPI_8.0.57_linux_amd64.tar.gz"
      sha256 "1e7b31c4bdbfeb91947fbb686933c36234ffa84c1beb781c7c020c035763545e"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.57/CLIProxyAPI_8.0.57_linux_aarch64.tar.gz"
      sha256 "62ec089e714af886b152e5eaf9010aaa5feb17b2a964d17b338b03316ed22144"
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
    assert_match "CLIProxyAPI Version: 8.0.57", shell_output("#{bin}/cliproxyapi version")
  end
end

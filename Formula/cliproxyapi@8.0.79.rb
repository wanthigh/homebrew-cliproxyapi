class CliproxyapiAT8079 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.79"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.79/CLIProxyAPI_8.0.79_darwin_amd64.tar.gz"
      sha256 "cc7fb3568ccb899afe09e7e32b2ab49c62b1fb21ef6c16f6aa2041db80b3dbcf"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.79/CLIProxyAPI_8.0.79_darwin_aarch64.tar.gz"
      sha256 "3f807ccc49ea0c3fce7240fb5890904e6953fbe42d20cb16d0e326b1387085c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.79/CLIProxyAPI_8.0.79_linux_amd64.tar.gz"
      sha256 "7cbb9709ed939ff3684e10592a45cc538ee82d5da759daa7e18c7e1dc3b32acd"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.79/CLIProxyAPI_8.0.79_linux_aarch64.tar.gz"
      sha256 "9cfd3f300662fbf5a0bb15239e5c4d22a478535a68b39e7f236d46c03fba42c5"
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
    assert_match "CLIProxyAPI Version: 8.0.79", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT72147 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.147"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.147/CLIProxyAPI_7.2.147_darwin_amd64.tar.gz"
      sha256 "85fd7332058f5ddedd0133d7e9063f02e80a1df60121ad515bab7aeb0e644af3"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.147/CLIProxyAPI_7.2.147_darwin_aarch64.tar.gz"
      sha256 "4ac1db83b00591265ebb93a3277d812aaf6e45e8b21bb3b4786598520afdf4be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.147/CLIProxyAPI_7.2.147_linux_amd64.tar.gz"
      sha256 "01dce9e9418bf85e64597132ecb53e82248782ad782feeea725e5bacdfb2f64f"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.147/CLIProxyAPI_7.2.147_linux_aarch64.tar.gz"
      sha256 "f3c59c38fc19f8e06042f29701ec9409dcc2b2235b5dc0a3ec142ba20b3a5a86"
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
    assert_match "CLIProxyAPI Version: 7.2.147", shell_output("#{bin}/cliproxyapi version")
  end
end

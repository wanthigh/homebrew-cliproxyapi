class CliproxyapiAT8076 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.76"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.76/CLIProxyAPI_8.0.76_darwin_amd64.tar.gz"
      sha256 "3cf94f4c345995c8359c5421ec5c448087cb70402ab7aa5db837c6233d6df710"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.76/CLIProxyAPI_8.0.76_darwin_aarch64.tar.gz"
      sha256 "69acf0b768a62eb13ba19c4fbfa8fece20e7cdcaa8bfaa1f73d45ff2c2754ce7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.76/CLIProxyAPI_8.0.76_linux_amd64.tar.gz"
      sha256 "3cdd1218e8e7566613d98f393e4d9f5fd96043dc0f1cc568358646d3dd9eefd0"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.76/CLIProxyAPI_8.0.76_linux_aarch64.tar.gz"
      sha256 "b76657bbcb2a1f6de32b11f69def2a2d03961391b378e0ca2b25378401390a44"
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
    assert_match "CLIProxyAPI Version: 8.0.76", shell_output("#{bin}/cliproxyapi version")
  end
end

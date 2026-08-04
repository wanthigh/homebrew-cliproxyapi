class CliproxyapiAT72119 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.119"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.119/CLIProxyAPI_7.2.119_darwin_amd64.tar.gz"
      sha256 "0ab1f1a0751532cf0f36fd396f6a9d74707358bcbfde16f809ffce4bf069f26b"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.119/CLIProxyAPI_7.2.119_darwin_aarch64.tar.gz"
      sha256 "7e9bc444a7defd9ae06dc37f16a6ce73be754656b07324aa3d264a3d01c71175"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.119/CLIProxyAPI_7.2.119_linux_amd64.tar.gz"
      sha256 "d7ff48bb213d7fe86af7ea9778f547554753c8c30171b0471df6c9b4d1192aef"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.119/CLIProxyAPI_7.2.119_linux_aarch64.tar.gz"
      sha256 "f8466337a34a97706ae14199592bd7834ed64b721a8f5b28cb80dde9bc2ee18b"
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
    assert_match "CLIProxyAPI Version: 7.2.119", shell_output("#{bin}/cliproxyapi version")
  end
end

class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.58"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.58/CLIProxyAPI_8.0.58_darwin_amd64.tar.gz"
      sha256 "480900dd0b23931d7d2914d59b7ddb68eef2f4ac02c3c7bc5dbab6710db4e4d4"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.58/CLIProxyAPI_8.0.58_darwin_aarch64.tar.gz"
      sha256 "4ac2920d4d0aaba0a0b6cc0708a35f79c479a24684cbcd39bbe2b85464ad48bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.58/CLIProxyAPI_8.0.58_linux_amd64.tar.gz"
      sha256 "5464690978dee3d5f1f1d7975f3630e0364573b1033829f476dcb09dfad89272"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.58/CLIProxyAPI_8.0.58_linux_aarch64.tar.gz"
      sha256 "39353856135a5edae1b9a23c97e5964f7df9d10259bbb9a85b9fef3f6ebd3025"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  def post_install
    (etc/"cliproxyapi.conf.default").write <<~EOS
      # CLIProxyAPI Configuration File
      # Edit this file to configure cliproxyapi
    EOS
  end

  service do
    run [opt_bin/"cliproxyapi", "-config", etc/"cliproxyapi.conf"]
    keep_alive true
  end

  test do
    assert_match "CLIProxyAPI Version: 8.0.58", shell_output("#{bin}/cliproxyapi version")
  end
end

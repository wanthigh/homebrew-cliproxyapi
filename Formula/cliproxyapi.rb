class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.1.7"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.7/CLIProxyAPI_8.1.7_darwin_amd64.tar.gz"
      sha256 "7086c5f04a2182bfdd1dee6c5c145d59725cef31d8bc37e3a613f346fe1352cc"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.7/CLIProxyAPI_8.1.7_darwin_aarch64.tar.gz"
      sha256 "667e6f2473e898ac3a6d16c01c9ce5cdf739a13b528cc80d328651a350691a2c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.7/CLIProxyAPI_8.1.7_linux_amd64.tar.gz"
      sha256 "c2ffd3845c15a100a6ac5e2a2c192aca81d617033652bf2499e40783029de149"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.7/CLIProxyAPI_8.1.7_linux_aarch64.tar.gz"
      sha256 "4f0a0feae11c1c9f9d50b7a561ec0f1a17f1b851a4222d07a949aeaeedb3c3a1"
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
    assert_match "CLIProxyAPI Version: 8.1.7", shell_output("#{bin}/cliproxyapi version")
  end
end

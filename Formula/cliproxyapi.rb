class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.34"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.34/CLIProxyAPI_8.0.34_darwin_amd64.tar.gz"
      sha256 "929b69af6c4f327c85ef8c3f886408ade55721838c53bce186d6946f39193414"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.34/CLIProxyAPI_8.0.34_darwin_aarch64.tar.gz"
      sha256 "d9c46696c9a42275a6c363a8e1f307f23ba41b6475677bd4f76cd0f8d6cfae3a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.34/CLIProxyAPI_8.0.34_linux_amd64.tar.gz"
      sha256 "9a76ded067dfa848cce4976596739ea9844a5816217cce86fd3c666a8242ff32"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.34/CLIProxyAPI_8.0.34_linux_aarch64.tar.gz"
      sha256 "53d0aca1c7022995409337a7a1150a393721fbe9bc1b0e70c33dc6566d173984"
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
    assert_match "CLIProxyAPI Version: 8.0.34", shell_output("#{bin}/cliproxyapi version")
  end
end

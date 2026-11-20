class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.80"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.80/CLIProxyAPI_8.0.80_darwin_amd64.tar.gz"
      sha256 "764f28c6b8271f8ea3e606f32e71ae5a4442a97ddf6fc23ca452f93d274624c3"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.80/CLIProxyAPI_8.0.80_darwin_aarch64.tar.gz"
      sha256 "c22e3b15a0d4395e779dc70b6e4ea78bdf3053c93c06fe9a15e96161d4ed46d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.80/CLIProxyAPI_8.0.80_linux_amd64.tar.gz"
      sha256 "74ea0252f18f12332d10709d6f196558c72c56429265f05142ab241749a61c16"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.80/CLIProxyAPI_8.0.80_linux_aarch64.tar.gz"
      sha256 "c016b9238858fb01d0e720331ed8962df88fa7b635cad9bc5707b857fe82ec5a"
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
    assert_match "CLIProxyAPI Version: 8.0.80", shell_output("#{bin}/cliproxyapi version")
  end
end

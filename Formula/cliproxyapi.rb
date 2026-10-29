class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.47"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.47/CLIProxyAPI_8.0.47_darwin_amd64.tar.gz"
      sha256 "2e72cb7b28905b9135563e4fc01af00009ce72a444729eb95bdb634543ce7d41"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.47/CLIProxyAPI_8.0.47_darwin_aarch64.tar.gz"
      sha256 "a5b260ec0f843d2291488acd76e5595232da8f3b8ec2d334154f1570f5f3ca08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.47/CLIProxyAPI_8.0.47_linux_amd64.tar.gz"
      sha256 "2b5111dc6a0dfe0d607457787f794330d1b477bc9daa6337c26b0cd032a7827e"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.47/CLIProxyAPI_8.0.47_linux_aarch64.tar.gz"
      sha256 "da1326ed4434fb6c9609927f317c093f9a4bb482a61e5451e9bea99a0dc7c4bf"
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
    assert_match "CLIProxyAPI Version: 8.0.47", shell_output("#{bin}/cliproxyapi version")
  end
end

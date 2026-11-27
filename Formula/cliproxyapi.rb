class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.1.8"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.8/CLIProxyAPI_8.1.8_darwin_amd64.tar.gz"
      sha256 "e03306c2017953cb7b02324aa458af180da1c8c8615f6c2c762d6dcf81be2137"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.8/CLIProxyAPI_8.1.8_darwin_aarch64.tar.gz"
      sha256 "ce345e8aca90dc76620fedeffd4eb1b6114d6d407474c52df4eff038ab9c34a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.8/CLIProxyAPI_8.1.8_linux_amd64.tar.gz"
      sha256 "3043da238fe86cd336dc8d30eed727a0ce3e0d30c7f9ee014a50576b2f11c6c8"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.8/CLIProxyAPI_8.1.8_linux_aarch64.tar.gz"
      sha256 "e0e3da2c044b26639165970d4486650477fd39ec492351542c3dc354944f8b41"
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
    assert_match "CLIProxyAPI Version: 8.1.8", shell_output("#{bin}/cliproxyapi version")
  end
end

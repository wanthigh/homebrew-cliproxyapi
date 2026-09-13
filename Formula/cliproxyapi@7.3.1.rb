class CliproxyapiAT731 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.3.1"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.1/CLIProxyAPI_7.3.1_darwin_amd64.tar.gz"
      sha256 "05d7e97988d74cd62383d2cc8e6c3cda69053012af6e6cd98a49c62dca26896b"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.1/CLIProxyAPI_7.3.1_darwin_aarch64.tar.gz"
      sha256 "332466b96e7f6c0ca8ee4c93053d7149e171d5b4e39d5dfaeb9f75fdb486b765"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.1/CLIProxyAPI_7.3.1_linux_amd64.tar.gz"
      sha256 "c0777a88ea3c01779b82c3076b0a9a3d598266fa0c7267054b178c8cc4b4d5b9"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.1/CLIProxyAPI_7.3.1_linux_aarch64.tar.gz"
      sha256 "33999567b6b712d5cf9995ffbb751b84440cc6fbc96640129f3feda424831258"
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
    assert_match "CLIProxyAPI Version: 7.3.1", shell_output("#{bin}/cliproxyapi version")
  end
end

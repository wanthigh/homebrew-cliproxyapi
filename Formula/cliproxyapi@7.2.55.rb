class CliproxyapiAT7255 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.55"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.55/CLIProxyAPI_7.2.55_darwin_amd64.tar.gz"
      sha256 "6b9c2ae266cf7e816ade221c94ffe515c45607378f9e1f2e8edc37b96184cda4"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.55/CLIProxyAPI_7.2.55_darwin_aarch64.tar.gz"
      sha256 "da271aca2a65e3d6b9121f4d5772685276a3e39acdcee2d8ecad62ed15afcf4d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.55/CLIProxyAPI_7.2.55_linux_amd64.tar.gz"
      sha256 "91db6c37e60f433879e3a3583461d71b943883692457e3a5ee285750df01d07c"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.55/CLIProxyAPI_7.2.55_linux_aarch64.tar.gz"
      sha256 "d0d98d980ebd660dab776040539635382a4652b13f9c2b264bc41c973dc1f2ca"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.55", shell_output("#{bin}/cliproxyapi version")
  end
end

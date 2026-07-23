class CliproxyapiAT7291 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.91"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.91/CLIProxyAPI_7.2.91_darwin_amd64.tar.gz"
      sha256 "72063d1ba0406f7a4e3c133500569cb026d1a8ab3267cc73cb2da34f3684d12e"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.91/CLIProxyAPI_7.2.91_darwin_aarch64.tar.gz"
      sha256 "a4ebc39f03a8d49d089338574ac54c340773c8d46873121e4231088c56cc816e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.91/CLIProxyAPI_7.2.91_linux_amd64.tar.gz"
      sha256 "3dd8f22d7541f3d34fb411ea24cc4c30ca8dc6141953c5cee3ebf6583d1e6027"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.91/CLIProxyAPI_7.2.91_linux_aarch64.tar.gz"
      sha256 "e7aff7bb8e68bf83ea99639594b63f0074160da8f555c63d0b8cc0590b2d23e9"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.91", shell_output("#{bin}/cliproxyapi version")
  end
end

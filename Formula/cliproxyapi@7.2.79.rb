class CliproxyapiAT7279 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.79"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.79/CLIProxyAPI_7.2.79_darwin_amd64.tar.gz"
      sha256 "bdc9e13b55902e165810cd1e7784088cc7a802d6291541687b311c09c50c2c10"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.79/CLIProxyAPI_7.2.79_darwin_aarch64.tar.gz"
      sha256 "e6f5786a6b688f2366d2ee4d23737e8dc8c3da98205ef78081554b3db7a59965"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.79/CLIProxyAPI_7.2.79_linux_amd64.tar.gz"
      sha256 "05488d45bd3f49892a60c36fc365f8d98c6177884aeccdca8626e0fb1adb4f0a"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.79/CLIProxyAPI_7.2.79_linux_aarch64.tar.gz"
      sha256 "26b6e083982cb78bf8d8060ceb9ad993dec558c3e6dd2ca07f1d998655c667da"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.79", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT7273 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.73"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.73/CLIProxyAPI_7.2.73_darwin_amd64.tar.gz"
      sha256 "9d9f5ce912dff4bdfc6af33d3d3e6a1c91413d3964bdfc2877d871af1a911c39"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.73/CLIProxyAPI_7.2.73_darwin_aarch64.tar.gz"
      sha256 "ef666c1f713e944b24e8e205ce806137ea718e7b859e5533f015e8f8a98d62a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.73/CLIProxyAPI_7.2.73_linux_amd64.tar.gz"
      sha256 "7c7959b06a06febf1fb73102d323fc06ec13f0bdc3d4ee8c3c0772a15aa02246"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.73/CLIProxyAPI_7.2.73_linux_aarch64.tar.gz"
      sha256 "3df98cecf0dca4f631d6813f4eb7657d8068466df4ac40ca7061a458878704df"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.73", shell_output("#{bin}/cliproxyapi version")
  end
end

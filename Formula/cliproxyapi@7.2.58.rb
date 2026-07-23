class CliproxyapiAT7258 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.58"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.58/CLIProxyAPI_7.2.58_darwin_amd64.tar.gz"
      sha256 "6508350c2b1da5f89164849c50cf9b53c9a9f9a5cfa27cdd8806e4f3f344082d"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.58/CLIProxyAPI_7.2.58_darwin_aarch64.tar.gz"
      sha256 "52882fab08d10882510969d3ada73dd7bcb5590831db6263849a7be987b0093b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.58/CLIProxyAPI_7.2.58_linux_amd64.tar.gz"
      sha256 "f619133e20b873908960dabe0fcdfc99d3db7b37e5df6fcde6f0b5ace55338d0"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.58/CLIProxyAPI_7.2.58_linux_aarch64.tar.gz"
      sha256 "915a052f6f397bafc9e73530525720676e301d36890d223c39afd4070d10a76e"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.58", shell_output("#{bin}/cliproxyapi version")
  end
end

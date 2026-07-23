class CliproxyapiAT7271 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.71"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.71/CLIProxyAPI_7.2.71_darwin_amd64.tar.gz"
      sha256 "1b8d4a969c952397764188e53d0b23249f484cb62043c83a534cfaea7d7d5ab0"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.71/CLIProxyAPI_7.2.71_darwin_aarch64.tar.gz"
      sha256 "f8cd1028c591bcb89fdb15650457ae6a56e462346d7cf108a9f02dcb819196dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.71/CLIProxyAPI_7.2.71_linux_amd64.tar.gz"
      sha256 "3201240a435c073acd77a7178c658838d750a57e79254b3850db81d8eb90b500"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.71/CLIProxyAPI_7.2.71_linux_aarch64.tar.gz"
      sha256 "fa49b1a0d1b88bab65558299156a35cac9025ff0bf73fbfc95ecf2644d393488"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.71", shell_output("#{bin}/cliproxyapi version")
  end
end

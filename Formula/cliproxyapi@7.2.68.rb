class CliproxyapiAT7268 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.68"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.68/CLIProxyAPI_7.2.68_darwin_amd64.tar.gz"
      sha256 "a52645975eb7ecc2e33ce73b859f234adc5bbd76fdb7b13fe5d990b264a37f63"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.68/CLIProxyAPI_7.2.68_darwin_aarch64.tar.gz"
      sha256 "4f6c52cb52fe2103ef48a9bd84a791608ce5608bae0751ed3cfe8cd249677a56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.68/CLIProxyAPI_7.2.68_linux_amd64.tar.gz"
      sha256 "ec9aa3d45be55262ca98f8152ba6327c40ad5232bd60e6bbfa445371b2744c93"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.68/CLIProxyAPI_7.2.68_linux_aarch64.tar.gz"
      sha256 "ad5c33b964c5aed86e265ce20af76286f12d1a338bbea53654589288a08b7468"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.68", shell_output("#{bin}/cliproxyapi version")
  end
end

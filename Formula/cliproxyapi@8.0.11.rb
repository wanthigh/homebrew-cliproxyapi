class CliproxyapiAT8011 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.11"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.11/CLIProxyAPI_8.0.11_darwin_amd64.tar.gz"
      sha256 "fe5d1ada6609754010ced92ce4f4e538df31f8618becea6203ebb9ecdfc266a5"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.11/CLIProxyAPI_8.0.11_darwin_aarch64.tar.gz"
      sha256 "8732e3ac22199a0e514d4c26b123cdf0b9913cbebd77a9982dc6a190a038d392"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.11/CLIProxyAPI_8.0.11_linux_amd64.tar.gz"
      sha256 "604e7cacfb4d901efebb4b2d1ad440ca39e9e8146b4a3411c6454c375b0b1c3a"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.11/CLIProxyAPI_8.0.11_linux_aarch64.tar.gz"
      sha256 "96986b50ed9e3531f7c62f041fa585d2e51af3bf89c721d8b9709ceb64118bfd"
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
    assert_match "CLIProxyAPI Version: 8.0.11", shell_output("#{bin}/cliproxyapi version")
  end
end

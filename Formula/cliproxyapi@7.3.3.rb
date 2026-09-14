class CliproxyapiAT733 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.3.3"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.3/CLIProxyAPI_7.3.3_darwin_amd64.tar.gz"
      sha256 "7983b5253879c4d32f99e9a7658add9182e3789b8709ec0752436c58a95ae3e7"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.3/CLIProxyAPI_7.3.3_darwin_aarch64.tar.gz"
      sha256 "f142744581a97888425c2e2d728dc3dc1478a02eac314913ec067ae144f7ae78"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.3/CLIProxyAPI_7.3.3_linux_amd64.tar.gz"
      sha256 "7af8c99cd08eee3ccc81d1596e8a31785674d3de6bd7ec61416d59493dd8fc01"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.3/CLIProxyAPI_7.3.3_linux_aarch64.tar.gz"
      sha256 "5f320e3fae52af00f07b78201311e9d096b36e759441d948de48a10f49e71883"
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
    assert_match "CLIProxyAPI Version: 7.3.3", shell_output("#{bin}/cliproxyapi version")
  end
end

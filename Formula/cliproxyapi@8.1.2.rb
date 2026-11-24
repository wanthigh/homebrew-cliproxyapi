class CliproxyapiAT812 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.1.2"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.2/CLIProxyAPI_8.1.2_darwin_amd64.tar.gz"
      sha256 "3e4ae8dc26676ada1db8b5f8e95bf097670e7aefb0bf6c3f5a3340c00cb42f0e"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.2/CLIProxyAPI_8.1.2_darwin_aarch64.tar.gz"
      sha256 "95d746c8d6cb418a88cb79937ca90194388faa707c30e3ec53e7d41f469cd6ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.2/CLIProxyAPI_8.1.2_linux_amd64.tar.gz"
      sha256 "851e41c9a087b60e6586fec0c6be821b61921e8da0e84b9490ef542042db0756"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.2/CLIProxyAPI_8.1.2_linux_aarch64.tar.gz"
      sha256 "41245fa2af02d68c69376afc6360af49b58c3b2368d8cec1d61f0e43de14d580"
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
    assert_match "CLIProxyAPI Version: 8.1.2", shell_output("#{bin}/cliproxyapi version")
  end
end

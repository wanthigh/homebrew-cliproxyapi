class CliproxyapiAT72106 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.106"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.106/CLIProxyAPI_7.2.106_darwin_amd64.tar.gz"
      sha256 "b79a43c1f68d500851c0973cd5281cf1c7f1f0b6e7386d19f87d2b6f63dd4d25"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.106/CLIProxyAPI_7.2.106_darwin_aarch64.tar.gz"
      sha256 "aa10d0b3ac760d840a22e2731ba6db97dba107b42c77efc94eb472fecb879649"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.106/CLIProxyAPI_7.2.106_linux_amd64.tar.gz"
      sha256 "f6b40c2c68edbcf074906bafa284aeb15f54b9e18975f902362528c36b5f2562"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.106/CLIProxyAPI_7.2.106_linux_aarch64.tar.gz"
      sha256 "5b5a970feec6fa0d5817b9b4d57d054ddbb0015e98e6ec26616cbed741425ad1"
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
    assert_match "CLIProxyAPI Version: 7.2.106", shell_output("#{bin}/cliproxyapi version")
  end
end

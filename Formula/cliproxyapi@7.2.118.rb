class CliproxyapiAT72118 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.118"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.118/CLIProxyAPI_7.2.118_darwin_amd64.tar.gz"
      sha256 "7a977e5470a8ca0c74ab04e8dde40c1ae70ae406e584eb5ccd94213715ddcfd6"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.118/CLIProxyAPI_7.2.118_darwin_aarch64.tar.gz"
      sha256 "98f6ac27e6b853e2aaa9c27b97011de86cebfb04872102715bcb5197991e1afb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.118/CLIProxyAPI_7.2.118_linux_amd64.tar.gz"
      sha256 "3a6a001632f232a6482783720d8674f8f8f91033e1c2d585a54e7e550d35804f"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.118/CLIProxyAPI_7.2.118_linux_aarch64.tar.gz"
      sha256 "7c6cbb9f0fc8cc340a2736dfc32ae1bead71ac9a9c4c01b2081c844987b7326c"
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
    assert_match "CLIProxyAPI Version: 7.2.118", shell_output("#{bin}/cliproxyapi version")
  end
end

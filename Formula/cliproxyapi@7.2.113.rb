class CliproxyapiAT72113 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.113"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.113/CLIProxyAPI_7.2.113_darwin_amd64.tar.gz"
      sha256 "4cebc0a3270beadfbc4a6c375c3b2c9a99433a43252770350f8c9d07916db97d"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.113/CLIProxyAPI_7.2.113_darwin_aarch64.tar.gz"
      sha256 "b0b4c56d4c6fd95766f00df875f35539f38e4d9898b02989cfe41efa10989f93"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.113/CLIProxyAPI_7.2.113_linux_amd64.tar.gz"
      sha256 "cee4ceea8e8ff3811baa453412b926caaa942813da4658ffb2fd252a63649e16"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.113/CLIProxyAPI_7.2.113_linux_aarch64.tar.gz"
      sha256 "b8a753fd9ca6a21fc67237c46a6717dd0c598ecd0c40bcf31da8016f8739a3dd"
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
    assert_match "CLIProxyAPI Version: 7.2.113", shell_output("#{bin}/cliproxyapi version")
  end
end

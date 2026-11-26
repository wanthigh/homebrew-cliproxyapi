class CliproxyapiAT816 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.1.6"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.6/CLIProxyAPI_8.1.6_darwin_amd64.tar.gz"
      sha256 "8e8d1662d27851ae03e908bf43608aced25842b2c7ddd4b5636615a5d6c6b168"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.6/CLIProxyAPI_8.1.6_darwin_aarch64.tar.gz"
      sha256 "6e13c4a6753b766885a6f9b0f0c6a21c0777dc6ad2fe6e595b2a0ebc526766b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.6/CLIProxyAPI_8.1.6_linux_amd64.tar.gz"
      sha256 "109f3d4482da4fdc88ef23831cbc407ae04787ff3a00f54a52af882b499e87ab"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.6/CLIProxyAPI_8.1.6_linux_aarch64.tar.gz"
      sha256 "aa4b2a6382a00b8cffd1d92e55d069b96b7097570e2006ee941867bfc65d0285"
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
    assert_match "CLIProxyAPI Version: 8.1.6", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT7284 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.84"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.84/CLIProxyAPI_7.2.84_darwin_amd64.tar.gz"
      sha256 "878a21bbcbb82a209d1058c7fc47b2c1148382173fe3274f4f8cbfa65eee880b"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.84/CLIProxyAPI_7.2.84_darwin_aarch64.tar.gz"
      sha256 "a3d6114c5c153ab24f3dfcec49c67b6b97276f78bbaad47fb40f961d2c0e1f27"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.84/CLIProxyAPI_7.2.84_linux_amd64.tar.gz"
      sha256 "90a4cb8f7053aec65c9b5cd3689a6e3311c4582d90687cc9145e1f1afd6280a6"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.84/CLIProxyAPI_7.2.84_linux_aarch64.tar.gz"
      sha256 "1d8db9886c12f081e5be09f0d1e4c63c283065dd9431ec550a1fe53fbc990efb"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.84", shell_output("#{bin}/cliproxyapi version")
  end
end

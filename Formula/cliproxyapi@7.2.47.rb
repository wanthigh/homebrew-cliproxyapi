class CliproxyapiAT7247 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.47"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.47/CLIProxyAPI_7.2.47_darwin_amd64.tar.gz"
      sha256 "2072e6567ac4b22fe7359ac5848a9245da21c6c33d7d6331131d9eaf971d1c2e"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.47/CLIProxyAPI_7.2.47_darwin_aarch64.tar.gz"
      sha256 "7dcb8a71b18ec8938743d79c149af660cbb70fe676187c8b22331f34d183c4cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.47/CLIProxyAPI_7.2.47_linux_amd64.tar.gz"
      sha256 "fe1562817b08688a70235595741092acbb1c3976c098f8686cf5a3ff23a2db8a"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.47/CLIProxyAPI_7.2.47_linux_aarch64.tar.gz"
      sha256 "e1a68f76e73628b98a238190875cceed775dce3f8d88ac7fbebbf163a3639ea1"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.47", shell_output("#{bin}/cliproxyapi version")
  end
end

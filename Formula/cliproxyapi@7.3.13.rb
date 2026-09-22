class CliproxyapiAT7313 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.3.13"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.13/CLIProxyAPI_7.3.13_darwin_amd64.tar.gz"
      sha256 "5111a42fbedd5064fae94ed77d5880d79f4b5ad9df2b27e911610c8ed6c929fe"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.13/CLIProxyAPI_7.3.13_darwin_aarch64.tar.gz"
      sha256 "789936efd764b565801e3acaf5f0763c89fa5c340b103f0f0bdb9595bbd563ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.13/CLIProxyAPI_7.3.13_linux_amd64.tar.gz"
      sha256 "8f741ee652684e7a9fe72296da71b2411a11165d6121f30a2a68fa02109dfb9b"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.13/CLIProxyAPI_7.3.13_linux_aarch64.tar.gz"
      sha256 "2d738f9955e1f0badfec7f5e6c4cf1945f9241d57d528d44446d76a8a02c17e1"
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
    assert_match "CLIProxyAPI Version: 7.3.13", shell_output("#{bin}/cliproxyapi version")
  end
end

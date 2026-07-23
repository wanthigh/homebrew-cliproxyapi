class CliproxyapiAT7287 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.87"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.87/CLIProxyAPI_7.2.87_darwin_amd64.tar.gz"
      sha256 "54bf3b651f4823d1790edd5a90553ba36c684afe1291bf9bdc113f4d96b414b0"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.87/CLIProxyAPI_7.2.87_darwin_aarch64.tar.gz"
      sha256 "dcae5e21fbb32c38d5b34323fb72b933f3b5cfa477006794f4494e0c19ffe9bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.87/CLIProxyAPI_7.2.87_linux_amd64.tar.gz"
      sha256 "6dc0930b29acdbacdddd2cb7252b1f02b8367f8d64ddf28fba6824748cd9a908"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.87/CLIProxyAPI_7.2.87_linux_aarch64.tar.gz"
      sha256 "8e366a2075ea2309b59601a75d1e42c780586b0a52e24465da5618ff436058cc"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.87", shell_output("#{bin}/cliproxyapi version")
  end
end

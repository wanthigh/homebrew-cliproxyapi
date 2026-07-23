class CliproxyapiAT7256 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.56"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.56/CLIProxyAPI_7.2.56_darwin_amd64.tar.gz"
      sha256 "a9716e3173987ba9c4a8d8a24e708b592a1c691cf729a3e3b7cd00daa9ee4153"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.56/CLIProxyAPI_7.2.56_darwin_aarch64.tar.gz"
      sha256 "6a9f96fe8b82f3b6837dcddacacccc66e5f5516c53b5af2d8f52cece0a5c2247"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.56/CLIProxyAPI_7.2.56_linux_amd64.tar.gz"
      sha256 "ba865dc9ae03679c1378387e9e8ec43a0c2382933e5af14b0348da8e5018a48d"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.56/CLIProxyAPI_7.2.56_linux_aarch64.tar.gz"
      sha256 "83be0628a1129c5d9f6ba083408c2ed77828a94b9b2db703a04109938ea9573b"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.56", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT7270 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.70"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.70/CLIProxyAPI_7.2.70_darwin_amd64.tar.gz"
      sha256 "9f5ee9b50926a2f5b8eea804e8fa762e86e7669d31aab5c1bcdcd928d01fc203"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.70/CLIProxyAPI_7.2.70_darwin_aarch64.tar.gz"
      sha256 "96b7957eba34a104495faf9e68fc2691832bffa566d454d9d2c220a95b383801"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.70/CLIProxyAPI_7.2.70_linux_amd64.tar.gz"
      sha256 "101bdba0c13949d8fa18041c1d48f302852e1e1f8f100985352be35944a0d81b"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.70/CLIProxyAPI_7.2.70_linux_aarch64.tar.gz"
      sha256 "826f8d5eaf1f938def12dbed0bf84b0ace157efdb2509919ad96213348151d9f"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.70", shell_output("#{bin}/cliproxyapi version")
  end
end

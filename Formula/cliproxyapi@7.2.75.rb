class CliproxyapiAT7275 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.75"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.75/CLIProxyAPI_7.2.75_darwin_amd64.tar.gz"
      sha256 "2c9a5bc3afda6e7d952a3b816ecba9c92e7aef27951f0a967c5dc869ab0f48f5"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.75/CLIProxyAPI_7.2.75_darwin_aarch64.tar.gz"
      sha256 "3c36caa6c272763c78ee3ac04aa163d12cfbdac45a4debe3037c12ef8d5d9c24"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.75/CLIProxyAPI_7.2.75_linux_amd64.tar.gz"
      sha256 "d4aeec774e42f832b17d60c81a909655cfd3a435cfafc91aa5f983ff8d2b3692"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.75/CLIProxyAPI_7.2.75_linux_aarch64.tar.gz"
      sha256 "48ef8381ca26d380e04bad5d0387469b4e13d5bb3beee11dc7276c7a1e23efa9"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.75", shell_output("#{bin}/cliproxyapi version")
  end
end

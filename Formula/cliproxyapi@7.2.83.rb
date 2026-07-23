class CliproxyapiAT7283 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.83"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.83/CLIProxyAPI_7.2.83_darwin_amd64.tar.gz"
      sha256 "1f717de6b35bd7e4763f8de80b210bb7709d1ac162c0db161e14bb3d6c2ecea1"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.83/CLIProxyAPI_7.2.83_darwin_aarch64.tar.gz"
      sha256 "1843e50b9966893ba1728ebf361c7ea5ed7ccebfe681c4f32409c638d70d77d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.83/CLIProxyAPI_7.2.83_linux_amd64.tar.gz"
      sha256 "7370fb5d39ffdd884f799d2609138b5465e29f49883ee6b521adee9af2138088"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.83/CLIProxyAPI_7.2.83_linux_aarch64.tar.gz"
      sha256 "f7a865dd589354d922f46d1d436a659de27d6ceeabc83bb91e6430458b0a2746"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.83", shell_output("#{bin}/cliproxyapi version")
  end
end

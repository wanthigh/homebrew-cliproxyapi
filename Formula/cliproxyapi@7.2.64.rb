class CliproxyapiAT7264 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.64"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.64/CLIProxyAPI_7.2.64_darwin_amd64.tar.gz"
      sha256 "26ad1bd7cdd7bfba5269eb88380bd1e8f49413bd298c09ffc4ef327a878dfee7"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.64/CLIProxyAPI_7.2.64_darwin_aarch64.tar.gz"
      sha256 "b757982d5595711e78d1d3aa00ef4483f16e837e6fb4c70e81aa18e5eeb27f5b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.64/CLIProxyAPI_7.2.64_linux_amd64.tar.gz"
      sha256 "2689c6f76bb0f444ef4062fd39967683ce937df4d4ea808cd4aaeefa2ee9bb1b"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.64/CLIProxyAPI_7.2.64_linux_aarch64.tar.gz"
      sha256 "288a1da3cce0adf9cd918012b04d9e8336950fcb7b17eb2a0d95794b346e78e1"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.64", shell_output("#{bin}/cliproxyapi version")
  end
end

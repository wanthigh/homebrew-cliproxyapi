class CliproxyapiAT7252 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.52"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.52/CLIProxyAPI_7.2.52_darwin_amd64.tar.gz"
      sha256 "6ecdf75d20e59ef8054ad818c90967d5c7da4181d70bca26b0baceb63ce2d386"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.52/CLIProxyAPI_7.2.52_darwin_aarch64.tar.gz"
      sha256 "b2f1ffb6759feb2a353792f0bb2d3ba5c9c58146faf9fa99b0896ab4f4c72afc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.52/CLIProxyAPI_7.2.52_linux_amd64.tar.gz"
      sha256 "45f2ddb016d147019d4e0de7d698eb48deee2d859e8ebf8455a670ab20d74e99"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.52/CLIProxyAPI_7.2.52_linux_aarch64.tar.gz"
      sha256 "ba737114d70930835eb27d476dbbd5e2fa67378fc8b2389d4e87c4f2c30832fa"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.52", shell_output("#{bin}/cliproxyapi version")
  end
end

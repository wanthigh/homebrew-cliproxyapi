class CliproxyapiAT7260 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.60"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.60/CLIProxyAPI_7.2.60_darwin_amd64.tar.gz"
      sha256 "11ce21d5de4ac1067120a9a51ecf10ae479ec6b03d2872f5fdf01995ab25d651"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.60/CLIProxyAPI_7.2.60_darwin_aarch64.tar.gz"
      sha256 "bb89c65c6a19410791e2a09378915c0cb50feca704cc83619d2c42ab2e51e3dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.60/CLIProxyAPI_7.2.60_linux_amd64.tar.gz"
      sha256 "91e77099cdd0af5990400b34b5b1e1c6ec1d437fa4b98115b77b5a40e0903c98"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.60/CLIProxyAPI_7.2.60_linux_aarch64.tar.gz"
      sha256 "2e79fea31a1bdcc7f17b8df64c58c3105ff0c3030f026e3bd40ff5a19e47f875"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.60", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT7320 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.3.20"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.20/CLIProxyAPI_7.3.20_darwin_amd64.tar.gz"
      sha256 "be5abee80a51a1d0a7dc6621b8261c03792a38de0ddbefc22003f643329fc0d4"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.20/CLIProxyAPI_7.3.20_darwin_aarch64.tar.gz"
      sha256 "342718b5eba201446899d03f565e8295af74a4136f49abc99237b5caf6d9fdd7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.20/CLIProxyAPI_7.3.20_linux_amd64.tar.gz"
      sha256 "7050c6ecc68b24493c323d3c51d840a9e4509207f124ea34a8428525e27d9354"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.20/CLIProxyAPI_7.3.20_linux_aarch64.tar.gz"
      sha256 "caa1ae89a8364964f317877913efb7f76365fb51f252455ba929b607552f3769"
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
    assert_match "CLIProxyAPI Version: 7.3.20", shell_output("#{bin}/cliproxyapi version")
  end
end

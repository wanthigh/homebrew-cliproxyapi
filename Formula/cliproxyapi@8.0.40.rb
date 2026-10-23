class CliproxyapiAT8040 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.40"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.40/CLIProxyAPI_8.0.40_darwin_amd64.tar.gz"
      sha256 "bc065b6b8bd47f90ccf74cca2baeecb43c773dc0bb921b46ace7243fab0ed2dc"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.40/CLIProxyAPI_8.0.40_darwin_aarch64.tar.gz"
      sha256 "0b4b72f79a1a8d6d37d6c9fe7ee1b0011ebff9a294ed856ec3e7b04b318adc14"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.40/CLIProxyAPI_8.0.40_linux_amd64.tar.gz"
      sha256 "52f67ab57457072ec8c241344106fa2e96c164b716fa24341c76abe764e124ec"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.40/CLIProxyAPI_8.0.40_linux_aarch64.tar.gz"
      sha256 "4a4870217a63c45d3dd07fd12a7f8439b48fdf9f978224a762658e874ac799ad"
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
    assert_match "CLIProxyAPI Version: 8.0.40", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT8071 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.71"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.71/CLIProxyAPI_8.0.71_darwin_amd64.tar.gz"
      sha256 "0f225d9c93e7790bcfac434f49fa9bd091c53c699ff6e373bb41d7192cc04c2a"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.71/CLIProxyAPI_8.0.71_darwin_aarch64.tar.gz"
      sha256 "7e6bb4a0342c96f309cd740471d5d91632b3c92144fa71d7e95a76dd3b4e6f5a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.71/CLIProxyAPI_8.0.71_linux_amd64.tar.gz"
      sha256 "4f97e0b0ca8c1cb9f143d08e7e9708e89b8275b311274ec05f10d78bd3f126b7"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.71/CLIProxyAPI_8.0.71_linux_aarch64.tar.gz"
      sha256 "71e796e0dad314523d07709e4aee970e471bb64ad352c9377c617652fb76f3ce"
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
    assert_match "CLIProxyAPI Version: 8.0.71", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT72142 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.142"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.142/CLIProxyAPI_7.2.142_darwin_amd64.tar.gz"
      sha256 "2c8bf04f3039d77983e100cf4e972bb5f12f57d11cb270ac8561392616f536b1"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.142/CLIProxyAPI_7.2.142_darwin_aarch64.tar.gz"
      sha256 "dcf5786d6c55301ac3bb26dc3bed0fec2a71e568aecee6ce0c3c5aa4d1397bcd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.142/CLIProxyAPI_7.2.142_linux_amd64.tar.gz"
      sha256 "a7cccc8f94b07660303c1874fb6bedae6d573a0f3c4c0b17ad8cf7885dd7a051"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.142/CLIProxyAPI_7.2.142_linux_aarch64.tar.gz"
      sha256 "5ed65ca8f667995fb2d61421f74bf9eb08b7c46357ff5ce899b521728e86af77"
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
    assert_match "CLIProxyAPI Version: 7.2.142", shell_output("#{bin}/cliproxyapi version")
  end
end

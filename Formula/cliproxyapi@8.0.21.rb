class CliproxyapiAT8021 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.21"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.21/CLIProxyAPI_8.0.21_darwin_amd64.tar.gz"
      sha256 "9849ca70e355223771c64572628a40d28891ca49a888066eb49ca8906f5f21b2"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.21/CLIProxyAPI_8.0.21_darwin_aarch64.tar.gz"
      sha256 "bc84caba7c1b670d59c9a7f6dcfb56dee85d66a3eeb4550f4bc98d3c6d55c767"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.21/CLIProxyAPI_8.0.21_linux_amd64.tar.gz"
      sha256 "a40164e25a60869df2c489702383d4e64dc27bb08eaafd7b04a101a2f5cfc625"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.21/CLIProxyAPI_8.0.21_linux_aarch64.tar.gz"
      sha256 "ca84dda4ff16c9b98e534315e05d82665d932c52379530125d3704e00babfb83"
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
    assert_match "CLIProxyAPI Version: 8.0.21", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT805 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.5"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.5/CLIProxyAPI_8.0.5_darwin_amd64.tar.gz"
      sha256 "ffef5319875b1ebb528e509eced356eaaaf608ecf3bbad6c83e96ae2e477cb94"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.5/CLIProxyAPI_8.0.5_darwin_aarch64.tar.gz"
      sha256 "2e5a74816e3c4cb9f0bca820f09d0b7c00948cd3554a82a66bc3c97cd4340d7f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.5/CLIProxyAPI_8.0.5_linux_amd64.tar.gz"
      sha256 "856291020475247963e0129c67bdea1cee800f2ddfc7af7c62dbfde4e95d3ff1"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.5/CLIProxyAPI_8.0.5_linux_aarch64.tar.gz"
      sha256 "4f44fd463248a51b61bdc4a033dbe8a228329d94712eae78dbb397a9d83e6832"
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
    assert_match "CLIProxyAPI Version: 8.0.5", shell_output("#{bin}/cliproxyapi version")
  end
end

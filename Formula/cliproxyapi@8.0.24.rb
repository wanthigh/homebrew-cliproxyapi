class CliproxyapiAT8024 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.24"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.24/CLIProxyAPI_8.0.24_darwin_amd64.tar.gz"
      sha256 "cdf153b94d5b115086e52849cce6baf4f2a7729e52f83ccadca16709aaedf74c"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.24/CLIProxyAPI_8.0.24_darwin_aarch64.tar.gz"
      sha256 "7df3ec9292c13aa21bda7c88185eecf25cf48bb520ffeb8995cbafd9ff91ac2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.24/CLIProxyAPI_8.0.24_linux_amd64.tar.gz"
      sha256 "094a3acffd97e152e2b7c61231404c2e702f2188c5a9acc58a87da0c5dd57db5"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.24/CLIProxyAPI_8.0.24_linux_aarch64.tar.gz"
      sha256 "748e5e738ebef0253c242f98db2878e413405f914622613c17227f485e3afda9"
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
    assert_match "CLIProxyAPI Version: 8.0.24", shell_output("#{bin}/cliproxyapi version")
  end
end

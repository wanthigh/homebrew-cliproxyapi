class CliproxyapiAT8065 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.65"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.65/CLIProxyAPI_8.0.65_darwin_amd64.tar.gz"
      sha256 "f73dc8c4100919791e62c01743566f70ef7452da04e1fabf5d1253024bc4b8a3"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.65/CLIProxyAPI_8.0.65_darwin_aarch64.tar.gz"
      sha256 "63bf7a484c9c71c2f074adfc2c0296ff7d3a31e94b3f6e318b82eed13c373379"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.65/CLIProxyAPI_8.0.65_linux_amd64.tar.gz"
      sha256 "0bb3d3bda1419138142f85e321f5b4776d42b5b9155bff1988cd07129b4e78bf"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.65/CLIProxyAPI_8.0.65_linux_aarch64.tar.gz"
      sha256 "d8aed70f9573455246b55d75a68e3927d4f8e6237b5bf587ae60b4ce4c6f73b3"
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
    assert_match "CLIProxyAPI Version: 8.0.65", shell_output("#{bin}/cliproxyapi version")
  end
end

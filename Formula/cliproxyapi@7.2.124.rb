class CliproxyapiAT72124 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.124"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.124/CLIProxyAPI_7.2.124_darwin_amd64.tar.gz"
      sha256 "6060620dff63c0d9f23f3a9b41785d367852b9515e5aaeb0834bb10bd3bc1188"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.124/CLIProxyAPI_7.2.124_darwin_aarch64.tar.gz"
      sha256 "6c4fc3805c65fe7b43b1a2a5c57d655ddae396efa13091709cf742b82552d3a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.124/CLIProxyAPI_7.2.124_linux_amd64.tar.gz"
      sha256 "bb1597e5faa19bd67f4cecb88e14d6306f7f54bffdeedf2d0b973d7cfb5dc176"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.124/CLIProxyAPI_7.2.124_linux_aarch64.tar.gz"
      sha256 "8b0c1baf2819c2e2abb2b114fe33e5123eabe7d66f2a71f93112bcb6cc07ea23"
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
    assert_match "CLIProxyAPI Version: 7.2.124", shell_output("#{bin}/cliproxyapi version")
  end
end

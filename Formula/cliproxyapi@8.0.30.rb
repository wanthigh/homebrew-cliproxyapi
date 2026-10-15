class CliproxyapiAT8030 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.30"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.30/CLIProxyAPI_8.0.30_darwin_amd64.tar.gz"
      sha256 "e8c616fd609f392444300405c264c2c872edf20db78c8785d91fe4ec5d291b0d"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.30/CLIProxyAPI_8.0.30_darwin_aarch64.tar.gz"
      sha256 "39492d8dbb6d8cb4e6775629f190b4860ee35a559b2095df0068ecc92de4b680"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.30/CLIProxyAPI_8.0.30_linux_amd64.tar.gz"
      sha256 "fd5a4bcb59b1f55b88b48575940fb0e4f920bfd4a9f96a6e9b755fc4c5b6fecc"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.30/CLIProxyAPI_8.0.30_linux_aarch64.tar.gz"
      sha256 "bd5c6e64d3e21c6195aa60a36ce0dfb31de459dad4eefc56d3c516b945ab3a28"
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
    assert_match "CLIProxyAPI Version: 8.0.30", shell_output("#{bin}/cliproxyapi version")
  end
end

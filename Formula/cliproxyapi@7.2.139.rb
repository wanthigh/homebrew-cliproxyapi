class CliproxyapiAT72139 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.139"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.139/CLIProxyAPI_7.2.139_darwin_amd64.tar.gz"
      sha256 "b945681c43a082f44fb2febad3da93eeba986968a6b4f3ce428185fa60038dd5"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.139/CLIProxyAPI_7.2.139_darwin_aarch64.tar.gz"
      sha256 "3f584ab1d79dc5f5f91247a1a07821778a0cfc571e1843091fb0b1dd2f8b2e7d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.139/CLIProxyAPI_7.2.139_linux_amd64.tar.gz"
      sha256 "1c833a1efe81a9fe0d317571da6ae3b43d0f17184a5c9f519b7726ac2fe81724"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.139/CLIProxyAPI_7.2.139_linux_aarch64.tar.gz"
      sha256 "595a873d8e835b7327feb3cee4c1075255a07a8d17bffd5cf2f366d7a0008884"
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
    assert_match "CLIProxyAPI Version: 7.2.139", shell_output("#{bin}/cliproxyapi version")
  end
end

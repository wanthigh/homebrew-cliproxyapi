class CliproxyapiAT72143 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.143"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.143/CLIProxyAPI_7.2.143_darwin_amd64.tar.gz"
      sha256 "c89943201a03cd763119887e203e3854da92215f349d24c30f595379b0a5fd92"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.143/CLIProxyAPI_7.2.143_darwin_aarch64.tar.gz"
      sha256 "ee3c7c0ddab05d6f348dbcce92bc2b1f6dfada76aa4abf40d12254edd3fd5e6e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.143/CLIProxyAPI_7.2.143_linux_amd64.tar.gz"
      sha256 "9154f460a5684ae82d74f3643d7b3f9c8961659d33058458c9edc044f5f761ba"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.143/CLIProxyAPI_7.2.143_linux_aarch64.tar.gz"
      sha256 "2a010669a6567c610fd2a099de3b26127bc75151c32210e054102acd06a8207f"
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
    assert_match "CLIProxyAPI Version: 7.2.143", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT8059 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.59"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.59/CLIProxyAPI_8.0.59_darwin_amd64.tar.gz"
      sha256 "4d6f88603ec49890a9f90e50e87c99edeca76ec04ae273183966e1f9b4950922"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.59/CLIProxyAPI_8.0.59_darwin_aarch64.tar.gz"
      sha256 "70adbaf210d8e576c481a937823acc7dcbf7a1e37b895f070c0bb81c8231ff38"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.59/CLIProxyAPI_8.0.59_linux_amd64.tar.gz"
      sha256 "5427e41344a8d57519156ae12b01654c2aef36ced39f493e327362e15627e34c"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.59/CLIProxyAPI_8.0.59_linux_aarch64.tar.gz"
      sha256 "9cc54a52f2319a9aab4b902117fcd4cfd59cbb8748d8587327006f4c8c19efdc"
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
    assert_match "CLIProxyAPI Version: 8.0.59", shell_output("#{bin}/cliproxyapi version")
  end
end

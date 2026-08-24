class CliproxyapiAT72141 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.141"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.141/CLIProxyAPI_7.2.141_darwin_amd64.tar.gz"
      sha256 "fa88dbabf5000e04095ce7b2c1a7babbc579a58755c6ef3b94e6013c1daae50a"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.141/CLIProxyAPI_7.2.141_darwin_aarch64.tar.gz"
      sha256 "728fb56a1a45dc3590ddb94ada247393ee2d464b089170562482cf584fa27bc2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.141/CLIProxyAPI_7.2.141_linux_amd64.tar.gz"
      sha256 "a70015ee303502e24be64061dd0d5985b2b4600f0605a076b993322d3b7effb3"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.141/CLIProxyAPI_7.2.141_linux_aarch64.tar.gz"
      sha256 "2881c0a6bcbc412c4bbdb2799ffbf1b4bcdd927475e1e42f621b68eae314ef3f"
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
    assert_match "CLIProxyAPI Version: 7.2.141", shell_output("#{bin}/cliproxyapi version")
  end
end

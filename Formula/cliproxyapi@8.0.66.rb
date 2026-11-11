class CliproxyapiAT8066 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.66"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.66/CLIProxyAPI_8.0.66_darwin_amd64.tar.gz"
      sha256 "76fcabc801e9de05849cd1029d435069911260da477a978aff4aa1fd33a185b9"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.66/CLIProxyAPI_8.0.66_darwin_aarch64.tar.gz"
      sha256 "638d25401ca319c919b1453530753c0d4812173646035b37fb8b0ccf2d04f7be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.66/CLIProxyAPI_8.0.66_linux_amd64.tar.gz"
      sha256 "553056f62ca45891381a0bf16ae0cca14ba0ff6da278fd800f317452f19e789d"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.66/CLIProxyAPI_8.0.66_linux_aarch64.tar.gz"
      sha256 "edb08c0df7065829a716e4903e439f03171bd05f43ebc6032043de265edadfbe"
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
    assert_match "CLIProxyAPI Version: 8.0.66", shell_output("#{bin}/cliproxyapi version")
  end
end

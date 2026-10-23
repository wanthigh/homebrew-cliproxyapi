class CliproxyapiAT8041 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.41"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.41/CLIProxyAPI_8.0.41_darwin_amd64.tar.gz"
      sha256 "82c791b7f67680b7bf14a3336fef1d13a48b7ff55fe67ff79cfa36f013eabfde"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.41/CLIProxyAPI_8.0.41_darwin_aarch64.tar.gz"
      sha256 "aa6f88d7e27bacea8250802bf44b22c2e33ecb6e2a8f2c7d94f0b383ba6958bc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.41/CLIProxyAPI_8.0.41_linux_amd64.tar.gz"
      sha256 "99b9ca69753b2fa16290edecae4d19011299ecd7bfbad17a411b5470288d8b4a"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.41/CLIProxyAPI_8.0.41_linux_aarch64.tar.gz"
      sha256 "5121a57c64627cb76cb19853b5e88cc0f056b66adf31d1128dbea2ac60817bb7"
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
    assert_match "CLIProxyAPI Version: 8.0.41", shell_output("#{bin}/cliproxyapi version")
  end
end

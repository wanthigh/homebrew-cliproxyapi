class CliproxyapiAT8031 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.31"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.31/CLIProxyAPI_8.0.31_darwin_amd64.tar.gz"
      sha256 "4a3b17a82856260c67ef2c246538075e41e553591b21a7681314d309ceed8922"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.31/CLIProxyAPI_8.0.31_darwin_aarch64.tar.gz"
      sha256 "36e193a737c4821aa122cf35c293c13f2b16c10d56d4ac4b19ced197fab19a79"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.31/CLIProxyAPI_8.0.31_linux_amd64.tar.gz"
      sha256 "c00a2df9a75513ea23feec4e4b0c4d3ee76a15cd14e80b896e000586914b69b9"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.31/CLIProxyAPI_8.0.31_linux_aarch64.tar.gz"
      sha256 "3a535ddb2000e5cdc7b25e0765f1538d68708faec4272cf98327c11d2af2ad14"
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
    assert_match "CLIProxyAPI Version: 8.0.31", shell_output("#{bin}/cliproxyapi version")
  end
end

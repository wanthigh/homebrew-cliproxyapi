class CliproxyapiAT806 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.6"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.6/CLIProxyAPI_8.0.6_darwin_amd64.tar.gz"
      sha256 "2f1ba29d0490f9f29faf476935ea281d639f6f517e3f5e22d18d4a1e64e44103"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.6/CLIProxyAPI_8.0.6_darwin_aarch64.tar.gz"
      sha256 "e19f734cd00759951eda8b0db21301a7842923b03a10f8fa883c19c276e41693"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.6/CLIProxyAPI_8.0.6_linux_amd64.tar.gz"
      sha256 "44340463b373e3647ba091c447b2e6c1552f88a081f272c9345af90bec0b9f1d"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.6/CLIProxyAPI_8.0.6_linux_aarch64.tar.gz"
      sha256 "81faccb052615be3e136d04ba7ffab4bf8dfaac5a89df214d3f279a44e319e0b"
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
    assert_match "CLIProxyAPI Version: 8.0.6", shell_output("#{bin}/cliproxyapi version")
  end
end

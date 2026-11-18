class CliproxyapiAT8077 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.77"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.77/CLIProxyAPI_8.0.77_darwin_amd64.tar.gz"
      sha256 "cd07b96d300d9cceb0899b2a2f5471240249770f3f8f171a90445ceb3de27d6d"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.77/CLIProxyAPI_8.0.77_darwin_aarch64.tar.gz"
      sha256 "2e1f8fbf5c96e333a3f3067650c420315a220ae23465db8b3fcbc1893be40b38"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.77/CLIProxyAPI_8.0.77_linux_amd64.tar.gz"
      sha256 "1a7ea3f968c414ed9839facfdb1c0efe34cf3038b75b2e118db143d04de1aeb3"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.77/CLIProxyAPI_8.0.77_linux_aarch64.tar.gz"
      sha256 "850a4cfb9400c7df9e04853cd0faf9be1342764dd05bb1e2617a365eb55ba62d"
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
    assert_match "CLIProxyAPI Version: 8.0.77", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT7312 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.3.12"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.12/CLIProxyAPI_7.3.12_darwin_amd64.tar.gz"
      sha256 "72c3403ad94d708c4aec48be2f34bdef2c230824440111f156076efd75b1f550"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.12/CLIProxyAPI_7.3.12_darwin_aarch64.tar.gz"
      sha256 "c20618ed6e4c76e6a73ed7dafa0d5f9569f0b6c20213fd450b3569bffde20114"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.12/CLIProxyAPI_7.3.12_linux_amd64.tar.gz"
      sha256 "eb73eb43ef82dea0ffc7b433fc3b6f994cd0b3f35d3b59ee85870827e2fc3cec"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.12/CLIProxyAPI_7.3.12_linux_aarch64.tar.gz"
      sha256 "c3c2b2398222fcaa1f20e2bb09ef8c17bab708cef3a0d948e477e153517eee7a"
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
    assert_match "CLIProxyAPI Version: 7.3.12", shell_output("#{bin}/cliproxyapi version")
  end
end

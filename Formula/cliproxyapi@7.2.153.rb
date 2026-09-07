class CliproxyapiAT72153 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.153"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.153/CLIProxyAPI_7.2.153_darwin_amd64.tar.gz"
      sha256 "5597ace11bb2cf8a16f9abdd3a46a54286a77a4534bf7170061018aacf8c9edb"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.153/CLIProxyAPI_7.2.153_darwin_aarch64.tar.gz"
      sha256 "07404ff14ae8c6d5ba5d0e4e92d5175ae789327bbf6b649119946c05d794a42f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.153/CLIProxyAPI_7.2.153_linux_amd64.tar.gz"
      sha256 "2b847a3c97c28bd5957e0d54ae0186cb8ae8e09868c9a725c97c3dfea303f3c2"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.153/CLIProxyAPI_7.2.153_linux_aarch64.tar.gz"
      sha256 "c17c28405a32fcf23af1aea62a3641e1e7c34eaa7d93cdcddb8ec69f82ee0880"
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
    assert_match "CLIProxyAPI Version: 7.2.153", shell_output("#{bin}/cliproxyapi version")
  end
end

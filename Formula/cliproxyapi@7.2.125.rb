class CliproxyapiAT72125 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.125"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.125/CLIProxyAPI_7.2.125_darwin_amd64.tar.gz"
      sha256 "6f15d46806a1cb3d882ec013f3e84d26070be48c20f02a6f570772c952ae77fd"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.125/CLIProxyAPI_7.2.125_darwin_aarch64.tar.gz"
      sha256 "885c313868e3b3414f31937c6506d46d0af9ad2870202f4ef45893dcdfa441aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.125/CLIProxyAPI_7.2.125_linux_amd64.tar.gz"
      sha256 "4e940b7dc5bdf867b5c58ca30f1b368fae6dc2e041e8a351d5c2c07f3f610233"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.125/CLIProxyAPI_7.2.125_linux_aarch64.tar.gz"
      sha256 "758bee4775442d3887eb9ef0553cd0ea22bc248e7043dd23b8a5a05581e04cc7"
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
    assert_match "CLIProxyAPI Version: 7.2.125", shell_output("#{bin}/cliproxyapi version")
  end
end

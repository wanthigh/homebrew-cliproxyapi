class CliproxyapiAT8053 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.53"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.53/CLIProxyAPI_8.0.53_darwin_amd64.tar.gz"
      sha256 "7105389234f1b2cb7c045a52b3c2d3eced83fed8de1228567759817a0c8c6b2d"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.53/CLIProxyAPI_8.0.53_darwin_aarch64.tar.gz"
      sha256 "24a9116a9be459e9d1df5a9792eca17f04c0bb8505584d40c5b255565d07186f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.53/CLIProxyAPI_8.0.53_linux_amd64.tar.gz"
      sha256 "96bdc1ec195adc23baae6eb0413a9dce2fdccf03c0d3fd290e91aa8812e2a70d"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.53/CLIProxyAPI_8.0.53_linux_aarch64.tar.gz"
      sha256 "b68ecfef89a0ce576332742ae5435353fb64dc28d93f9d1ca93d50385a942989"
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
    assert_match "CLIProxyAPI Version: 8.0.53", shell_output("#{bin}/cliproxyapi version")
  end
end

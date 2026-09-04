class CliproxyapiAT72150 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.150"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.150/CLIProxyAPI_7.2.150_darwin_amd64.tar.gz"
      sha256 "685b64812d7e081a2e577199a786b7a85056817b231a8a7231bfa23b85e3ffa0"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.150/CLIProxyAPI_7.2.150_darwin_aarch64.tar.gz"
      sha256 "54c59f12e0d78bb8ccc3cffe7cb852d9766b83346c3e23c81d77b2d2fc11c050"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.150/CLIProxyAPI_7.2.150_linux_amd64.tar.gz"
      sha256 "f694fbbff74b82ef58d48efa89974ed106bbd6c8f55fd8049e1c7a07b797c336"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.150/CLIProxyAPI_7.2.150_linux_aarch64.tar.gz"
      sha256 "f71f6d5cd8b0d9266221918f052a10c1ab3cce589de2da6c2e03c925f4ae45f1"
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
    assert_match "CLIProxyAPI Version: 7.2.150", shell_output("#{bin}/cliproxyapi version")
  end
end

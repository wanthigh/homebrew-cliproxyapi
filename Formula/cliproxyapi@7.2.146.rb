class CliproxyapiAT72146 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.146"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.146/CLIProxyAPI_7.2.146_darwin_amd64.tar.gz"
      sha256 "1985f14f3a7caa40c4f7e6959c7c993db0b735317a1e690365d4c08d631849db"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.146/CLIProxyAPI_7.2.146_darwin_aarch64.tar.gz"
      sha256 "faf4c735b289cb88344f87fd6d745cf9a11d28a231d000173d8045910503b543"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.146/CLIProxyAPI_7.2.146_linux_amd64.tar.gz"
      sha256 "43e112686b4a5b7b818531144cd695eeaacdd54c46dced87be6fb3967c22e149"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.146/CLIProxyAPI_7.2.146_linux_aarch64.tar.gz"
      sha256 "086ae6513aa522bbd1000f4e83e5b5223df6038bd69f1c6cad56619b84c06947"
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
    assert_match "CLIProxyAPI Version: 7.2.146", shell_output("#{bin}/cliproxyapi version")
  end
end

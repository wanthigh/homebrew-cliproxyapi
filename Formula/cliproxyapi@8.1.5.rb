class CliproxyapiAT815 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.1.5"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.5/CLIProxyAPI_8.1.5_darwin_amd64.tar.gz"
      sha256 "d75a9fa7e35cb55c181606ab2e31f54bc14864e749f5b3ae6adeccd051413423"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.5/CLIProxyAPI_8.1.5_darwin_aarch64.tar.gz"
      sha256 "ad76b292a6af7fdda23664e9b3a68dea112a57cdbfcbb85589e6a827d4af0670"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.5/CLIProxyAPI_8.1.5_linux_amd64.tar.gz"
      sha256 "47d9dbfc407a924fc225f5a6e60640ad809a92454fe69c37166a42b40e41bf00"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.5/CLIProxyAPI_8.1.5_linux_aarch64.tar.gz"
      sha256 "04dea9e790b5b496649f0e42935605e651f227869afe3f31d08a4c5a731c0b10"
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
    assert_match "CLIProxyAPI Version: 8.1.5", shell_output("#{bin}/cliproxyapi version")
  end
end

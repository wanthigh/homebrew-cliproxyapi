class CliproxyapiAT813 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.1.3"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.3/CLIProxyAPI_8.1.3_darwin_amd64.tar.gz"
      sha256 "5f4096e5f1b8a36588e17f5460902e9093c4caea955f045d6256ec7b8553ccf0"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.3/CLIProxyAPI_8.1.3_darwin_aarch64.tar.gz"
      sha256 "c6eee7e616e3942e4ee279c93fbe7f989a337f91ac5b00665174244ae8b5726f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.3/CLIProxyAPI_8.1.3_linux_amd64.tar.gz"
      sha256 "f9c6651318d833a6c84d8b260554872fdee04ab78cfa8e16e270bc4ba7e7947e"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.3/CLIProxyAPI_8.1.3_linux_aarch64.tar.gz"
      sha256 "ea767472aaa8eedf0415a62942a55ea3f65f04f666b479b1e293effb4832df31"
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
    assert_match "CLIProxyAPI Version: 8.1.3", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT72157 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.157"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.157/CLIProxyAPI_7.2.157_darwin_amd64.tar.gz"
      sha256 "7143c5b3011039f01ca2ec4a4872300a1d1a4d2a11bdd34e3b872b6f1451a1b2"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.157/CLIProxyAPI_7.2.157_darwin_aarch64.tar.gz"
      sha256 "f8adffd1b9d6aaa69df5f99a2a32f61f86835872fee709f52af6c58072d7936c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.157/CLIProxyAPI_7.2.157_linux_amd64.tar.gz"
      sha256 "e0df9f570b6e910a14f081425cee2527a503311f617d7727cd428009fab14c77"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.157/CLIProxyAPI_7.2.157_linux_aarch64.tar.gz"
      sha256 "3b8d92ae85ef4d35b9b33ccb42d570d2971990e8bb07bd9d0735af42adcccd53"
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
    assert_match "CLIProxyAPI Version: 7.2.157", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT72115 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.115"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.115/CLIProxyAPI_7.2.115_darwin_amd64.tar.gz"
      sha256 "d910f739c74e1a3b177f05f9f8fd8109e8e2ec0928685e90918cc9bf502afdc2"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.115/CLIProxyAPI_7.2.115_darwin_aarch64.tar.gz"
      sha256 "d7ef57179e505714025556924b503a6af876367d1998752a16585f49d0604ce5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.115/CLIProxyAPI_7.2.115_linux_amd64.tar.gz"
      sha256 "df4da00e3d3c4ac4a12035736f4576e7cbeae509e0a6a53dd019ef2f12fb1058"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.115/CLIProxyAPI_7.2.115_linux_aarch64.tar.gz"
      sha256 "43947ea16c00b845c42c33c9cc1a63650b1f7127a62a201320e4fe5ab93eb6ae"
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
    assert_match "CLIProxyAPI Version: 7.2.115", shell_output("#{bin}/cliproxyapi version")
  end
end

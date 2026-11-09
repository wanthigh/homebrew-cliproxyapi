class CliproxyapiAT8062 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.62"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.62/CLIProxyAPI_8.0.62_darwin_amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.62/CLIProxyAPI_8.0.62_darwin_aarch64.tar.gz"
      sha256 "915ef2ef5100cac9501ef9906a1c6fc1468e58f5e888d3fea6c32ba3c31b73f8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.62/CLIProxyAPI_8.0.62_linux_amd64.tar.gz"
      sha256 "5d45006020bb292960778c62c993cadeca0ab8528d1f2ca226b14668ab32c060"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.62/CLIProxyAPI_8.0.62_linux_aarch64.tar.gz"
      sha256 "23ed031ada553aeb04f51c1e7b19a3b1002d8b5667ae869ce391b359eb821fe6"
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
    assert_match "CLIProxyAPI Version: 8.0.62", shell_output("#{bin}/cliproxyapi version")
  end
end

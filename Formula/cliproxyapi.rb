class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.45"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.45/CLIProxyAPI_8.0.45_darwin_amd64.tar.gz"
      sha256 "efa1a2a571fe83b87eb30ee8dff538062ac517a81a04dc0d32ca160bb4fa2e5a"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.45/CLIProxyAPI_8.0.45_darwin_aarch64.tar.gz"
      sha256 "30a9cacbeada0a80ad1f40c2c25015244b7f4fbca8c3cc42af3c4e6ff5d2fbac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.45/CLIProxyAPI_8.0.45_linux_amd64.tar.gz"
      sha256 "e9e3a33a489d8a94ea9bd4b8eb4bb9286a978c3df11dc4c49f5ef393ef0fdc68"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.45/CLIProxyAPI_8.0.45_linux_aarch64.tar.gz"
      sha256 "8a7582e98501f414fee1ab691d44fb56ce59db01f21cbd521a414cb358b66394"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  def post_install
    (etc/"cliproxyapi.conf.default").write <<~EOS
      # CLIProxyAPI Configuration File
      # Edit this file to configure cliproxyapi
    EOS
  end

  service do
    run [opt_bin/"cliproxyapi", "-config", etc/"cliproxyapi.conf"]
    keep_alive true
  end

  test do
    assert_match "CLIProxyAPI Version: 8.0.45", shell_output("#{bin}/cliproxyapi version")
  end
end

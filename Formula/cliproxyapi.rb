class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.48"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.48/CLIProxyAPI_8.0.48_darwin_amd64.tar.gz"
      sha256 "97f662d40bc3da1bd6bb0f9188ba803d11e0cb29dfc037376bb655bf3f437781"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.48/CLIProxyAPI_8.0.48_darwin_aarch64.tar.gz"
      sha256 "543bdbc6f8384fecd033bf7398236e46279962a80dbc909cf8d8e6ee94ccfc04"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.48/CLIProxyAPI_8.0.48_linux_amd64.tar.gz"
      sha256 "095c46e7165842cf563f9665be86cf24a29ba94e57ab9bd67588fe5cc4c7125c"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.48/CLIProxyAPI_8.0.48_linux_aarch64.tar.gz"
      sha256 "9ed7c06aa96d9cc6736ddfc897de07b8b6085731785087f6701f07ec9ec198dd"
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
    assert_match "CLIProxyAPI Version: 8.0.48", shell_output("#{bin}/cliproxyapi version")
  end
end

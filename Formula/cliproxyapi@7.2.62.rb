class CliproxyapiAT7262 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.62"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.62/CLIProxyAPI_7.2.62_darwin_amd64.tar.gz"
      sha256 "bcad94fcea21a5ec281746684dab5413dc653333355f6d6fc348aaf397501299"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.62/CLIProxyAPI_7.2.62_darwin_aarch64.tar.gz"
      sha256 "adf989ef73de901b056a499878a5c06e5fabf1f25209b3206cc0278fd4986844"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.62/CLIProxyAPI_7.2.62_linux_amd64.tar.gz"
      sha256 "76182684c7e41d0e96b64ee0e0913847d08a74929cae409d4aac1cc238dd9cba"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.62/CLIProxyAPI_7.2.62_linux_aarch64.tar.gz"
      sha256 "17e36b90d7123f28098945ceb02c0267fdb27d995111f12f73938025c8878409"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.62", shell_output("#{bin}/cliproxyapi version")
  end
end

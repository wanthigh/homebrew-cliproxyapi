class CliproxyapiAT72109 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.109"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.109/CLIProxyAPI_7.2.109_darwin_amd64.tar.gz"
      sha256 "f7876a6d48d23cd3327dacbe7837d8d1319580b2d847186a0d56f73535d4924f"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.109/CLIProxyAPI_7.2.109_darwin_aarch64.tar.gz"
      sha256 "315a4d74ebafcb12ccb8a1fa65c66e9600c7e9a5554f04dcf859682ae3ce2d36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.109/CLIProxyAPI_7.2.109_linux_amd64.tar.gz"
      sha256 "ab4517f88c51ae384594dd6ec07e02e78af74e78fc1a6bdbf5702f939ad1db41"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.109/CLIProxyAPI_7.2.109_linux_aarch64.tar.gz"
      sha256 "fb4ae379df125e50dbaf7deda591c94b3e0c4b96ace584e8a10f1a9452551126"
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
    assert_match "CLIProxyAPI Version: 7.2.109", shell_output("#{bin}/cliproxyapi version")
  end
end

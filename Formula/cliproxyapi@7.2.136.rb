class CliproxyapiAT72136 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.136"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.136/CLIProxyAPI_7.2.136_darwin_amd64.tar.gz"
      sha256 "e972fc4953599a3e5740e77f28466cb8cf4b7155c25dc296f03b46b56f47825f"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.136/CLIProxyAPI_7.2.136_darwin_aarch64.tar.gz"
      sha256 "8d992db2593f67586635c158b90dcdd1c58fd38810dcebf9aa2bddd830007dd2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.136/CLIProxyAPI_7.2.136_linux_amd64.tar.gz"
      sha256 "8f9160982bc2f26142f7b76a73fcc50f954c453470d5a6aefa81324ad18da288"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.136/CLIProxyAPI_7.2.136_linux_aarch64.tar.gz"
      sha256 "e8be607caaf7c76fd81cdc483afe35462cf4f6e209e5b6f41bd0c7702e8a4b10"
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
    assert_match "CLIProxyAPI Version: 7.2.136", shell_output("#{bin}/cliproxyapi version")
  end
end

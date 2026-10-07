class CliproxyapiAT8017 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.17"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.17/CLIProxyAPI_8.0.17_darwin_amd64.tar.gz"
      sha256 "540148a4f01ee297dcb5c6c99df8dc9be68c011ead4ff0751dc8c41b5485ad80"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.17/CLIProxyAPI_8.0.17_darwin_aarch64.tar.gz"
      sha256 "d4952068c413060e3a8c082cc616fee707c701a01bebec59c45903bce402be9d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.17/CLIProxyAPI_8.0.17_linux_amd64.tar.gz"
      sha256 "b121a58ee643a7a76b1bf3f757bef75a99660d17fe5afe089bf8a5c1afcd90d3"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.17/CLIProxyAPI_8.0.17_linux_aarch64.tar.gz"
      sha256 "b90e3ad0868cc45624dd0a259a1ebcc23ea7c7ba87426656bafeb4bd738dd7f4"
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
    assert_match "CLIProxyAPI Version: 8.0.17", shell_output("#{bin}/cliproxyapi version")
  end
end

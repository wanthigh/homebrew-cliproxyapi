class CliproxyapiAT8020 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.20"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.20/CLIProxyAPI_8.0.20_darwin_amd64.tar.gz"
      sha256 "0e6e83bc1132e0425ce8db18fe13b3ab7278b8eb2ef50c6164aaafc444a805ab"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.20/CLIProxyAPI_8.0.20_darwin_aarch64.tar.gz"
      sha256 "abb68051528506076561298ae3c4f3797c360f1d37127c2e459afdecce454df0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.20/CLIProxyAPI_8.0.20_linux_amd64.tar.gz"
      sha256 "b87c7c76218eb7bb40ebc2d578a7d690fb0bc9928af427b9a18dacd7341475a8"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.20/CLIProxyAPI_8.0.20_linux_aarch64.tar.gz"
      sha256 "8f58d0b052815d6752ecf801ef92ee7c83c82c3cd338fb0d909a8410f59a937f"
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
    assert_match "CLIProxyAPI Version: 8.0.20", shell_output("#{bin}/cliproxyapi version")
  end
end

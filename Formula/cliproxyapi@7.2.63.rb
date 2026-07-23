class CliproxyapiAT7263 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.63"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.63/CLIProxyAPI_7.2.63_darwin_amd64.tar.gz"
      sha256 "aadb2fe587c683b45c3116c001b52cb8d20dff38491577b12f548a74d4fa1fb3"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.63/CLIProxyAPI_7.2.63_darwin_aarch64.tar.gz"
      sha256 "d7804a534b37ec9f01b58cfb4dd2dc5544449dcdc4a2329da6d5313022965c5d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.63/CLIProxyAPI_7.2.63_linux_amd64.tar.gz"
      sha256 "d0fd945f67402f66ad6745bed2dbf93a65a5fe9399dffbbf3837e79f34c4ff6d"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.63/CLIProxyAPI_7.2.63_linux_aarch64.tar.gz"
      sha256 "aa8ec02bd93aa239ed29c4c17729b0e5f361e6361e33c58be6b3a01efeba9457"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.63", shell_output("#{bin}/cliproxyapi version")
  end
end

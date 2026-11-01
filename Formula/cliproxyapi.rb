class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.50"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.50/CLIProxyAPI_8.0.50_darwin_amd64.tar.gz"
      sha256 "a1e1e44fa601ca112607f5109d5c50abf1eaa4d055c0fb5df9a3be1c914ceb19"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.50/CLIProxyAPI_8.0.50_darwin_aarch64.tar.gz"
      sha256 "01fdd3332f13709b2bbc42ea8a9ec4b70897f2b84c4008e83ab71f626b9fcabc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.50/CLIProxyAPI_8.0.50_linux_amd64.tar.gz"
      sha256 "f0228e8a58631b13990ba09003231e40a2410039031712062d58b5fc871f071b"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.50/CLIProxyAPI_8.0.50_linux_aarch64.tar.gz"
      sha256 "a15e57dc9e8ededbeb4cc59e4ad3a31891cc206fc2b7450fc9cfb340f4e29d24"
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
    assert_match "CLIProxyAPI Version: 8.0.50", shell_output("#{bin}/cliproxyapi version")
  end
end

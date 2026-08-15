class CliproxyapiAT72133 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.133"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.133/CLIProxyAPI_7.2.133_darwin_amd64.tar.gz"
      sha256 "72a7823424fc22435a7280215cb73727cfc8bee6cacc9a02b2665ba4ffe58416"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.133/CLIProxyAPI_7.2.133_darwin_aarch64.tar.gz"
      sha256 "b538164f05fcf7ad0a11526e5d194b556366208e0a7ecaa74f9cd128a99905c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.133/CLIProxyAPI_7.2.133_linux_amd64.tar.gz"
      sha256 "18905ab269a7bcf7f8b89afa58ae5e289f16aac82aa9bd94ca7527990fb06e4a"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.133/CLIProxyAPI_7.2.133_linux_aarch64.tar.gz"
      sha256 "c12cc0ed7bb431522d6bad0a25e6b7da48e62af5a7b20c84fdaae2a099587ea8"
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
    assert_match "CLIProxyAPI Version: 7.2.133", shell_output("#{bin}/cliproxyapi version")
  end
end

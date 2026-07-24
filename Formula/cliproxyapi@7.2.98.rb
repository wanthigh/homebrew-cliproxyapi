class CliproxyapiAT7298 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.98"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.98/CLIProxyAPI_7.2.98_darwin_amd64.tar.gz"
      sha256 "0b260e66d441371f2d025cbef02aa678712b8f1d4251c480da7cca56afacf052"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.98/CLIProxyAPI_7.2.98_darwin_aarch64.tar.gz"
      sha256 "f64f14665227f08bec395bb3cc37fe75b562f58ebf8080d7ed74b6d182f5ce60"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.98/CLIProxyAPI_7.2.98_linux_amd64.tar.gz"
      sha256 "b73e240f8e4bb5a53414780ca3d1de3af96f1669a824a8816679d1ab2b5d0de0"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.98/CLIProxyAPI_7.2.98_linux_aarch64.tar.gz"
      sha256 "eb7ba1d542efad3f893e1ac6235c1d0a08264a594bf6a149389949191152b965"
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
    assert_match "CLIProxyAPI Version: 7.2.98", shell_output("#{bin}/cliproxyapi version")
  end
end

class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.28"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.28/CLIProxyAPI_8.0.28_darwin_amd64.tar.gz"
      sha256 "619e6892b56832d964d989e5be4a23e2277b22e39c160de7ba3ca60d66b2c5fd"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.28/CLIProxyAPI_8.0.28_darwin_aarch64.tar.gz"
      sha256 "b70932382334e5388dc25265078cbcdf2e951b3b5fa7cd23d8ab3efb0a9fceef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.28/CLIProxyAPI_8.0.28_linux_amd64.tar.gz"
      sha256 "1644171946913c858842081053abb6f67234bb41ce2691602bf834361293c17f"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.28/CLIProxyAPI_8.0.28_linux_aarch64.tar.gz"
      sha256 "b1956286131e7295d5d0347dc1caff96d2135813b2af0fdb82c3b00119abfa3a"
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
    assert_match "CLIProxyAPI Version: 8.0.28", shell_output("#{bin}/cliproxyapi version")
  end
end

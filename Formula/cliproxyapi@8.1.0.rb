class CliproxyapiAT810 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.1.0"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.0/CLIProxyAPI_8.1.0_darwin_amd64.tar.gz"
      sha256 "53534ef90ae261cf4daa518164a743174ed7eb752a7d2a79bfb35a175241c126"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.0/CLIProxyAPI_8.1.0_darwin_aarch64.tar.gz"
      sha256 "b8c45266738972bdb109f3484a3b8e8af9d70c5fa72abe08c832a65b1d9c6421"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.0/CLIProxyAPI_8.1.0_linux_amd64.tar.gz"
      sha256 "09492d9a338eb2d84b5e86f5456af0ff1fa951ad266c3df78e7db571e8ec41b1"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.0/CLIProxyAPI_8.1.0_linux_aarch64.tar.gz"
      sha256 "614b264d97eb0ca8e7ad39ba327847191aa0c43a2537042ffad5af66687e77a7"
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
    assert_match "CLIProxyAPI Version: 8.1.0", shell_output("#{bin}/cliproxyapi version")
  end
end

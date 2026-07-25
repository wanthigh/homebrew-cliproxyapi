class CliproxyapiAT72100 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.100"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.100/CLIProxyAPI_7.2.100_darwin_amd64.tar.gz"
      sha256 "5d615bbf70ad7931c20168312b4f5cbd330ddeb6fef913bc61311741a89125e9"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.100/CLIProxyAPI_7.2.100_darwin_aarch64.tar.gz"
      sha256 "d36f84fa62c35d80c6ac8d68ca81c9cd317ab62764f5356c2266db71678897e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.100/CLIProxyAPI_7.2.100_linux_amd64.tar.gz"
      sha256 "8b6a6b62300a704ee246aea8e51793296952e2b195e7fb2d7437892673f9a3d6"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.100/CLIProxyAPI_7.2.100_linux_aarch64.tar.gz"
      sha256 "74c2a72a8ac888fbf05d99da5f6a0305dbb6e651510f9d0805a8794c2a0d5ede"
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
    assert_match "CLIProxyAPI Version: 7.2.100", shell_output("#{bin}/cliproxyapi version")
  end
end

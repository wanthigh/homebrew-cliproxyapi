class CliproxyapiAT8072 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.72"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.72/CLIProxyAPI_8.0.72_darwin_amd64.tar.gz"
      sha256 "27591f4c829cd3a2ce9daed541328103f6439841d25aefca82207d79126a90af"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.72/CLIProxyAPI_8.0.72_darwin_aarch64.tar.gz"
      sha256 "ae008afd4ad52603f220200afc6417102591ba0a847d128cb65e904f86ac7918"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.72/CLIProxyAPI_8.0.72_linux_amd64.tar.gz"
      sha256 "ce8e57a10e081c1deff48e214ca1932b0c2df51ab35d3628f6a1638c4be90ff7"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.72/CLIProxyAPI_8.0.72_linux_aarch64.tar.gz"
      sha256 "51a001340f5bea352f935f97f5d2477a06a8349a4fa396d6f6923cef25573b5f"
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
    assert_match "CLIProxyAPI Version: 8.0.72", shell_output("#{bin}/cliproxyapi version")
  end
end

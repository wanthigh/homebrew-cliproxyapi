class CliproxyapiAT72152 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.152"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.152/CLIProxyAPI_7.2.152_darwin_amd64.tar.gz"
      sha256 "cb8545345a4986937f6321c687c8bf36e4f2f483664cab74074dd176fa6c01d2"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.152/CLIProxyAPI_7.2.152_darwin_aarch64.tar.gz"
      sha256 "37c3f48b2cd78f3fa1a26e4e0966617d00efad4bbea16599c6a00640b49f8af1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.152/CLIProxyAPI_7.2.152_linux_amd64.tar.gz"
      sha256 "0168181ea302c00d1ccae636eba70072d1ab88b271669ede796d3ed65d54bd8d"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.152/CLIProxyAPI_7.2.152_linux_aarch64.tar.gz"
      sha256 "4ac6b5859cf001300b3aa063f49466d4fee80255f2cf14c6eab549874d88f57b"
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
    assert_match "CLIProxyAPI Version: 7.2.152", shell_output("#{bin}/cliproxyapi version")
  end
end

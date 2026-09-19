class CliproxyapiAT739 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.3.9"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.9/CLIProxyAPI_7.3.9_darwin_amd64.tar.gz"
      sha256 "1a956eeb722faed88655887cdb57d73e3477af4fc18e54be259d962aa8e342ee"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.9/CLIProxyAPI_7.3.9_darwin_aarch64.tar.gz"
      sha256 "d174fe1612c5ce3d09f2f78c972ca016c5fb1c1222d0c5084dc9359619011656"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.9/CLIProxyAPI_7.3.9_linux_amd64.tar.gz"
      sha256 "fd45e915d84e40fc09cefaae6b271a59d542bf284fd3dfee38abe5472412427b"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.9/CLIProxyAPI_7.3.9_linux_aarch64.tar.gz"
      sha256 "827d7b8fb43a137898f7b68ceb6ff1aefcd0528cd5d59ea61317251171832b75"
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
    assert_match "CLIProxyAPI Version: 7.3.9", shell_output("#{bin}/cliproxyapi version")
  end
end

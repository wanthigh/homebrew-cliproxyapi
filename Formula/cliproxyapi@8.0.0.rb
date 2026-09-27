class CliproxyapiAT800 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.0"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.0/CLIProxyAPI_8.0.0_darwin_amd64.tar.gz"
      sha256 "8db425254bf1009223bbab6ffb13bcafa475a2befe09d44844f0c4d2831b134e"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.0/CLIProxyAPI_8.0.0_darwin_aarch64.tar.gz"
      sha256 "b372014499257b9ec544cd175a153632da5648fb8120806b2dfed8bc726e7e70"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.0/CLIProxyAPI_8.0.0_linux_amd64.tar.gz"
      sha256 "c66d3acd710f7d32b3726b2eb04a14f4885b5c74b32dbd7b3386548f5a47b0e1"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.0/CLIProxyAPI_8.0.0_linux_aarch64.tar.gz"
      sha256 "3c08f2bd66756e0b3a3f2d3e58af28c880b72b87e777836544dcf0c98468895d"
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
    assert_match "CLIProxyAPI Version: 8.0.0", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT801 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.1"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.1/CLIProxyAPI_8.0.1_darwin_amd64.tar.gz"
      sha256 "14a5a896fbbefdace0191592395893b0b9430d25166b60cb4013942b0d4a7089"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.1/CLIProxyAPI_8.0.1_darwin_aarch64.tar.gz"
      sha256 "65fcf6aef85334762b7da47a064162bcb9cbd64ab79607151f97a5dffc4a7745"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.1/CLIProxyAPI_8.0.1_linux_amd64.tar.gz"
      sha256 "46bfe8e412ef5bfe392b8ef605ce9a1707064fb3739d3fd6764845d46873a0a4"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.1/CLIProxyAPI_8.0.1_linux_aarch64.tar.gz"
      sha256 "4730a61b32b9cd08e348a8e88570f22482fd842ef22bf441b9c680711516a6a4"
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
    assert_match "CLIProxyAPI Version: 8.0.1", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT72158 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.158"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.158/CLIProxyAPI_7.2.158_darwin_amd64.tar.gz"
      sha256 "e7648e73efcecd4eedb6f1dc45d777537594bc0ecece15dd49932b594593fca3"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.158/CLIProxyAPI_7.2.158_darwin_aarch64.tar.gz"
      sha256 "ac8b4cc36294a88fc1ef631de03b097bef6713d8172b66630ac2727e90faf58b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.158/CLIProxyAPI_7.2.158_linux_amd64.tar.gz"
      sha256 "fe8d8a62c2464289e6fc10595bbb9595fbc4978f2abbf75854d052b91ecacb34"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.158/CLIProxyAPI_7.2.158_linux_aarch64.tar.gz"
      sha256 "ed268dd7520559d58b820c8f418aa3469237331cd03d1236e2f2e2a09b539914"
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
    assert_match "CLIProxyAPI Version: 7.2.158", shell_output("#{bin}/cliproxyapi version")
  end
end

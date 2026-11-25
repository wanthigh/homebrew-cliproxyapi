class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.1.4"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.4/CLIProxyAPI_8.1.4_darwin_amd64.tar.gz"
      sha256 "733f276d73df67724f5dee338a0e8db552d308525d27e614984b372061aec37f"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.4/CLIProxyAPI_8.1.4_darwin_aarch64.tar.gz"
      sha256 "9d9e2350d4af9c2cd1c3636a5892e3b669829284f3a54b252fe1bdfb6b49d93a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.4/CLIProxyAPI_8.1.4_linux_amd64.tar.gz"
      sha256 "d36d5304eded3884cd0c4168c41a7638a3234631a64a54644069b963ae287cea"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.4/CLIProxyAPI_8.1.4_linux_aarch64.tar.gz"
      sha256 "1ac19c4468969a3fa85c483ef7e34c5646d6e0d610a520a0dd51af13613d6619"
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
    assert_match "CLIProxyAPI Version: 8.1.4", shell_output("#{bin}/cliproxyapi version")
  end
end

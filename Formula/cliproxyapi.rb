class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.52"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.52/CLIProxyAPI_8.0.52_darwin_amd64.tar.gz"
      sha256 "a9f91c8ae68536b43a6e34178bcc9bd3233c4f684e4b83015ca331eebf5292bb"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.52/CLIProxyAPI_8.0.52_darwin_aarch64.tar.gz"
      sha256 "2294797c40ca0dffb89984e88efb242378cd538f3086ab301ad733c7c0c151c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.52/CLIProxyAPI_8.0.52_linux_amd64.tar.gz"
      sha256 "4f8855647b3107b83e6b4a2d9418f95d8c53c57827b7f0910cf5ee9c849ff88b"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.52/CLIProxyAPI_8.0.52_linux_aarch64.tar.gz"
      sha256 "1f231e6a76f1324b48f9712066b88e81f6de3fe21b29ce897069c36242510eb7"
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
    assert_match "CLIProxyAPI Version: 8.0.52", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT8055 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.55"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.55/CLIProxyAPI_8.0.55_darwin_amd64.tar.gz"
      sha256 "d7845ac6055a09eef02b871c86461b112912c3282a90e84b6da4ab04e975a0b8"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.55/CLIProxyAPI_8.0.55_darwin_aarch64.tar.gz"
      sha256 "ad4fac1948bba2310b8d4ef4b8d0f7983d06c1c8732b4ff1a889d31a718884e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.55/CLIProxyAPI_8.0.55_linux_amd64.tar.gz"
      sha256 "4cd593251db85e50c820f42e6ea5cecdd05f902201d3dbdb025671d4f306a123"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.55/CLIProxyAPI_8.0.55_linux_aarch64.tar.gz"
      sha256 "62c136d7c6ee03cedebaad4be3e7fb9bcf14d095c96597fd92e68554c2a785c5"
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
    assert_match "CLIProxyAPI Version: 8.0.55", shell_output("#{bin}/cliproxyapi version")
  end
end

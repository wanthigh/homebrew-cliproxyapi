class CliproxyapiAT72102 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.102"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.102/CLIProxyAPI_7.2.102_darwin_amd64.tar.gz"
      sha256 "a5b50fd8a4f5f3b6d6ee503a647596d7b13e5bcd375d41d78f37a1a9b57f1e64"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.102/CLIProxyAPI_7.2.102_darwin_aarch64.tar.gz"
      sha256 "f0bc5990a9f519bb211e87a6bf16d82096ab84735c40ed94ac42eafc38fe373d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.102/CLIProxyAPI_7.2.102_linux_amd64.tar.gz"
      sha256 "5ba144ef13b46ca878ba0732f2d6e277c510a237d8eac25b7662074123aa3403"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.102/CLIProxyAPI_7.2.102_linux_aarch64.tar.gz"
      sha256 "f1c7ffbf050686ebc16602a2adbe93dfd1f794225b09c25e9a4a525f6753ed3c"
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
    assert_match "CLIProxyAPI Version: 7.2.102", shell_output("#{bin}/cliproxyapi version")
  end
end

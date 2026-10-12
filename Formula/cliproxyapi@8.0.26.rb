class CliproxyapiAT8026 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.26"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.26/CLIProxyAPI_8.0.26_darwin_amd64.tar.gz"
      sha256 "eae03f70564ab93f3dc9c8d910196206c3d474eace559f5c36747ea35401d110"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.26/CLIProxyAPI_8.0.26_darwin_aarch64.tar.gz"
      sha256 "525040a0c901a4e6174ba604b852b96de111b54be5325942a99c00c2c4593b36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.26/CLIProxyAPI_8.0.26_linux_amd64.tar.gz"
      sha256 "252171485fe4c1f3f865ca063176a50f002a071a446f6305e36c456053677c07"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.26/CLIProxyAPI_8.0.26_linux_aarch64.tar.gz"
      sha256 "142b9ad325a9ebff080356c107b27bd7a9e655077bd527854f601310e1e639ac"
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
    assert_match "CLIProxyAPI Version: 8.0.26", shell_output("#{bin}/cliproxyapi version")
  end
end

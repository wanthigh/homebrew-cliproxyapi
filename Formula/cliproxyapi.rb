class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.67"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.67/CLIProxyAPI_8.0.67_darwin_amd64.tar.gz"
      sha256 "ca0600e743748afd6103d1fc57be93b59b211fa88d9215e1ff3462ab58ad4214"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.67/CLIProxyAPI_8.0.67_darwin_aarch64.tar.gz"
      sha256 "ea5bc14e874f422b0049ada5bcc0552636340fab0fac791d7dda6af4fe70fccf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.67/CLIProxyAPI_8.0.67_linux_amd64.tar.gz"
      sha256 "5edaf5180be7d1aa31a0aaae0fc115d715b43001b7572c69709ed155f3a7d876"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.67/CLIProxyAPI_8.0.67_linux_aarch64.tar.gz"
      sha256 "716744c8e41762e4621eea841138be908c0ffbe373a31d5674331def8d700ad7"
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
    assert_match "CLIProxyAPI Version: 8.0.67", shell_output("#{bin}/cliproxyapi version")
  end
end

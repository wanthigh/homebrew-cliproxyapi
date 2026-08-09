class CliproxyapiAT72127 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.127"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.127/CLIProxyAPI_7.2.127_darwin_amd64.tar.gz"
      sha256 "3a0586d9f3089aab9a5af36e499a0322c3f76eb94949a6c88ec169f7f3fb8804"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.127/CLIProxyAPI_7.2.127_darwin_aarch64.tar.gz"
      sha256 "028f6bb2ca014227329fef459923fcc5ced9b69c6f338b78317b0b5f79df4ad0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.127/CLIProxyAPI_7.2.127_linux_amd64.tar.gz"
      sha256 "c826fd26012f946e8901668b45bceda379fb5fce5a0bbc9d437e9cdbf2437131"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.127/CLIProxyAPI_7.2.127_linux_aarch64.tar.gz"
      sha256 "dc85946d87365cc7469278173bae832b075e9e06493cbcb0737fafda0e20bfe5"
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
    assert_match "CLIProxyAPI Version: 7.2.127", shell_output("#{bin}/cliproxyapi version")
  end
end

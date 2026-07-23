class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.97"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.97/CLIProxyAPI_7.2.97_darwin_amd64.tar.gz"
      sha256 "4baa52f90e768b8572c37839b5affbbcc17ebb0f152837d08ad20eec094cbf70"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.97/CLIProxyAPI_7.2.97_darwin_aarch64.tar.gz"
      sha256 "be064fec2d5cb253d8f8c20de62e18e791072546bd4ae7bd1e413a333895aa71"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.97/CLIProxyAPI_7.2.97_linux_amd64.tar.gz"
      sha256 "9de7d78769bd5aa28901ef18766c65c41fdb750258a5b318112de02928016ed4"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.97/CLIProxyAPI_7.2.97_linux_aarch64.tar.gz"
      sha256 "f58bc5509e912d88e4c8fcab8f967ee896800f8c8222b7893a6e958a902006a5"
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
    assert_match "CLIProxyAPI Version: 7.2.97", shell_output("#{bin}/cliproxyapi version")
  end
end

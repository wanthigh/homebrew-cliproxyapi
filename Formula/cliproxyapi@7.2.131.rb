class CliproxyapiAT72131 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.131"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.131/CLIProxyAPI_7.2.131_darwin_amd64.tar.gz"
      sha256 "3626c427ba0526f6d25d83063195bc418f5b242b108de0778d887e0b8de3323f"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.131/CLIProxyAPI_7.2.131_darwin_aarch64.tar.gz"
      sha256 "ec63a4f99da029ed04d8373c17152274d85f524c92c1b2da36b9c70cbadd0afe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.131/CLIProxyAPI_7.2.131_linux_amd64.tar.gz"
      sha256 "8aa0b5febf53c7ef2a2598b716e7f326a2ecf7923eabb4cd0056171b0623bdca"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.131/CLIProxyAPI_7.2.131_linux_aarch64.tar.gz"
      sha256 "e1de0444b47528c0e7125db5de09f151343e5ac26c96bbcbc7ef24a1a261b867"
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
    assert_match "CLIProxyAPI Version: 7.2.131", shell_output("#{bin}/cliproxyapi version")
  end
end

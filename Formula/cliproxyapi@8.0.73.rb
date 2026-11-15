class CliproxyapiAT8073 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.73"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.73/CLIProxyAPI_8.0.73_darwin_amd64.tar.gz"
      sha256 "58cf144443ca166e947373ddac80361ffcf405d09fc93920ad253fe7c0c9acb2"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.73/CLIProxyAPI_8.0.73_darwin_aarch64.tar.gz"
      sha256 "acfa0e95933bc035aa11aec6e63ac5f633ee3eb767d0e54863f8dbb52e350d2a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.73/CLIProxyAPI_8.0.73_linux_amd64.tar.gz"
      sha256 "4c81e8c33c93b153d8013e4f631fc6cdd27325f950acb65a90156a4543bd74af"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.73/CLIProxyAPI_8.0.73_linux_aarch64.tar.gz"
      sha256 "412875fb610b2cf09296776945c98806c79d593aff73f7d77a6d8fc8de8b6d19"
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
    assert_match "CLIProxyAPI Version: 8.0.73", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT7261 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.61"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.61/CLIProxyAPI_7.2.61_darwin_amd64.tar.gz"
      sha256 "5c3c3fac0a7ec62a7272c1c017c59202ff244b6a4a15872924d34629c3f2eb00"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.61/CLIProxyAPI_7.2.61_darwin_aarch64.tar.gz"
      sha256 "6777ddbd8f49e716fb2367cf8930a403824765ccc893cdef60c56898015b33b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.61/CLIProxyAPI_7.2.61_linux_amd64.tar.gz"
      sha256 "ff7a3b2a5148e8b3cc3a57c9cc36d2749ce00b8c96747fb6f672672b1101a888"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.61/CLIProxyAPI_7.2.61_linux_aarch64.tar.gz"
      sha256 "e7b1e79859625be3e0420292b0d8d342d6370b1c0c050ab205901ff8aef2b4af"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.61", shell_output("#{bin}/cliproxyapi version")
  end
end

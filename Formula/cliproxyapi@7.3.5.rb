class CliproxyapiAT735 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.3.5"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.5/CLIProxyAPI_7.3.5_darwin_amd64.tar.gz"
      sha256 "06ca6b553796b4e540e4f559841d91c77a4e28fed72e7016536191b18fc8f4d8"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.5/CLIProxyAPI_7.3.5_darwin_aarch64.tar.gz"
      sha256 "c9c31467b0b00f12809c8ef064463f48359a727bd6c5fe4349482149822f8bad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.5/CLIProxyAPI_7.3.5_linux_amd64.tar.gz"
      sha256 "d8ea443f95977fda52d6b86c4f07dbd3fb448ca05574212951ec3c42b903f407"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.5/CLIProxyAPI_7.3.5_linux_aarch64.tar.gz"
      sha256 "49e905fc746cf1db2904ff0de52d14c52bde395e173b7a3d61f11224b62febc0"
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
    assert_match "CLIProxyAPI Version: 7.3.5", shell_output("#{bin}/cliproxyapi version")
  end
end

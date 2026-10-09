class CliproxyapiAT8022 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.22"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.22/CLIProxyAPI_8.0.22_darwin_amd64.tar.gz"
      sha256 "53dfa8d458e224c926314aff437f06524731af9f880844ee79b40c8fece86d65"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.22/CLIProxyAPI_8.0.22_darwin_aarch64.tar.gz"
      sha256 "2ccb94b03ce4feefa2b839f7a0eaae90951d4131572c075099f56c94d15a7f50"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.22/CLIProxyAPI_8.0.22_linux_amd64.tar.gz"
      sha256 "b1bc3e14bd242c4b35518a9e90906eb5b93892b17516af807376ba06e1882142"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.22/CLIProxyAPI_8.0.22_linux_aarch64.tar.gz"
      sha256 "ac4f29e368b56738700446a3e613194af910a3cbba2ae645a11c3ecb00752f43"
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
    assert_match "CLIProxyAPI Version: 8.0.22", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT8015 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.15"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.15/CLIProxyAPI_8.0.15_darwin_amd64.tar.gz"
      sha256 "d0f69a00d9ab3a514a96159542dec6632dbfef03e74dc9f8224b7edad9b5ca6f"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.15/CLIProxyAPI_8.0.15_darwin_aarch64.tar.gz"
      sha256 "90fe6d309613b33520b9f08746829dd6c4fdfbbbb353f41ac01e4e94f168f7c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.15/CLIProxyAPI_8.0.15_linux_amd64.tar.gz"
      sha256 "3acca2d978ba140b4b664bcfb74acea8f6c9a32c24fa6e2d58130f6c1128d3a8"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.15/CLIProxyAPI_8.0.15_linux_aarch64.tar.gz"
      sha256 "172f1f71dc0381538c09f44a65c687b55035c61ff63f505a6b7edd4fc7b69c95"
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
    assert_match "CLIProxyAPI Version: 8.0.15", shell_output("#{bin}/cliproxyapi version")
  end
end

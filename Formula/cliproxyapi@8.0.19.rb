class CliproxyapiAT8019 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.19"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.19/CLIProxyAPI_8.0.19_darwin_amd64.tar.gz"
      sha256 "7424082c2a89a109d9a3d66bdd146667d921d5b6551f9d46f4fb9cccc11b5043"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.19/CLIProxyAPI_8.0.19_darwin_aarch64.tar.gz"
      sha256 "8a9fc500062271fb61abece837099a7e1c419fbfff3f6bd554a03edcabce3a8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.19/CLIProxyAPI_8.0.19_linux_amd64.tar.gz"
      sha256 "bfb7425d0128f3fa4cf556dfe7a51dec430a743046fb49cf7a3de5d2e8699867"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.19/CLIProxyAPI_8.0.19_linux_aarch64.tar.gz"
      sha256 "6ba8b00e3f74da197d2d40da38f3975c3ff8007888935e22b991cfd24d90e766"
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
    assert_match "CLIProxyAPI Version: 8.0.19", shell_output("#{bin}/cliproxyapi version")
  end
end

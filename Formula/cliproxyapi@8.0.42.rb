class CliproxyapiAT8042 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.42"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.42/CLIProxyAPI_8.0.42_darwin_amd64.tar.gz"
      sha256 "730bd33a6943bb1fdb011c65120b529516f6e7b4ebad1cc819e3f0eddd48f5a6"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.42/CLIProxyAPI_8.0.42_darwin_aarch64.tar.gz"
      sha256 "7d5a78923786dd20a6854e834228d138245142101e8cb02b2614311514a478ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.42/CLIProxyAPI_8.0.42_linux_amd64.tar.gz"
      sha256 "1e10566fe0042ed5a9b80306cf296bf86a83de590cd967a8b177988b896c8d31"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.42/CLIProxyAPI_8.0.42_linux_aarch64.tar.gz"
      sha256 "0fcd48eebaadfaa1ca44109b6e1c05bb14c92ebcc015165d9351ff24e442bf0c"
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
    assert_match "CLIProxyAPI Version: 8.0.42", shell_output("#{bin}/cliproxyapi version")
  end
end

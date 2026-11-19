class CliproxyapiAT8078 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.78"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.78/CLIProxyAPI_8.0.78_darwin_amd64.tar.gz"
      sha256 "18cc73e9da3485824358efd1d1decc550c40c71c3dd84bedd45881ba74da590d"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.78/CLIProxyAPI_8.0.78_darwin_aarch64.tar.gz"
      sha256 "32d3bfb23df6f88615d9bcb0acab65db842182bacd583d73b2f5e280651a26cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.78/CLIProxyAPI_8.0.78_linux_amd64.tar.gz"
      sha256 "c0267b899095b9f61eaeb627a5a5f1b0926b0683236485c30e35ee56871eeb9f"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.78/CLIProxyAPI_8.0.78_linux_aarch64.tar.gz"
      sha256 "cbece9287e0920cd5601cc3a7127175c61edc0c22f29e4838f49267177b3d18b"
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
    assert_match "CLIProxyAPI Version: 8.0.78", shell_output("#{bin}/cliproxyapi version")
  end
end

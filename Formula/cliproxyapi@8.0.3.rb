class CliproxyapiAT803 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.3"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.3/CLIProxyAPI_8.0.3_darwin_amd64.tar.gz"
      sha256 "236e2ba36a6f78b940022d250deb6498536db4395d161407aa1179c85fc529ae"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.3/CLIProxyAPI_8.0.3_darwin_aarch64.tar.gz"
      sha256 "01c424674ad4ceacfe86a1faa32e194ba8e278e8ec22c8b5d606d67c3c56a858"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.3/CLIProxyAPI_8.0.3_linux_amd64.tar.gz"
      sha256 "0556446ae0d5941c019252631987cc3b738c6608b855328ece979ab2188ed6dd"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.3/CLIProxyAPI_8.0.3_linux_aarch64.tar.gz"
      sha256 "2a42b30ef6e981fea9296a64040bd99dade90ceb05c920387cad85a426d9b634"
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
    assert_match "CLIProxyAPI Version: 8.0.3", shell_output("#{bin}/cliproxyapi version")
  end
end

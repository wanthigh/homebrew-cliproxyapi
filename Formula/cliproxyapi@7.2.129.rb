class CliproxyapiAT72129 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.129"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.129/CLIProxyAPI_7.2.129_darwin_amd64.tar.gz"
      sha256 "57ac8bc93e9f93358913701f156b39a4784c31f40a518a39b6fb2a85d6304114"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.129/CLIProxyAPI_7.2.129_darwin_aarch64.tar.gz"
      sha256 "66c003f1eae50c9586b02fa6a6f76959241c13d242883ba400eafeab98fefea0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.129/CLIProxyAPI_7.2.129_linux_amd64.tar.gz"
      sha256 "fbebc75dc9322fc25252eaabc4ee474babbd1d61f7845e6c002ccdd8f24c3818"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.129/CLIProxyAPI_7.2.129_linux_aarch64.tar.gz"
      sha256 "038965c9a550d053f81c36564ba486f64c9a2142f967195e55d28f48c28d8312"
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
    assert_match "CLIProxyAPI Version: 7.2.129", shell_output("#{bin}/cliproxyapi version")
  end
end

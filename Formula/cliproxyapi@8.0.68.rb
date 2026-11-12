class CliproxyapiAT8068 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.68"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.68/CLIProxyAPI_8.0.68_darwin_amd64.tar.gz"
      sha256 "63260a454c25b6ae4865e929b8aa6211441a945cc29e703ba2e4eff3ccfad7eb"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.68/CLIProxyAPI_8.0.68_darwin_aarch64.tar.gz"
      sha256 "1bc03a8a66a860b285a127f5f0672ed491fe8bc58af3812479f1fe28ee0f63bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.68/CLIProxyAPI_8.0.68_linux_amd64.tar.gz"
      sha256 "591935b8f6a544e9c1fb620cad2c5b48c6a71cc96a7446a7fbe561f816c63770"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.68/CLIProxyAPI_8.0.68_linux_aarch64.tar.gz"
      sha256 "51a5ac3be9899361f50c962c56ff735fc50c3801c628ff2d45a28dbe781b74d3"
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
    assert_match "CLIProxyAPI Version: 8.0.68", shell_output("#{bin}/cliproxyapi version")
  end
end

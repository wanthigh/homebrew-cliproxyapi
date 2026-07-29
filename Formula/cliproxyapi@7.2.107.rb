class CliproxyapiAT72107 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.107"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.107/CLIProxyAPI_7.2.107_darwin_amd64.tar.gz"
      sha256 "ed276245814c0ef373e55539ec59d59f06ce1822c8183de3053affd8f563b863"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.107/CLIProxyAPI_7.2.107_darwin_aarch64.tar.gz"
      sha256 "7009a46efbd8e6e84cce7c7f3835540ed1e5870485c9ac550be0f8ff128d8849"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.107/CLIProxyAPI_7.2.107_linux_amd64.tar.gz"
      sha256 "e5de53e18f8a296694ae3de857a11fcc99280c785aeb929d7e34e14ee55b69fc"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.107/CLIProxyAPI_7.2.107_linux_aarch64.tar.gz"
      sha256 "6cc5ec6227ccf68a72f24b41a2a323f9f5e49b86e7221fa4b39e62a2c63aaa1d"
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
    assert_match "CLIProxyAPI Version: 7.2.107", shell_output("#{bin}/cliproxyapi version")
  end
end

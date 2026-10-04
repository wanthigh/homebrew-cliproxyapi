class CliproxyapiAT8014 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.14"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.14/CLIProxyAPI_8.0.14_darwin_amd64.tar.gz"
      sha256 "d610f7e7497a3f89371af77ed844a938cea797bc19f2828ece965a3a09eeea90"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.14/CLIProxyAPI_8.0.14_darwin_aarch64.tar.gz"
      sha256 "fe4856cb15038288f0a7f6086138c3ddd940b3f680c1122d506db5f2afbec9aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.14/CLIProxyAPI_8.0.14_linux_amd64.tar.gz"
      sha256 "42953d3fdf326432eafc838da3a0528493f04fb0922a7238c13d1745eeffb99c"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.14/CLIProxyAPI_8.0.14_linux_aarch64.tar.gz"
      sha256 "199e1c95642f093a0a94cc26044af894d1cdec825fbb508108f3a9259c0dd6ed"
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
    assert_match "CLIProxyAPI Version: 8.0.14", shell_output("#{bin}/cliproxyapi version")
  end
end

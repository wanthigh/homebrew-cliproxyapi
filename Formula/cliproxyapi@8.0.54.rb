class CliproxyapiAT8054 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.54"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.54/CLIProxyAPI_8.0.54_darwin_amd64.tar.gz"
      sha256 "60e3d64af5a25566b3a7aa50cf677178b4b826263cb963ccea218d34d49fa163"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.54/CLIProxyAPI_8.0.54_darwin_aarch64.tar.gz"
      sha256 "02d771a68cdf9978821f01c85c6585db708f1da0f33f85947afc0b5b07b90951"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.54/CLIProxyAPI_8.0.54_linux_amd64.tar.gz"
      sha256 "cf589143bead2cb2ad9a26881b35fe6f1e63f8a7bbd02cadb127bc32cb0c1c11"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.54/CLIProxyAPI_8.0.54_linux_aarch64.tar.gz"
      sha256 "81c45e825acaf85ec3c4b4816002f2cac811f07efb41aa4233f9e5c8a16dcd6d"
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
    assert_match "CLIProxyAPI Version: 8.0.54", shell_output("#{bin}/cliproxyapi version")
  end
end

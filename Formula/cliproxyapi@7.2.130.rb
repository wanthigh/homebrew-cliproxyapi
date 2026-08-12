class CliproxyapiAT72130 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.130"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.130/CLIProxyAPI_7.2.130_darwin_amd64.tar.gz"
      sha256 "685d57896b20fad166a57501d419da837b30680d55c4edfa44ba8cd8f2db1d77"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.130/CLIProxyAPI_7.2.130_darwin_aarch64.tar.gz"
      sha256 "a644a75f70cbd045b9f7caa9ff3866353448a7ed67ef8472eacc11c48b1c86f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.130/CLIProxyAPI_7.2.130_linux_amd64.tar.gz"
      sha256 "690c512d567d1f250d69b5b16f0447eb92578847474f2d7555b561090dde699c"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.130/CLIProxyAPI_7.2.130_linux_aarch64.tar.gz"
      sha256 "e717bead42cc731e07badff72ce3cfd688fb5f8b21f7228022b50132de3bd3cc"
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
    assert_match "CLIProxyAPI Version: 7.2.130", shell_output("#{bin}/cliproxyapi version")
  end
end

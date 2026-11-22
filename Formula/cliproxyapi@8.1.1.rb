class CliproxyapiAT811 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.1.1"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.1/CLIProxyAPI_8.1.1_darwin_amd64.tar.gz"
      sha256 "f6ca532b4257f9a2e8ea149d53bb47ebdae3cb7eaa3cb7e349575dc8dc1d0945"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.1/CLIProxyAPI_8.1.1_darwin_aarch64.tar.gz"
      sha256 "7aa057791cd8894b991af8b54eeda83dc274a8eea4e496baa57e5dff5399170a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.1/CLIProxyAPI_8.1.1_linux_amd64.tar.gz"
      sha256 "9e649caa862aae65dbc9374c993e507dc26aa3668e2999a2714505e79755a7f2"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.1.1/CLIProxyAPI_8.1.1_linux_aarch64.tar.gz"
      sha256 "86bde7ae30033bc78d3ecbb787fa13753c047be3f46121e400120384a22819c0"
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
    assert_match "CLIProxyAPI Version: 8.1.1", shell_output("#{bin}/cliproxyapi version")
  end
end

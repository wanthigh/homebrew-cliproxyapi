class CliproxyapiAT8046 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.46"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.46/CLIProxyAPI_8.0.46_darwin_amd64.tar.gz"
      sha256 "bf8ba3bd1990e115bfba6f61a93d83233974a5457540ebdd03df69d142f14efb"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.46/CLIProxyAPI_8.0.46_darwin_aarch64.tar.gz"
      sha256 "f9cdb85ccd70602ce084ad0aa8576a057a5e7dd8ff63a64b229cd145c5e6652b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.46/CLIProxyAPI_8.0.46_linux_amd64.tar.gz"
      sha256 "471f5235c501c19d3dec85c06e7612f0fe5ce3f823ef75331c2097aad8ed3c62"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.46/CLIProxyAPI_8.0.46_linux_aarch64.tar.gz"
      sha256 "07b792e0d2eedb46fcb6c9d1eda913b4c53413076a03199346a85a573fd00de7"
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
    assert_match "CLIProxyAPI Version: 8.0.46", shell_output("#{bin}/cliproxyapi version")
  end
end

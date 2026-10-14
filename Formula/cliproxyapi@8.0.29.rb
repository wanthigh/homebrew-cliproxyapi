class CliproxyapiAT8029 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.29"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.29/CLIProxyAPI_8.0.29_darwin_amd64.tar.gz"
      sha256 "ad42747bc1cf247da2a23f1804f2760d1d416db014b5590f32c2d7df3f4f54ba"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.29/CLIProxyAPI_8.0.29_darwin_aarch64.tar.gz"
      sha256 "70fcb92a7e045dcbcb52cc63854ef723c1cb77c720923faa45d6081eeece21d0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.29/CLIProxyAPI_8.0.29_linux_amd64.tar.gz"
      sha256 "78a277a5e74495103147a138d530c33d72c17b213d2538e474b1860eb3c4bc34"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.29/CLIProxyAPI_8.0.29_linux_aarch64.tar.gz"
      sha256 "1ae4455dac49316b96c06fc60c78c39fb28f8224fc65d94f1abcfe6d697d3d78"
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
    assert_match "CLIProxyAPI Version: 8.0.29", shell_output("#{bin}/cliproxyapi version")
  end
end

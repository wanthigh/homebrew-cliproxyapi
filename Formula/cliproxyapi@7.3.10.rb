class CliproxyapiAT7310 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.3.10"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.10/CLIProxyAPI_7.3.10_darwin_amd64.tar.gz"
      sha256 "61d2a1932f2831ef4d0ddd8206c502bff3f9ffae487998e6f71e45f8ffff2a80"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.10/CLIProxyAPI_7.3.10_darwin_aarch64.tar.gz"
      sha256 "9930add6ce8491b4d4855ffc57c4570ef227d344acdc7bf3f9b46328cf078d40"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.10/CLIProxyAPI_7.3.10_linux_amd64.tar.gz"
      sha256 "125245740bbe7bf1bcb12f0dc4d94b19c39207584b0869f8bb2c505ae99c43bc"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.3.10/CLIProxyAPI_7.3.10_linux_aarch64.tar.gz"
      sha256 "9f80ad10f96b0c92638efb3437071e5251b07efac9d0ce8b7234b9c64024aeab"
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
    assert_match "CLIProxyAPI Version: 7.3.10", shell_output("#{bin}/cliproxyapi version")
  end
end

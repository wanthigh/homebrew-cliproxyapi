class CliproxyapiAT72126 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.126"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.126/CLIProxyAPI_7.2.126_darwin_amd64.tar.gz"
      sha256 "ba8c1dfc3534789ad87d02fd7ed0e0d24603ff3b696824799e312eed7095ee4d"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.126/CLIProxyAPI_7.2.126_darwin_aarch64.tar.gz"
      sha256 "d1d24b559ad89d885c6a3bac3aac2682fa0798daaa049718c03de20eb2f6884a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.126/CLIProxyAPI_7.2.126_linux_amd64.tar.gz"
      sha256 "cffaadaf59aca14a2dc3231191440c83789eef814445ef100881f5514e908a9b"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.126/CLIProxyAPI_7.2.126_linux_aarch64.tar.gz"
      sha256 "0ae3293bcfb735e3e40f081dc20de0d285fecae0ca103c17b692d529ac1230d9"
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
    assert_match "CLIProxyAPI Version: 7.2.126", shell_output("#{bin}/cliproxyapi version")
  end
end

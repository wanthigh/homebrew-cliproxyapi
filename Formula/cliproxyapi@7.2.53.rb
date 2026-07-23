class CliproxyapiAT7253 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.53"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.53/CLIProxyAPI_7.2.53_darwin_amd64.tar.gz"
      sha256 "399c82bd51b016fddcb5d875bbd0ca2e57c6e99eb05caa85c0e13210980149ad"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.53/CLIProxyAPI_7.2.53_darwin_aarch64.tar.gz"
      sha256 "464599b1969d54747f1fc0260caff1abee9dd708101e5397bdca0bae7e68d556"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.53/CLIProxyAPI_7.2.53_linux_amd64.tar.gz"
      sha256 "59231aa47196b671bcc1501dea9d2a386a36c75b110bbe8042e4ca35b18fe138"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.53/CLIProxyAPI_7.2.53_linux_aarch64.tar.gz"
      sha256 "9b163cfaf021a258caafb577cdc447fd336e30792be48e766d32746ca0b9ddd4"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.53", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT7293 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.93"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.93/CLIProxyAPI_7.2.93_darwin_amd64.tar.gz"
      sha256 "1fa5b1324c43fada01234559f382ba0878681292f6d653056aef9ff99ccc7b86"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.93/CLIProxyAPI_7.2.93_darwin_aarch64.tar.gz"
      sha256 "3ebffcf346c79925ff393225c2769a509a2297dcc1b8154c49235cb1d80a69ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.93/CLIProxyAPI_7.2.93_linux_amd64.tar.gz"
      sha256 "3ca18073c87a7d21391dcc437558c37ee9b98ce1eb1cd2c013e064a236664322"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.93/CLIProxyAPI_7.2.93_linux_aarch64.tar.gz"
      sha256 "fc9d27799c97950614e98f191c3a6fea5c1b61bd390c44d2977090678b1c5794"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.93", shell_output("#{bin}/cliproxyapi version")
  end
end

class CliproxyapiAT72145 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.145"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.145/CLIProxyAPI_7.2.145_darwin_amd64.tar.gz"
      sha256 "2f6b37e92f1a9ec2d4ba98c491aaf941f9796b2a9937fa1b68b6cc0a65853962"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.145/CLIProxyAPI_7.2.145_darwin_aarch64.tar.gz"
      sha256 "c711728ab6f340c69ea322544970fc2b137816adba501438d57670365c8e513d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.145/CLIProxyAPI_7.2.145_linux_amd64.tar.gz"
      sha256 "ffb59d406af9b849ec9174154d96642a1d3ccb315f8687c56ac55202816e9b37"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.145/CLIProxyAPI_7.2.145_linux_aarch64.tar.gz"
      sha256 "c03974b0e10f93f8104c4be6a061135c07924396fc310215802b0a22aa33ee54"
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
    assert_match "CLIProxyAPI Version: 7.2.145", shell_output("#{bin}/cliproxyapi version")
  end
end

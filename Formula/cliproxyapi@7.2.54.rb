class CliproxyapiAT7254 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.54"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.54/CLIProxyAPI_7.2.54_darwin_amd64.tar.gz"
      sha256 "c5cf41be2ffbe60b100b553f992bc614665abbad7a7719babf3ebf9e329c651b"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.54/CLIProxyAPI_7.2.54_darwin_aarch64.tar.gz"
      sha256 "eda349dda0f3c575944a749f44b1b63119a654d03705df2288bdb072e939dccc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.54/CLIProxyAPI_7.2.54_linux_amd64.tar.gz"
      sha256 "3a42ec8646847910c77e58149cc5d62cacd83372f02619464d904428746c8961"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.54/CLIProxyAPI_7.2.54_linux_aarch64.tar.gz"
      sha256 "ba3fec06b0e98b6980575af1bc430126fd4986f677131ebd7744c1f2f0e97c68"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.54", shell_output("#{bin}/cliproxyapi version")
  end
end

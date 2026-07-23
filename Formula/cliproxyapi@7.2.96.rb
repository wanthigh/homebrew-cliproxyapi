class CliproxyapiAT7296 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.96"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.96/CLIProxyAPI_7.2.96_darwin_amd64.tar.gz"
      sha256 "7aa5a5cbf1bdd8069adcd4ec5ea89e9b5377ed66db3ac1e8215205d92d538a90"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.96/CLIProxyAPI_7.2.96_darwin_aarch64.tar.gz"
      sha256 "886ec72c532a863177ffe0ba1716a6dfd64d6d7a7d2b06965e37fdae145e7482"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.96/CLIProxyAPI_7.2.96_linux_amd64.tar.gz"
      sha256 "b0e38ae2e7d2a7a4935b2c0c43a079b653387aa1abcee23033a19544924a2e9d"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.96/CLIProxyAPI_7.2.96_linux_aarch64.tar.gz"
      sha256 "e1b5c6a3a3ea089120f45b332f5881c947dc98fecc4c0d5d6e695e2c44fa2dc5"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  test do
    assert_match "CLIProxyAPI Version: 7.2.96", shell_output("#{bin}/cliproxyapi version")
  end
end

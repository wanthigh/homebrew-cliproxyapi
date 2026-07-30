class CliproxyapiAT72110 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.110"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.110/CLIProxyAPI_7.2.110_darwin_amd64.tar.gz"
      sha256 "1d2a30512f9b9f458af95509cc3343afc08ccf1aa02dcb8b25760c02ef872aa3"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.110/CLIProxyAPI_7.2.110_darwin_aarch64.tar.gz"
      sha256 "e6dac60c5740677c2bd8147666c290d79686d1a5b93264590897fffd036d1bba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.110/CLIProxyAPI_7.2.110_linux_amd64.tar.gz"
      sha256 "65504386611af722c2b103a6f7fbb38efd2d1822658008a03797e76e4f6bf738"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.110/CLIProxyAPI_7.2.110_linux_aarch64.tar.gz"
      sha256 "587e0ae7f2dd5cabd41d1be68ddebc812f6b49d18e4127ca2d68486af351e2f0"
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
    assert_match "CLIProxyAPI Version: 7.2.110", shell_output("#{bin}/cliproxyapi version")
  end
end

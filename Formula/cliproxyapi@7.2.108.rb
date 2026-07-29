class CliproxyapiAT72108 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.108"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.108/CLIProxyAPI_7.2.108_darwin_amd64.tar.gz"
      sha256 "07526276d329f041f7ac2fdce59ac9d504f7ade5c898c18b3143e26f399ee287"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.108/CLIProxyAPI_7.2.108_darwin_aarch64.tar.gz"
      sha256 "25d7653020ec75f6be607fc18579aadeb30ab1bd5cc2a48c25271c5b424cd2d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.108/CLIProxyAPI_7.2.108_linux_amd64.tar.gz"
      sha256 "7520117d251a0116f88fd6a452e20af35d0fd9aa6cd3b4b8e0903778c73ba4d6"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.108/CLIProxyAPI_7.2.108_linux_aarch64.tar.gz"
      sha256 "06190cee6546e0449ec32680bfce44517e507aba019a9e29988fb89cbdb6d942"
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
    assert_match "CLIProxyAPI Version: 7.2.108", shell_output("#{bin}/cliproxyapi version")
  end
end

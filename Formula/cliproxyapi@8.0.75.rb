class CliproxyapiAT8075 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.75"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.75/CLIProxyAPI_8.0.75_darwin_amd64.tar.gz"
      sha256 "849cb6c66bd7ad393666c81d778a34949e17e0671ab18a67f4b7bde5fa8440ae"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.75/CLIProxyAPI_8.0.75_darwin_aarch64.tar.gz"
      sha256 "d3bf29d17575a02f869f85d816ca1cfd00be287f3812f4cb55ec1b4f9dfb677a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.75/CLIProxyAPI_8.0.75_linux_amd64.tar.gz"
      sha256 "a7bd6e595f5dd370cc91c17ed664980a8c647a2d07c1aa61ac74777c714df14f"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.75/CLIProxyAPI_8.0.75_linux_aarch64.tar.gz"
      sha256 "f366c1ab4a6e9252e0c966ba2847a0c33dd964dbaed1c2070ec1b80bbf1fa4c6"
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
    assert_match "CLIProxyAPI Version: 8.0.75", shell_output("#{bin}/cliproxyapi version")
  end
end

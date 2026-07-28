class CliproxyapiAT72104 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "7.2.104"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.104/CLIProxyAPI_7.2.104_darwin_amd64.tar.gz"
      sha256 "a0104243082dafd2249374311e9233fb25bb09ec1bbeced86b9f704a79e6ef65"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.104/CLIProxyAPI_7.2.104_darwin_aarch64.tar.gz"
      sha256 "3d52c292af57ea7114bacf35fb1b76c9552448940d3e9f10d39c1ec57229c0e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.104/CLIProxyAPI_7.2.104_linux_amd64.tar.gz"
      sha256 "993babb37b6de831600f0eb31527ca0f938337e1d1f837d5cf846263affa9724"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v7.2.104/CLIProxyAPI_7.2.104_linux_aarch64.tar.gz"
      sha256 "d77647b161eb9af6c117200c4ce439a845a846acf0e8ab57420aff38989b84f5"
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
    assert_match "CLIProxyAPI Version: 7.2.104", shell_output("#{bin}/cliproxyapi version")
  end
end

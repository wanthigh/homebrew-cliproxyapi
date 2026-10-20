class CliproxyapiAT8036 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.36"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.36/CLIProxyAPI_8.0.36_darwin_amd64.tar.gz"
      sha256 "e1e3d27208aed3cedf767982d4b121e902e48433d21e871c35431c9312651159"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.36/CLIProxyAPI_8.0.36_darwin_aarch64.tar.gz"
      sha256 "042da44c3a5b5b2312124644cc757bf108299da4676e0e564fd16b4a2a0893b8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.36/CLIProxyAPI_8.0.36_linux_amd64.tar.gz"
      sha256 "6607e53ad346a0439beeb26de14717056281625c4cafdf23ebc31028e1b31e97"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.36/CLIProxyAPI_8.0.36_linux_aarch64.tar.gz"
      sha256 "668bb7049befb5c394e5c44d7e1cc1ac39f8e6ba40ede0244daa4d2585995d20"
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
    assert_match "CLIProxyAPI Version: 8.0.36", shell_output("#{bin}/cliproxyapi version")
  end
end

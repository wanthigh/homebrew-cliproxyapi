class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.39"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.39/CLIProxyAPI_8.0.39_darwin_amd64.tar.gz"
      sha256 "1cb6ab8893811b5838d59b22a11bf4c9332cdbc40e66de18edbd4c926f2635ea"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.39/CLIProxyAPI_8.0.39_darwin_aarch64.tar.gz"
      sha256 "1febf0f15bef7cc70630496a4f5b145d1faafedf2c8bf0ae4d5648f0972b24be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.39/CLIProxyAPI_8.0.39_linux_amd64.tar.gz"
      sha256 "acee099fb640a33c5967a9a836e98d807b0ecc3d35d24bb22caa4b5ae92550ab"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.39/CLIProxyAPI_8.0.39_linux_aarch64.tar.gz"
      sha256 "5d9d6ff91eb3db115b45f7e66b3f4706b90749b224d23088d3ccc42b6c14ce6b"
    end
  end

  def install
    bin.install "cli-proxy-api" => "cliproxyapi"
  end

  def post_install
    (etc/"cliproxyapi.conf.default").write <<~EOS
      # CLIProxyAPI Configuration File
      # Edit this file to configure cliproxyapi
    EOS
  end

  service do
    run [opt_bin/"cliproxyapi", "-config", etc/"cliproxyapi.conf"]
    keep_alive true
  end

  test do
    assert_match "CLIProxyAPI Version: 8.0.39", shell_output("#{bin}/cliproxyapi version")
  end
end

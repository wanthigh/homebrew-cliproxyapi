class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.49"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.49/CLIProxyAPI_8.0.49_darwin_amd64.tar.gz"
      sha256 "43bf4faac98f49a677e4e0b93f878a43467c9710f5996ac23eda2220f51fceff"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.49/CLIProxyAPI_8.0.49_darwin_aarch64.tar.gz"
      sha256 "07c14333f1cd960e0445fc831de578305d835724dde735776d4f136b7195a4b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.49/CLIProxyAPI_8.0.49_linux_amd64.tar.gz"
      sha256 "f61d5e27ed46c1eebfdd240eb50cf15d6d6be38b22159e9618a667f671f22d94"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.49/CLIProxyAPI_8.0.49_linux_aarch64.tar.gz"
      sha256 "685bbc0a99a6f8b4ddfaa1666f446a0d7a6ee36ea53216b29e2fb7e0c6a5711b"
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
    assert_match "CLIProxyAPI Version: 8.0.49", shell_output("#{bin}/cliproxyapi version")
  end
end

class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.63"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.63/CLIProxyAPI_8.0.63_darwin_amd64.tar.gz"
      sha256 "1dd6eb617e3be3a34b3395c8fa6b57e71ea298c7816eadd4e6ce0f025d1234d5"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.63/CLIProxyAPI_8.0.63_darwin_aarch64.tar.gz"
      sha256 "1336299530082d655fbdfdae866836d070aeec9379a77ef1c5cc25c432b6653a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.63/CLIProxyAPI_8.0.63_linux_amd64.tar.gz"
      sha256 "bce20e7eb3f985f9f03b72be21d99f0427c25247248d4e614493ed57ce71e9e5"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.63/CLIProxyAPI_8.0.63_linux_aarch64.tar.gz"
      sha256 "f32091a2281be9170861ec81bb70f3541b5c1c8659f10baa70d015e1c1a93aed"
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
    assert_match "CLIProxyAPI Version: 8.0.63", shell_output("#{bin}/cliproxyapi version")
  end
end

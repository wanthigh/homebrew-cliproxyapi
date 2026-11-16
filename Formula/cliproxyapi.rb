class Cliproxyapi < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.74"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.74/CLIProxyAPI_8.0.74_darwin_amd64.tar.gz"
      sha256 "788eed3efddb18d1bc9df89022201f88a4373e6e53c8711e16ae74fbef97c1b7"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.74/CLIProxyAPI_8.0.74_darwin_aarch64.tar.gz"
      sha256 "22f29feb8646aee6b124ba0b4a974a92fbffd71d4c875da7e21ef36d698635f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.74/CLIProxyAPI_8.0.74_linux_amd64.tar.gz"
      sha256 "94205d5be11464c57fab5e05ebd44d73a89190f9410a13e9e78c67987738c26f"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.74/CLIProxyAPI_8.0.74_linux_aarch64.tar.gz"
      sha256 "f783d366ee4660448e5365be21db82e32dfa1c0f5c5175addf79ee27828649c5"
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
    assert_match "CLIProxyAPI Version: 8.0.74", shell_output("#{bin}/cliproxyapi version")
  end
end

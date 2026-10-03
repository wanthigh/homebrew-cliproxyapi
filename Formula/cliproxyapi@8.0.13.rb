class CliproxyapiAT8013 < Formula
  desc "Wrap Gemini CLI, Codex, Claude Code, Qwen Code as an API service"
  homepage "https://github.com/router-for-me/CLIProxyAPI"
  license "MIT"

  version "8.0.13"

  on_macos do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.13/CLIProxyAPI_8.0.13_darwin_amd64.tar.gz"
      sha256 "8c47459190b997828be246973d18fbb681799540cebb867c3b7368d189559785"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.13/CLIProxyAPI_8.0.13_darwin_aarch64.tar.gz"
      sha256 "652a192e3e38520253e330c4a094fa8916728370c3f213f127dbc56e35be7938"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.13/CLIProxyAPI_8.0.13_linux_amd64.tar.gz"
      sha256 "50ecffb47fdd81c8c5a9825a73a7a905ab66342337e274f39c4276b92d3533f3"
    end
    on_arm do
      url "https://github.com/router-for-me/CLIProxyAPI/releases/download/v8.0.13/CLIProxyAPI_8.0.13_linux_aarch64.tar.gz"
      sha256 "f7ff98a128075ea8437dadd58a88f429a401e452a42ef7119304139185f5344f"
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
    assert_match "CLIProxyAPI Version: 8.0.13", shell_output("#{bin}/cliproxyapi version")
  end
end

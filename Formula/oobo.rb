class Oobo < Formula
  desc "AI coding analytics — track sessions, tokens, attribution across all your AI tools"
  homepage "https://oobo.ai"
  version "2.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ooboai/oobo/releases/download/v2.0.0/oobo-v2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "b29506025321fd201967463ccede16837a590d85efc9c9a97d0a8ea159631017"
    end
    on_intel do
      url "https://github.com/ooboai/oobo/releases/download/v2.0.0/oobo-v2.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "d7ccaf583a29b3dcd6e5c74d9cfe91cd7c0a38ca387989c2ab9b409300051152"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ooboai/oobo/releases/download/v2.0.0/oobo-v2.0.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d84f3bf04e2b8003387222e40d55480fa887c1f22445f2560792cfedfa4fdb2f"
    end
    on_intel do
      url "https://github.com/ooboai/oobo/releases/download/v2.0.0/oobo-v2.0.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e9466ad766ae390c0aaf31cf81c4c9686b93ba8d59150159677b1d29290b75bb"
    end
  end

  def install
    bin.install "oobo"
  end

  test do
    assert_match "oobo", shell_output("#{bin}/oobo --version")
  end
end

class Oobo < Formula
  desc "AI coding analytics — track sessions, tokens, attribution across all your AI tools"
  homepage "https://oobo.ai"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.1/oobo-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "c54a55a5c92bb7ce1893bf3d132b06d2085993128aad7e1ba449147e4041ef3e"
    end
    on_intel do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.1/oobo-v1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "b492c991c50e1064f2f4a185cca797c8675b32f69ae3826dd6c496440dcea4a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.1/oobo-v1.0.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7d3bb67d39ef4831fae1e2d0b36de04d36e30ea0225001cf4f3473a1707251ff"
    end
    on_intel do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.1/oobo-v1.0.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "15eaf4f8275e989a01bd9e5953196fa36a3648b81a46349f2468a853331c82e7"
    end
  end

  def install
    bin.install "oobo"
  end

  test do
    assert_match "oobo", shell_output("#{bin}/oobo --version")
  end
end

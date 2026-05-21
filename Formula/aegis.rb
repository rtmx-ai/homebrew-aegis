class Aegis < Formula
  desc "Terminal-native agentic AI pair programmer for CUI environments"
  homepage "https://github.com/rtmx-ai/aegis-cli"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rtmx-ai/aegis-cli/releases/download/v0.1.2/aegis-0.1.2-macos-aarch64.tar.gz"
      sha256 "a00f94b5764aec4e0f592481aa67670e27bcb142b7deb1800e63f7883dcd6456"
    end
    on_intel do
      url "https://github.com/rtmx-ai/aegis-cli/releases/download/v0.1.2/aegis-0.1.2-macos-x86_64.tar.gz"
      sha256 "95df892f9b7c52578822a64e737e419e9c5aae838ca822ebb3978672270d2a63"
    end
  end

  def install
    bin.install "aegis"
  end

  test do
    system "#{bin}/aegis", "--version"
  end
end

class Ailinter < Formula
  desc "AI-powered code quality linter and safety visor for AI-assisted development"
  homepage "https://github.com/ailinter/ailinter"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ailinter/ailinter/releases/download/v0.8.1/ailinter_v0.8.1_darwin_arm64"
      sha256 "1b6ffc63562cbfac40871917c0283815d25f16036b0cee3dfb47649a3f14fe2a"
    else
      url "https://github.com/ailinter/ailinter/releases/download/v0.8.1/ailinter_v0.8.1_darwin_amd64"
      sha256 "9d0904da327740e43d02cc188c163f7d2c7e912fb04916d45e8a1ad68e9b5f3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ailinter/ailinter/releases/download/v0.8.1/ailinter_v0.8.1_linux_arm64"
      sha256 "3f8a3c8b39c97561a5bc851df2f4a2709a875598e41f7d157cf39c63a55b239a"
    else
      url "https://github.com/ailinter/ailinter/releases/download/v0.8.1/ailinter_v0.8.1_linux_amd64"
      sha256 "d55ee4bd434fbe01bc2909c054dc6f7019990cd3dabf5ebe78381d20c7ef00ed"
    end
  end

  def install
    bin.install Dir["*"].first => "ailinter"
  end
end

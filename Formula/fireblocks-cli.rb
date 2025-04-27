class FireblocksCli < Formula
  desc "An unofficial CLI for managing Fireblocks services"
  homepage "https://github.com/StirNetwork/fireblocks-cli"
  url "https://github.com/StirNetwork/fireblocks-cli/releases/download/v0.1.9-alpha%2B5/fireblocks_cli-v0.1.9-alpha+5-macos-x86_64.tar.gz"
  sha256 "aaf95b8d96eb0b0a60819bbd4fd97ecb746283d1206a81a0dc9d5deb05f5c010"
  license "MPL-2.0"

  depends_on "python@3.11"

  def install
    bin.install "fireblocks-cli-v0.1.9-alpha+5-x86_64/fireblocks-cli"
  end

  test do
    system "#{bin}/fireblocks-cli", "--help"
  end
end


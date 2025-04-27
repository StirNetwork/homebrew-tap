class FireblocksCli < Formula
  desc "An unofficial CLI for managing Fireblocks services"
  homepage "https://github.com/StirNetwork/fireblocks-cli"
  url "https://github.com/StirNetwork/fireblocks-cli/releases/download/v0.1.8/fireblocks_cli-0.1.8.tar.gz"
  sha256 "42b60747ef24297ecb499fc1beceeee1cbb76e7e07d536284b96444f74cc6c14"
  license "MPL-2.0"

  depends_on "python@3.11"

  def install
    bin.install "fireblocks_cli-0.1.8/fireblocks-cli"
  end

  test do
    system "#{bin}/fireblocks-cli", "--help"
  end
end


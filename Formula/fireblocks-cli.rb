class FireblocksCli < Formula
  desc "An unofficial CLI for managing Fireblocks services"
  homepage "https://github.com/StirNetwork/fireblocks-cli"
  url "https://files.pythonhosted.org/packages/86/e4/5ad65c4ac7689610de02c4112174d927de68360487938b37da063ccedfdc/fireblocks_cli-0.1.9.tar.gz"
  sha256 "829782c4785863eff759cc760adebe69ef5c0e1f05c62496f3bf790b5db84cf5"
  license "MPL-2.0"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/fireblocks-cli", "--help"
  end
end


class FireblocksCli < Formula
  include Language::Python::Virtualenv

  desc "An unofficial CLI for managing Fireblocks services."
  homepage "https://github.com/stirnetwork/fireblocks-cli"
  url "https://files.pythonhosted.org/packages/86/e4/5ad65c4ac7689610de02c4112174d927de68360487938b37da063ccedfdc/fireblocks_cli-0.1.9.tar.gz"
  sha256 "829782c4785863eff759cc760adebe69ef5c0e1f05c62496f3bf790b5db84cf5"
  license "MPL-2.0"

  depends_on "python@3.11"

  resource "typer" do
    url "https://files.pythonhosted.org/packages/8b/6f/3991f0f1c7fcb2df31aef28e0594d8d54b05393a0e4e34c65e475c2a5d41/typer-0.15.2.tar.gz"
    sha256 "ab2fab47533a813c49fe1f16b1a370fd5819099c00b119e0633df65f22144ba5"
  end
  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end
  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/b1/09/a439bec5888f00a54b8b9f05fa94d7f901d6735ef4e55dcec9bc37b5d8fa/tomlkit-0.13.2.tar.gz"
    sha256 "fff5fe59a87295b278abd31bec92c15d9bc4a06885ab12bcea52c71119392e79"
  end
  resource "fireblocks-sdk" do
    url "https://files.pythonhosted.org/packages/8a/d8/6edf422ca9341b0ec3c295e7ffde53c4b4368d69e218bfb1329f00884e84/fireblocks_sdk-2.16.1.tar.gz"
    sha256 "d4f336483f2125d8f3c1e5c1601186b2c9462f160997f5af1b7d1c061515992c"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/fireblocks-cli", "--version"
  end
end

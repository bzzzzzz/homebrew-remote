class Remote < Formula
  include Language::Python::Virtualenv

  desc "Work with remote hosts seamlessly. Code local, build or execute commands remotely."
  homepage "https://github.com/remote-cli/remote"
  url "https://files.pythonhosted.org/packages/8f/b3/759d650194b2ff76fa9da1be2cbeab93bb016dfe13d0614288e82a44569f/remote-exec-1.10.1.tar.gz"
  sha256 "7b335e259254be8441df837a3c5295047f4f5f48133afa59c0d84c86b98dbe26"

  depends_on "python3"

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/b9/19/5cbd78eac8b1783671c40e34bb0fa83133a06d340a38b55c645076d40094/toml-0.10.0.tar.gz"
    sha256 "229f81c57791a41d65e399fc06bf0848bab550a9dfd5ed66df18ce5f05e73d5c"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/97/24/f8e05f16433b3b5332b3e2cf9b4625692c09432c7a18aa1d735fecb80904/pydantic-1.5.1.tar.gz"
    sha256 "f0018613c7a0d19df3240c2a913849786f21b6539b9f23d85ce4067489dfacfa"
  end

  resource "watchdog" do
    url "https://files.pythonhosted.org/packages/0e/06/121302598a4fc01aca942d937f4a2c33430b7181137b35758913a8db10ad/watchdog-0.10.3.tar.gz"
    sha256 "4214e1379d128b0588021880ccaf40317ee156d4603ac388b9adcf29165e0c04"
  end

  resource "pathtools" do
    url "https://files.pythonhosted.org/packages/e7/7f/470d6fcdf23f9f3518f6b0b76be9df16dcc8630ad409947f8be2eb0ed13a/pathtools-0.1.2.tar.gz"
    sha256 "7c35c5421a39bb82e58018febd90e3b6e5db34c5443aaaf742b3f33d4655f1c0"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/remote", "--help"
  end
end

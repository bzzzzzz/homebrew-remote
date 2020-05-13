class Remote < Formula
  include Language::Python::Virtualenv

  desc "Work with remote hosts seamlessly. Code local, build or execute commands remotely."
  homepage "https://github.com/remote-cli/remote"
  url "https://files.pythonhosted.org/packages/03/dd/e4233a217930e1b822153a2e55c550bcd0fabe240f779341bea3f6d92571/remote-exec-1.4.0.tar.gz"
  sha256 "539f24268ebace6933151b17bf8177114d260efb43682e6b115b590fa75c3ebd"

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

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/remote", "--help"
  end
end

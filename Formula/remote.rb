class Remote < Formula
  include Language::Python::Virtualenv

  desc "Work with remote hosts seamlessly. Code local, build or execute commands remotely."
  homepage "https://github.com/shirshanka/remote"
  url "https://files.pythonhosted.org/packages/7f/b7/07c84eee90712f789512e737ba1fe5df0f6daee0045f223ad20997323ee1/remote-exec-1.3.7.tar.gz"
  sha256 "c2b0ea5d55476092324015b6297bf7b5417356b9503f9d1ecd7571ab874d3259"

  depends_on "python@3.8"

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/remote", "--help"
  end
end

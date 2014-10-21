require "formula"

class Normalizenumexp < Formula
  homepage "http://www.cl.ecei.tohoku.ac.jp/~katsuma/software/normalizeNumexp/"
  url "https://github.com/nullnull/normalizeNumexp.git", :branch => 'master'
  version "3.0"

  depends_on 'ux'
  depends_on 'pficommon'

  def install
    system "./waf configure --prefix=#{prefix}"
    system "./waf build"
    system "./waf install"
  end

  test do
    system "false"
  end
end

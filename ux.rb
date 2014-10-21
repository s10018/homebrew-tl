require "formula"

class Ux < Formula
  homepage "https://code.google.com/p/ux-trie/"
  url "https://ux-trie.googlecode.com/files/ux-0.1.9.tar.bz2"
  sha1 "34d3372b4add8bf4e9e49a2f786b575b8372793f"

  def install
    system "./waf configure --prefix=#{prefix}"
    system "./waf"
    system "./waf", "install"
  end

  test do
    system "false"
  end
end

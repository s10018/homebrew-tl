require "formula"

class Classias < Formula

  homepage "http://www.chokkan.org/software/classias/"
  url "http://www.chokkan.org/software/dist/classias-1.1.tar.gz"
  sha1 "b1fc7c6b822b09c818a6f32f19997cba0040c102"

  depends_on "liblbfgs"
  depends_on "gcc46" => :build

  def install
    gcc46 = Formula["gcc46"]
    system "CXX=#{gcc46.bin}/g++-4.6 ./configure --prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end

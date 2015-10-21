require "formula"

class Ckylark < Formula

  homepage "http://odaemon.com/?page=tools_ckylark"
  url "https://github.com/odashi/Ckylark.git", :using => :git, :branch => 'master'
  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  version 'HEAD'

  def install
    system "autoreconf -i"
    system "./configure", "--disable-debug",
                          "--prefix=#{prefix}"
    system "make", "install"

    ohai "Model is installed to #{share}/ckylark"
    ohai "Please type below command to parse:"
    ohai "ckylark --model `brew --prefix ckylark`/share/ckylark/[wsj|jdc] < input"

  end

  test do
    system "false"
  end
end

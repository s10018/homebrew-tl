require "formula"

class Knp < Formula
  homepage "http://nlp.ist.i.kyoto-u.ac.jp/index.php?KNP"
  url "http://nlp.ist.i.kyoto-u.ac.jp/DLcounter/lime.cgi?down=http://nlp.ist.i.kyoto-u.ac.jp/nl-resource/knp/knp-4.11.tar.bz2&name=knp-4.11.tar.bz2"
  sha1 "56ee0f9e5dfd1fa4cc87a02043c5eb3b9af6812a"

  option "with-crf", "use crf"

  if build.with? "crf"
    depends_on "crf++"
  end

  def install
    juman = Formula["juman"]
    args = %W[
      --prefix=#{prefix}
      --with-juman-prefix=#{juman.opt_prefix}
    ]
    if build.with? "crf"
       args << "--with-crf"
    end
    system "./configure", *args
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end

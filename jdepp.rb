require "formula"

class Jdepp < Formula
  homepage "http://www.tkl.iis.u-tokyo.ac.jp/~ynaga/jdepp/"
  url "http://www.tkl.iis.u-tokyo.ac.jp/~ynaga/jdepp/jdepp-2014-06-22.tar.gz"
  sha1 "ecd3165dca74f5da27ea457dd26030183748278d"

  depends_on 'mecab'
  option 'enable-standalone'

  def install
    args = %W[
	"--prefix=#{prefix}"
    ]
    system "./configure", *args
    system "make"
    system "make", "model"
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test jdepp`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

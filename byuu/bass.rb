require 'formula'

class Bass < Formula
  url 'http://byuu.org/files/bass_v08r01.tar.xz'
  homepage 'http://byuu.org/programming/'
  md5 'dc712971e5250062ce2b23216f0a61f4'

  depends_on 'gcc' # 4.7+

  def install
    # system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make"
  end
end

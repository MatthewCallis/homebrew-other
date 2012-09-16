require 'formula'

class Bass < Formula
  homepage 'http://byuu.org/programming/'
  head 'https://github.com/MatthewCallis/usart.git'

  depends_on 'gcc' # 4.7+

  def install
    inreplace 'nall/Makefile' do |s|
      s.gsub! "gcc-mp-4.7", "gcc-4.7"
    end

    system "./build.sh"
    bin.install 'usart'
  end
end

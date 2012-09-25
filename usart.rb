require 'formula'

class Usart < Formula
  homepage 'http://byuu.org/programming/'
  head 'https://github.com/MatthewCallis/usart.git'

  depends_on 'homebrew/dupes/gcc' # 4.7+

  def install
    inreplace 'nall/Makefile' do |s|
      s.gsub! "gcc-mp-4.7", "gcc-4.7"
    end

    inreplace 'nall/emulation/super-famicom-usart.hpp' do |s|
      s.gsub! "/dev/ttyACM0", "/dev/cu.usbmodem12341"
    end

    system "make"
    bin.install 'usart'
  end
end

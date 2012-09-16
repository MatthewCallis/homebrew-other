require 'formula'

class Bass < Formula
  url 'http://byuu.org/files/bass_v08r01.tar.xz'
  homepage 'http://byuu.org/programming/'
  sha1 '120844fcd373f1b59bc817e1b1e41ae1d48824d6'

  depends_on 'gcc' # 4.7+

  # Point to the correct GCC, not MacPorts.
  def patches
    # DATA
  end

  def install
    system "make"
    system "make install"
  end
end

__END__
diff --git a/nall/Makefile b/nall/Makefile
index bbc4b02..a9913c8 100755
--- a/nall/Makefile
+++ b/nall/Makefile
@@ -38,7 +38,7 @@ ifeq ($(compiler),)
   ifeq ($(platform),win)
     compiler := gcc
   else ifeq ($(platform),osx)
-    compiler := gcc-mp-4.7
+    compiler := gcc-4.7
   else
     compiler := gcc-4.7
   endif

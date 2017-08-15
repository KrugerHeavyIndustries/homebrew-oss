class RestclientCpp < Formula
  desc "C++ client for making HTTP/REST requests"
  homepage "http://code.mrtazz.com/restclient-cpp/"
  url "https://github.com/KrugerHeavyIndustries/restclient-cpp/archive/0.4.6.tar.gz"
  version "0.4.6"
  sha256 "cce0a7f0e7ccd7e03e20344789d1eae86f8f3c827b159ff5e7326c2ef9e7854a"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool"  => :build

  def install
    system "./autogen.sh"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end

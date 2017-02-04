class RestclientCpp < Formula
  desc "C++ client for making HTTP/REST requests"
  homepage "http://code.mrtazz.com/restclient-cpp/"
  url "https://github.com/mrtazz/restclient-cpp/archive/0.4.5.tar.gz"
  version "0.4.5"
  sha256 "395408a3dc9c3db2b5c200b8722a13a60898c861633b99e6e250186adffd1370"

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

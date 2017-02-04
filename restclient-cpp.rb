class RestclientCpp < Formula
  desc "C++ client for making HTTP/REST requests"
  homepage "http://code.mrtazz.com/restclient-cpp/"
  url "https://github.com/KrugerHeavyIndustries/restclient-cpp/archive/0.4.5.tar.gz"
  version "0.4.5"
  sha256 "89fc7c7e0d994ca45df3033efa57866e352928f77f49711832baa2169593a925"

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

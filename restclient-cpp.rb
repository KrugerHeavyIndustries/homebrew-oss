class RestclientCpp < Formula
  desc "C++ client for making HTTP/REST requests"
  homepage "http://code.mrtazz.com/restclient-cpp/"
  url "https://github.com/mrtazz/restclient-cpp/archive/0.5.3.tar.gz"
  version "0.5.3"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

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

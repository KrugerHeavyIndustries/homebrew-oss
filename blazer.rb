class Blazer < Formula
  desc "Backblaze B2 command line client"
  homepage "https://github.com/KrugerHeavyIndustries/blazer"
  url "https://github.com/KrugerHeavyIndustries/blazer/archive/0.4.8.tar.gz"
  version "0.4.8"
  sha256 "da6107e52e03ae525fcf93cfce1192cc8b9345031e3388de509b789fde3eb3e0"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on 'restclient-cpp'
  depends_on 'openssl'
  depends_on 'jansson'

  def install
    system "autoreconf", "--install", "--force"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end

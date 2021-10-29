class Blazer < Formula
  desc "Backblaze B2 command line client"
  homepage "https://github.com/KrugerHeavyIndustries/blazer"
  url "https://github.com/KrugerHeavyIndustries/blazer/archive/0.4.3.tar.gz"
  version "0.4.3"
  sha256 "75e8b22ada4240a26cd4e3fdf60fa5359efb01eb262a603a5bc6aa24eb0abc97"

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

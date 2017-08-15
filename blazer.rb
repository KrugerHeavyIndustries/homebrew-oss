class Blazer < Formula
  desc "Backblaze B2 command line client"
  homepage "https://github.com/KrugerHeavyIndustries/blazer"
  url "https://github.com/KrugerHeavyIndustries/blazer/archive/0.4.1.tar.gz"
  version "0.4.1"
  sha256 "0869f50eadab905a7279524537a711010189b296cb43a48a96761cb222071c02"

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


class Ouctl < Formula
  desc "Deploys openunison into kubernetes"
  homepage "https://openunison.github.io/deployauth/"
  url "https://github.com/TremoloSecurity/openunison-control/archive/refs/tags/v0.0.10.tar.gz"
  sha256 "56855096f60e39561c734f77367f7b9742fc3faa99e7562b4411062984c7eb5c"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end

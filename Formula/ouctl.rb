class Ouctl < Formula
  desc "Deploys openunison into kubernetes"
  homepage "https://openunison.github.io/deployauth/"
  url "https://github.com/TremoloSecurity/openunison-control/archive/refs/tags/v0.0.12.tar.gz"
  sha256 "7b008d7276999884ae1f89658c72a949598ae4b8bcf2242d13c015b3e0c3450a"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end

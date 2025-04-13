class Ouctl < Formula
  desc "Deploys openunison into kubernetes"
  homepage "https://openunison.github.io/deployauth/"
  url "https://github.com/TremoloSecurity/openunison-control/archive/refs/tags/v0.0.13.tar.gz"
  sha256 "7a4c59194c97c1a1d4a2b2a076ff8f877b264a5a10a034e1764afb7af9bfa947"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end

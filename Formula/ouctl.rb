class Ouctl < Formula
  desc "Deploys openunison into kubernetes"
  homepage "https://openunison.github.io/deployauth/"
  url "https://github.com/TremoloSecurity/openunison-control/archive/refs/tags/v0.0.11.tar.gz"
  sha256 "b1a0428e4f7a72ad9e4818333a8481c148ed698ec619be6c1e4e9441d48eb90c"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end

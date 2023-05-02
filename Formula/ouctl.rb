class Ouctl < Formula
  desc "Deploys openunison into kubernetes"
  homepage "https://openunison.github.io/deployauth/"
  url "https://github.com/TremoloSecurity/openunison-control/archive/refs/tags/v0.0.11.1.tar.gz"
  sha256 "d432afb4e5c19c65be5d39367db35c9ce29230118a163e169b7ea5ef5250fd5a"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end

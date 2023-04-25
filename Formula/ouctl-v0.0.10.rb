# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class OuctlV0010 < Formula
  desc "The ouctl command will deploy OpenUnison into your Kubernetes cluster and integrate additional clusters into your control plane"
  homepage "https://openunison.github.io/deployauth/"
  url "https://github.com/TremoloSecurity/openunison-control/archive/refs/tags/v0.0.10.tar.gz"
  sha256 "56855096f60e39561c734f77367f7b9742fc3faa99e7562b4411062984c7eb5c"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ouctl-v0.0.10`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

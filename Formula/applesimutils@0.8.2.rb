class ApplesimutilsAT082 < Formula
  desc "Apple simulator utilities"
  homepage "https://github.com/wix/AppleSimulatorUtils"
  url "https://github.com/wix/AppleSimulatorUtils/releases/download/0.8.2/AppleSimulatorUtils-0.8.2.tar.gz"
  sha256 "b616aab0e26d4a4a095b2589be130aff0d4cd215276c2d6d658a2ca99fef9caf"
  head "https://github.com/wix/AppleSimulatorUtils.git"

  depends_on xcode: ["8.0", :build]

  def install
    system "./buildForBrew.sh", prefix
  end

  test do
    system "#{bin}/applesimutils", "--help"
  end
end

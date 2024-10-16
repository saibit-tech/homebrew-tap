class OgcCli < Formula
  desc "ogc"
  homepage "https://github.com/saibit-tech/open-gpu-cloud"
  version "0.0.1"

  if Hardware::CPU.intel?
    url "https://github.com/saibit-tech/homebrew-ogc-cli/releases/download/ogc-cli-v0.0.1/ogc_cli-darwin_amd64"
    sha256 "3c0b574a94bb4249aebb6ca903b4fd0516d7699886253b135859799576396b1d"
  elsif Hardware::CPU.arm?
    url "https://github.com/saibit-tech/homebrew-ogc-cli/releases/download/ogc-cli-v0.0.1/ogc_cli-darwin_arm64"
    sha256 "13dd2f8f19f02e3145165fce0de8e226f5dff4994c7779888238952b0b5a6b8e"
  else
    odie "Unsupported CPU architecture"
  end

  def install
    if Hardware::CPU.intel?
      bin.install "ogc_cli-darwin_amd64" => "ogc"
    elsif Hardware::CPU.arm?
      bin.install "ogc_cli-darwin_arm64" => "ogc"
    end
    system "xattr", "-c", "#{bin}/ogc"
  end

  test do
     # Test if the binary runs and prints version information
     assert_match version.to_s, shell_output("#{bin}/ogc --version")
   end

end
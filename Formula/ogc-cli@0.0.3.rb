class OgcCliAT003 < Formula
  desc "ogc"
  homepage "https://github.com/saibit-tech/open-gpu-cloud"
  version "0.0.3"

  if Hardware::CPU.intel?
    url "https://github.com/saibit-tech/homebrew-ogc-cli/releases/download/ogc-cli-v0.0.3/ogc_cli-darwin_amd64"
    sha256 "340d392ba4968203325bb4e30eb890eb145e3aa2023cb9f416b9df9dd7558b77"
  elsif Hardware::CPU.arm?
    url "https://github.com/saibit-tech/homebrew-ogc-cli/releases/download/ogc-cli-v0.0.3/ogc_cli-darwin_arm64"
    sha256 "903db130e2aeeb0d4ec32e5df9378cc503eb0dc8b0a401073c8eb4f885de95d6"
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
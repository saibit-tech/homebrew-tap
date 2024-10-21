class OgcCliAT003 < Formula
  desc "ogc"
  homepage "https://github.com/saibit-tech/open-gpu-cloud"
  version "0.0.3"

  if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.3/ogc_cli-darwin_amd64"
      sha256 "340d392ba4968203325bb4e30eb890eb145e3aa2023cb9f416b9df9dd7558b77"
    end

    if OS.mac? && Hardware::CPU.arm?
       url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.3/ogc_cli-darwin_arm64"
       sha256 "903db130e2aeeb0d4ec32e5df9378cc503eb0dc8b0a401073c8eb4f885de95d6"
    end

    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.3/ogc_cli-linux_amd64"
      sha256 "30a0a3eb0f3d5ed78b5613ac9b1e26f144821877a91c1cc1d530edfbbfb345c9"
    end

    if OS.linux? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.3/ogc_cli-linux_arm64"
      sha256 "92851dccd167938b2391d6644b0d22d052d319c06b23fca52435ccf51fa90f4d"
    end

  def install
    if OS.mac? &&Hardware::CPU.intel?
      bin.install "ogc_cli-darwin_amd64" => "ogc"
    end
    if OS.mac? &&Hardware::CPU.arm?
      bin.install "ogc_cli-darwin_arm64" => "ogc"
    end

    if OS.linux? && Hardware::CPU.intel?
       bin.install "ogc_cli-linux_amd64" => "ogc"
    end

    if OS.linux? && Hardware::CPU.arm?
       bin.install "ogc_cli-linux_arm64" => "ogc"
    end
  end

  test do
     # Test if the binary runs and prints version information
     assert_match version.to_s, shell_output("#{bin}/ogc --version")
   end

end
class OgcCliAT002 < Formula
  desc "ogc"
  homepage "https://github.com/saibit-tech/open-gpu-cloud"
  version "0.0.2"

  if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-ogc-cli/releases/download/ogc-cli-v0.0.2/ogc_cli-darwin_amd64"
      sha256 "3c0b574a94bb4249aebb6ca903b4fd0516d7699886253b135859799576396b1d"
    end

    if OS.mac? && Hardware::CPU.arm?
       url "https://github.com/saibit-tech/homebrew-ogc-cli/releases/download/ogc-cli-v0.0.2/ogc_cli-darwin_arm64"
       sha256 "13dd2f8f19f02e3145165fce0de8e226f5dff4994c7779888238952b0b5a6b8e"
    end

    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-ogc-cli/releases/download/ogc-cli-v0.0.2/ogc_cli-linux_amd64"
      sha256 "3c87a28cf98a439623cd41e92f46c2a8c7ff7f72875dde459f01fc2a03d8f3f4"
    end

    if OS.linux? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-ogc-cli/releases/download/ogc-cli-v0.0.2/ogc_cli-linux_arm64"
      sha256 "f2aa6eb954e3fc091f8b0d7f85bb9bd129a5da0193cf350a8cfe0baa32b2f2cf"
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
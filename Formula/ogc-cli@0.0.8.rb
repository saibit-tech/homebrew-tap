  class OgcCliAT008 < Formula
    desc "ogc"
    homepage "https://github.com/saibit-tech/open-gpu-cloud"
    version "0.0.8"

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.8/ogc_cli-darwin_amd64"
      sha256 "daea281b539241668679896a64cefd5f9958b97323d23d1672414191a7d84d1f"
    end

    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.8/ogc_cli-darwin_arm64"
      sha256 "3a2c5a1fefdd1e2241140804567315f5d14f52289e1c2c6b46c4528477eaf013"
    end

    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.8/ogc_cli-linux_amd64"
      sha256 "8ead566585b728243944fd288f0c0e77a26cf397c90ca73adb7301697d759baf"
    end

    if OS.linux? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.8/ogc_cli-linux_arm64"
      sha256 "45e98ae43c5de3de901f73e58ba1a09ea01a2429085f23aacd81e9a7b93df02d"
    end

    def install
      if OS.mac? && Hardware::CPU.intel?
        bin.install "ogc_cli-darwin_amd64" => "ogc"
      end
      if OS.mac? && Hardware::CPU.arm?
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
      assert_match version.to_s, shell_output("#{bin}/ogc --version")
    end
 end

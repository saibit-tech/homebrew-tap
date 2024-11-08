  class OgcCliAT006 < Formula
    desc "ogc"
    homepage "https://github.com/saibit-tech/open-gpu-cloud"
    version "0.0.6"

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.6/ogc_cli-darwin_amd64"
      sha256 "27c115f99b9a6436d136b99de559ce607ff392358d0c730f0eb0eafb5f2206dd"
    end

    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.6/ogc_cli-darwin_arm64"
      sha256 "838cc05f46b4f11560ffa02778e19d47bc494a8688e646edb696259bec77e4b7"
    end

    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.6/ogc_cli-linux_amd64"
      sha256 "3e666085282a23e51ff05cb93aee4bdac1043469b5c809848ee5f22c049a9781"
    end

    if OS.linux? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.6/ogc_cli-linux_arm64"
      sha256 "4e96eaa7ced671db888151198aa4cfc9fec66e0f00f813385d11d614171bfccd"
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

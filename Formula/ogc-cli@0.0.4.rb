  class OgcCliAT004 < Formula
    desc "ogc"
    homepage "https://github.com/saibit-tech/open-gpu-cloud"
    version "0.0.4"

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.4/ogc_cli-darwin_amd64"
      sha256 "54f433a2320399a81cdb6f0f178f30e406f3e2a2c5667f31bd1da1ec31eff6f3"
    end

    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.4/ogc_cli-darwin_arm64"
      sha256 "8490482c817e06db2eff5d12e8ccddee462c57b39cf68dd8f3b293adf7e77125"
    end

    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.4/ogc_cli-linux_amd64"
      sha256 "2556215269b78f41e5bc8f129596dcb24a2383be86fa1ff1eee5477b5a562012"
    end

    if OS.linux? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.4/ogc_cli-linux_arm64"
      sha256 "49f451d9509cec70d02c7a02f57ccdf95c18a19f27aa8a3475cc5a8debda0448"
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

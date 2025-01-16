  class OgcCliAT007 < Formula
    desc "ogc"
    homepage "https://github.com/saibit-tech/open-gpu-cloud"
    version "0.0.7"

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.7/ogc_cli-darwin_amd64"
      sha256 "063003fa9c31e7fa14115436be50ff8d92ce9e6f4460c2c35f94d6da4d1e1e22"
    end

    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.7/ogc_cli-darwin_arm64"
      sha256 "31db73ac4c37fd807a982528c4db637c8363bb65b7e39d7f65e024d1b3ef81c1"
    end

    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.7/ogc_cli-linux_amd64"
      sha256 "4868bedcacbd9969621d1a5135726e51c0c885058cf0bfd58da50021c469d943"
    end

    if OS.linux? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.7/ogc_cli-linux_arm64"
      sha256 "25acdd7cb8a516aeb785b81d2a38e6d421a479521ca9c4f34b628a2e94cb8c3a"
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

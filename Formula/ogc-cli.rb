  class OgcCli < Formula
    desc "ogc"
    homepage "https://github.com/saibit-tech/open-gpu-cloud"
    version "0.0.5"

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.5/ogc_cli-darwin_amd64"
      sha256 "78498c5b6010a3cae1e5b9d7b8d5409dbbb6b0f782ccb1882d8fd2b21f3438cf"
    end

    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.5/ogc_cli-darwin_arm64"
      sha256 "ed937685ca36612e8413a945b2a8cff6b20320af28064451444816a39d475337"
    end

    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.5/ogc_cli-linux_amd64"
      sha256 "6ac5089e84830021b38f389fbc0116017719595043b1153d33371c4d41a0b0fc"
    end

    if OS.linux? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.5/ogc_cli-linux_arm64"
      sha256 "efbb2d6e88477b628a59339c5f09473d9de1885a0e2454e48e7971386100b827"
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

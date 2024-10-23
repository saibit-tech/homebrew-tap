  class OgcCliAT005 < Formula
    desc "ogc"
    homepage "https://github.com/saibit-tech/open-gpu-cloud"
    version "0.0.5"

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.5/ogc_cli-darwin_amd64"
      sha256 "c78bf3d621539a3cfb65d50d0f7ffd7ff5a704939f3aa3d0b0f09760a51b744d"
    end

    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.5/ogc_cli-darwin_arm64"
      sha256 "99b228acf3b579867e40705f0bfa27c7a05438a5b78f3a0d9aaf5c1f94b23b51"
    end

    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.5/ogc_cli-linux_amd64"
      sha256 "d8deffb632b6c4da2df2d7191d44328b8d19ce9a5328c569b8a2f16b1b0508aa"
    end

    if OS.linux? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.0.5/ogc_cli-linux_arm64"
      sha256 "d955e1d50cb1156205ce0b68a1bce984e8cb147573fad890fcf9ade24f2e369a"
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

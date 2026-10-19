class Makedmg < Formula
  desc "Build styled macOS DMGs from a JSON config, without Finder"
  homepage "https://github.com/umindhub/MakeDmg"
  url "https://github.com/umindhub/MakeDmg/releases/download/v1.0.0/makedmg-1.0.0-macos.tar.gz"
  version "1.0.0"
  sha256 "04a426a33ce3863e7ea5a0f1350225845771617d61e583201e546adbcaab9add"
  license "AGPL-3.0-only"

  depends_on macos: :ventura

  def install
    bin.install "makedmg"
    generate_completions_from_executable(bin/"makedmg", "--generate-completion-script")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/makedmg --version").strip
    system bin/"makedmg", "init", "-o", testpath/"makedmg.json"
    assert_path_exists testpath/"makedmg.json"
  end
end

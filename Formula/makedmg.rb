class Makedmg < Formula
  desc "Build styled macOS DMGs from a JSON config, without Finder"
  homepage "https://github.com/umindhub/MakeDmg"
  url "https://github.com/umindhub/MakeDmg/releases/download/v0.1.0/makedmg-0.1.0-macos.tar.gz"
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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

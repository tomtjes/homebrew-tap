class Waveform < Formula
  desc "Uploads transactions from a csv file to a waveapps.com account"
  homepage "https://github.com/tomtjes/waveform"
  url "https://github.com/tomtjes/waveform/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "276d3f20a24f78941647925d315f094814745f549cb6671ddfed855b102d3473"
  license "MIT"

  depends_on "python@3.9"

  def install
    bin.install "waveform.py" => "waveform"
    mkdir "#{bin}/lib"
    mv "lib/waveform_globals.py", "#{bin}/lib/"
    mv "lib/waveform_helpers.py", "#{bin}/lib/"
    mv "lib/waveform_post.py", "#{bin}/lib/"
    mv "lib/waveform_search.py", "#{bin}/lib/"
    mv "lib/waveform_setup.py", "#{bin}/lib/"
    mv "lib/waveform_wave.py", "#{bin}/lib/"
  end
  test do
    system "false"
  end
end

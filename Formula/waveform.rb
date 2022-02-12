class Waveform < Formula
  desc "Uploads transactions from a csv file to a waveapps.com account"
  homepage "https://github.com/tomtjes/waveform"
  url "https://github.com/tomtjes/waveform/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "b5ca11d74fd7c7221da7963aeb31a879cda016b14f2fbae6583200ed89971e61"
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

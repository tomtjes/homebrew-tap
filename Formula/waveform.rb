class Waveform < Formula
  desc "Uploads transactions from a csv file to a waveapps.com account"
  homepage "https://github.com/tomtjes/waveform"
  url "https://github.com/tomtjes/waveform/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "b5ca11d74fd7c7221da7963aeb31a879cda016b14f2fbae6583200ed89971e61"
  license "MIT"

  depends_on "python@3.9"

  def install
    bin.install "waveform.py" => "waveform"
    prefix.install "waveform_globals.py",
      "waveform_helpers.py",
      "waveform_post.py",
      "waveform_search.py",
      "waveform_setup.py",
      "waveform_wave.py"
  end

  test do
    system "false"
  end
end

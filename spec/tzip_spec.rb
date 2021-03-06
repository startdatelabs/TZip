require "spec_helper"

describe TZip do
  # Alaska
  %w(99615 99615 99927).each{|zip|
    it { print zip; expect(lookup_zip(zip)).to eq('Alaska') }
  }

  # Arizona
  %w(85364 85756).each{|zip|
    it { print zip; expect(lookup_zip(zip)).to eq('Arizona') }
  }

  # Central
  %w(37013 38104 38138 38301 49801 49812 49815 49821 49831 49834 49847 49858 49873 49874 49881 49887 49892 49893 49896 49920 49935 49938 49968 49969 60629 66062 67214 58103 58201 58501 66606 68510 69201 69214).each{|zip|
    it { print zip; expect(lookup_zip(zip)).to eq('Central Time (US & Canada)') }
  }

  # Eastern
  %w(00926 08701 11226 23464 28269 30043 30044 48201 48430 48109 32308 37604 37917 32207 32216 41017 40502 46032 48124 48197 48307 48532 48912 49008 49925 49546 49684 48503 ).each{|zip|
    it { print zip; expect(lookup_zip(zip)).to eq('Eastern Time (US & Canada)') }
  }

  # Hawaii
  %w(96716 96839).each{|zip|
    it { print zip; expect(lookup_zip(zip)).to eq('Hawaii') }
  }

  # Mountain
  %w(59430 79936 84101 87121 97903).each{|zip|
    it { print zip; expect(lookup_zip(zip)).to eq('Mountain Time (US & Canada)') }
  }

  # Pacific
  %w(89110 90011 90650 97701 97301 97330 97225 97504 97051).each{|zip|
    it { print zip; expect(lookup_zip(zip)).to eq('Pacific Time (US & Canada)') }
  }
end

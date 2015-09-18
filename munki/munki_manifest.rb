# munki_manifest.rb
Facter.add(:munki_manifest) do
  confine :kernel => "Darwin"
  setcode do
    Facter::Util::Resolution.exec("/usr/bin/defaults read '/Library/Preferences/ManagedInstalls' ClientIdentifier 2>/dev/null")
  end
end
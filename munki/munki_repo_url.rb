# munki_repo_url.rb
Facter.add(:munki_repo_url) do
  confine :kernel => "Darwin"
  setcode do
    Facter::Util::Resolution.exec("/usr/bin/defaults read '/Library/Preferences/ManagedInstalls' SoftwareRepoURL 2>/dev/null")
  end
end
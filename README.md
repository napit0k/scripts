# scripts

### check_updates.rb

Packages for ArchLinux from the [AUR repository](https://wiki.archlinux.org/index.php/Arch_User_Repository) require user's attention to keep them up to date. 
This script checks the git status for all direct children directories and outputs a short summary.

```
$ ls -1 
check_updates.rb
gnome-shell-extension-dash-to-dock
gnome-shell-extension-notification-center-git
google-chrome
teamviewer
zoom

$ ruby check_updates.rb 
%|vanchope|Arch::Utilities::AUR|v.0.0.3| Checking for updates for inner git directories.
/home/ivan/tmp/AUR/zoom...  update available to 27f2121
/home/ivan/tmp/AUR/google-chrome...  ok
/home/ivan/tmp/AUR/gnome-shell-extension-notification-center-git...  ok
/home/ivan/tmp/AUR/gnome-shell-extension-dash-to-dock...  update available to 42e08aa
/home/ivan/tmp/AUR/teamviewer...  ok
(!!!) some packages have updates (!!!)
```

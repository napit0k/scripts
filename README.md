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
zoom

$ ruby check_updates.rb 
%|napit0k|Arch::Utilities::AUR| Checking git status for inner directories.
/home/~~~~/zoom...  ok
/home/~~~~/google-chrome...  ok
/home/~~~~/gnome-shell-extension-notification-center-git...  ok
/home/~~~~/gnome-shell-extension-dash-to-dock...  ok
Packages are up to date.
```

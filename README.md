# CpuMiner STB / UserLand Android / Termux #
<pre> curl -o- -k https://raw.githubusercontent.com/jeptidaeng/termux-miner/main/install.sh | bash </pre>

Rekap Kode Pemasangan Ubuntu For Termux

# Cara pemasangan Ubuntu Menggunakan Termux #
pkg update && pkg upgrade -y
pkg install python
pkg install git
pkg install wget
{Untuk install proot-disto Ubuntu}
1. pkg install proot-distro
2. pkg install list
3. Supported distributions (format: name < alias >):

  * Adélie Linux < adelie >
  * Alpine Linux < alpine >
  * Arch Linux < archlinux >
  * Artix Linux < artix >
  * Chimera Linux < chimera >
  * Debian (bookworm) < debian >
  * deepin < deepin >
  * Fedora < fedora >
  * Manjaro < manjaro >
  * openKylin < openkylin >
  * OpenSUSE < opensuse >
  * Pardus < pardus >
  * Rocky Linux < rockylinux >
  * Ubuntu (24.04) < ubuntu > <=====
  * Void Linux < void >

Install selected one with: proot-distro install <alias>
4. proot-distro install ubuntu

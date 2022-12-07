#
# ~/.bashrc
#

EDITOR=vim

if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
    tmux attach || tmux >/dev/null 2>&1
fi

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

#aircrack-ng	- CLI wireless hacking tool
#android-studio	- GUI Android Development IDE
#angr-management- GUI ANGR gui tool
#ani-cli	- CLI-GUI anime client
#bettercap	- GUI packet sniffer and modifier
#burpsuite	- GUI Proxy software
#cabal		- CLI haskell build tool
#code 		- GUI Text Editor
#diec		- CLI Detect It Easy, executable analysis tool
#dnsutils	- CLI dig, host, nslookup
#docker		- CLI/GUI container environment/virtual machines
#edb-debugger	- GUI Debugger
#elfparser	- CLI Tool for analyzing ELF files
#emulatr	- GUI Android Emulator
#erl		- CLI Erlang interpreter
#ettercap 	- GUI/CLI wireless sniffing
#firefox	- GUI web browser
#frotz		- CLI Z-Machine emulator
#git		- CLI software versioning tool
#gcc,gdc,g++	- CLI C, C++ tools
#ghc		- CLI haskell compiler
#ghci		- CLI haskell interpreter
#gpsim		- GUI Breadboard simulator
#hakrawler	- CLI web spidering tool
#ida		- WIN IDA PRO 32 disassembler
#ida64		- WIN IDA PRO 64 disassembler
#ida64l		- LIN IDA PRO 64 disassembler
#iex		- CLI Elixir interpreter
#i2c-tools	- CLI serial communication protocol tools
#java		- CLI Java compiler
#jarsigner	- CLI jarsigner tool
#jbe		- GUI Java Bytecode Editor
#john		- CLI Password cracking tool
#Karat		- WIN Packet Builder Tool
#keytool	- CLI keytool tool
#kicad		- GUI PCB design tool
#kismet		- CLI wifi sniffing tool
#libreoffice	- GUI Business software packet
#lynx 		- CLI web browser
#matlab		- WIN Matlab program
#metasploit	- CLI hacking tool
#moebius	- GUI ANSI text editor
#mspaint	- GUI Windows XP paint
#mutt		- CLI mail client
#nasm		- CLI assembly compiler
#nmap 		- CLI network scanning tool
#ngrok		- CLI tunneling tool 
#okteta		- GUI Hexadecimal text editor
#ollydbg	- GUI Windows .exe i .dll debugger
#postman	- GUI REST testing app
#proxychains-ng	- CLI proxychaining tool
#python3 	- CLI PYTHON interpreter
#ranger		- CLI file explorer
#recaf		- GUI Java Bytecide editor new
#rofi		- GUI menu
#rsactftool	- CLI rsa ctf tool
#rstudio	- GUI Statistical tool
#rtv		- CLI reddit client
#rustc		- CLI rust compiler
#snort		- CLI IDS
#spss		- WIN statistics program
#telegram-desk	- GUI telegram client
#tg		- CLI telegram client
#tmux		- CLI terminal multiplexer
#tor		- CLI Tor network
#tor-browser 	- GUI Proxy chain that routes traffic trough tor
#torsocks	- CLI Proxy chain that routes traffic trough tor
#traceroute	- CLI traceroute
#upx		- CLI executable packer
#vice		- GUI Commodore 64 emulator
#vlc		- GUI media player
#vol		- CLI Volatility forensic tool
#xxd		- CLI Hexadecimal text editor
#yay		- CLI AUR package manager
#wine		- WIN Windows program execute
#wireshark	- GUI Network analysis
#woeusb		- CLI Windows installer to usb
#zaproxy	- GUI Penetration testing tool
#zenmap		- GUI Network scanner
#zork1		- CLI zork game I
#~(tilda)	- GUI Top-Down terminal

alias cic="python /home/mirko/.local/bin/cicflowmeter"
alias moebius="wine C:\\\\users\\\\mirko\\\\AppData\\\\Local\\\\Programs\\\\moebius\\\\Moebius.exe"
alias matlab="wine /home/mirko/.wine/drive_c/\"Program Files\"/MATLAB/R2017a/bin/matlab.exe"
alias mspaint="wine /home/mirko/Tools/mspaintWinXP/mspaint.exe"
alias ghidra="/home/mirko/Tools/ghidra10.3/build/dist/ghidra_10.1.3_DEV_20220501_linux_x86_64/ghidra_10.1.3_DEV/ghidraRun"
alias ida="wine ~/Tools/IdaPro7.6/Ida.exe"
alias ida64="wine ~/Tools/IdaPro7.6/Ida64.exe"
alias ida64l="~/idafree*/ida64"
alias torp="systemctl start tor.service"	#tor pocni
alias tori="systemctl status tor.service"	#tor info
alias toro="systemctl stop tor.service"		#tor okoncaj
#NAPRAVI ALIAS tor = systemctl start tor.service i stop tor.service i status tor.service
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

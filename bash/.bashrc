#
# ~/.bashrc
#

export VISUAL=nvim;
export EDITOR=nvim;

# tmux list-sessions | grep -v attached | cut -d: -f1 |  xargs -t -n1 tmux kill-session -t

if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
    tmux new || tmux >/dev/null 2>&1
fi

tmux ls | grep -v "(attached)" | cut -d ":" -f 1 | while read inp; do echo "turning off session: $inp"; tmux kill-session -t $inp; done

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

# TODO: create tools by categories -> #pwn #programming...

#aircrack-ng	- CLI wireless hacking tool
#android-studio	- GUI Android Development IDE
#angr-management- GUI ANGR gui tool
#ani-cli	- CLI-GUI anime client
#bettercap	- GUI packet sniffer and modifier
#burpsuite	- GUI Proxy software
#cargo      - CLI Rust project manager      :lang
#cabal		- CLI haskell build tool        :lang
#code 		- GUI Text Editor
#composer   - CLI php package manager
#cutter     - GUI binary analysis/decompiler program
#dbeaver    - GUI mysql client
#diec		- CLI Detect It Easy, executable analysis tool
#dnsutils	- CLI dig, host, nslookup
#docker		- CLI/GUI container environment/virtual machines
#edb-debugger	- GUI Debugger
#elfparser	- CLI Tool for analyzing ELF files
#emulatr	- GUI Android Emulator
#erl		- CLI Erlang interpreter        :lang
#ettercap 	- GUI/CLI wireless sniffing
#firefox	- GUI web browser
#frotz		- CLI Z-Machine emulator
#gef        - CLI gdb -> plugin for analyzing binary
#gem        - CLI ruby package manager  :lang
#git		- CLI software versioning tool
#gcc,gdc,g+ - CLI C, C++ tools              :lang
#ghc		- CLI haskell compiler          :lang
#ghci		- CLI haskell interpreter       :lang
#go         - CLI GO lang compiler          :lang
#gpsim		- GUI Breadboard simulator
#hakrawler	- CLI web spidering tool
#ida		- WIN IDA PRO 32 disassembler
#ida64		- WIN IDA PRO 64 disassembler
#ida64l		- LIN IDA PRO 64 disassembler
#iex		- CLI Elixir interpreter        :lang 
#i2c-tools	- CLI serial communication protocol tools
#java		- CLI Java compiler             :lang
#jarsigner	- CLI jarsigner tool        
#jbe		- GUI Java Bytecode Editor 
#jekyll - CLI Jekyll static website interpreter   :lang
#john		- CLI Password cracking tool
#kaitai   - CLI look trough your ELF interactively  :pwn
#Karat		- WIN Packet Builder Tool
#kdbg       - GUI linux kernel debugger
#keytool	- CLI keytool tool
#kicad		- GUI PCB design tool
#kismet		- CLI wifi sniffing tool
#laravel  - CLI laravel project manager           :lang
#lazygit    - CLI git IDE
#lf         - CLI file explorer faster than ranger
#libreoffic - GUI Business software packet
#lynx 		- CLI web browser
#matlab		- WIN Matlab program
#metasploit	- CLI hacking tool
#moebius	- GUI ANSI text editor
#mspaint	- GUI Windows XP paint
#mutt		- CLI mail client
#nasm		- CLI assembly compiler         :lang
#nm       - CLI binary analysis tool    :pwn
#nmap 		- CLI network scanning tool
#ngrok		- CLI tunneling tool 
#nodejs     - CLI Node js                   :lang
#npm        - CLI nodejs package manager    :lang
#objcopy    - CLI binary analysis           :pwn
#objdump    - CLI binary analysis           :pwn
#okteta		- GUI Hexadecimal text editor
#ollydbg	- GUI Windows .exe i .dll debugger
#one_gadget - CLI one_gadget finder in binary
#patchelf   - CLI change some ELF symbols
#peda       - CLI gdb -> plugin
#php        - CLI php interpreter           :lang
#postman	- GUI REST testing app
#proxychains-ng	- CLI proxychaining tool
#python3 	- CLI PYTHON interpreter        :lang
#pwndbg     - CLI gdb -> plugin for bin exec
#pwninit    - CLI configure scripts for pwn chall
#recaf		- GUI Java Bytecide editor new
#rofi		- GUI menu
#rsactftool	- CLI rsa ctf tool
#rstudio	- GUI Statistical tool
#rtv		- CLI reddit client
#rustc		- CLI rust compiler             :lang
#rustup     - CLI Rust package manager      :lang
#seccomp-tls- CLI seccomp tools
#snort		- CLI IDS
#spss		- WIN statistics program
#strip    - CLI binary analysis - strip your binary   :pwn
#telegram-desk	- GUI telegram client
#tg		    - CLI telegram client
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

# alias za gdb plugine
alias peda='gdb -q -ex init-peda'
alias gef='gdb -q -ex init-gef'
alias pwndbg='gdb -q -ex init-pwndbg'

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
export PATH="$PATH:/opt/010editor" #ADDED BY 010 EDITOR
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for a single 1920x1080 monitor
Config {
    font = "xft:Noto Mono:size=8:antialias=true",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = Static { xpos = 0, ypos = 0, width = 1400, height = 16 },
    lowerOnStart = True,
    commands = [
        Run Weather "LIVO" ["-t","<tempC>C <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
        Run MultiCpu ["-t","Cpu: <total0> <total1> <total2> <total3>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run DynNetwork ["-t","<dev>: <rx>kB/s, <tx>kB/s","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run DateZone "%k:%M, %a %_d %b" "it_IT.UTF-8" "Europe/Rome" "date" 10,
	Run Battery ["-t","Batt: <acstatus>","-L","15","-H","80","-h","green","-n","yellow","-l","red","--","-o","<left>% (<timeleft>)","-O","<fc=#DAA520>Charging</fc>","-i","<fc=#006000>Charged</fc>"] 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %multicpu%   %memory%   %swap%   %battery%   %dynnetwork%   <fc=#FFFFCC>%date%</fc>   %LIVO%"
}

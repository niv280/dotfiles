# to bypass .cshrc
alias run_silver='/home/yokadm/silver/user/silver.tag.tcl=-t \!$ | tee -i silver.log'
set autolist
alias du='du -shc'
#alias lt='ls -altrh  --color'
alias lt='eza -l '
alias lts='lt | grep \!$ --color=auto'
alias cp='cp -p'
alias parse_results='/usr/cad/synopsys/dc/site/bin/parse_results.csh'
alias title='echo -n "]0;\!*"' ## ^[ = (ctrl v , esc) ; ^G = (ctrl v , ctrl g) 
alias l='less -SRMN'
alias ..='cd ..'
alias .='pwd'
alias title='echo="%]2;\!*^" | tr %^ "\033\007"'
alias c='clear'
alias vnc_copy='vncconfig=-nowin &'
alias bgrep='grep=\!* /usr/cad/mtl/beflow/site/bytool/synopsys/common/* /usr/cad/mtl/beflow/site/bytool/synopsys/dc/* /usr/cad/mtl/beflow/site/bytool/synopsys/pt/*  /usr/cad/mtl/beflow/site/bytool/synopsys/icc/* /usr/cad/mtl/beflow/site/bytool/common/* /usr/cad/synopsys/dc/site_4_beflow/* /shomron/synopsys/beflow/* /condor/synopsys/beflow/* /dotan/synopsys/beflow/*  /pelican/synopsys/beflow/* /condor/synopsys/beflow/* /usr/cad/mtl/beflow/site/bytech/tsmc28hpm/*/* /usr/cad/synopsys/dc/site/bin/* /usr/cad/synopsys/icc/site/bin/* /usr/cad/synopsys/pts/site/bin/* /usr/cad/atoptech/Aprisa/site/bin/* /usr/cad/mtl/beflow/site/bytech/synopsys/common/* /usr/cad/mtl/beflow/site/common/* /usr/cad/mtl/beflow/site/bytool/synopsys/icc2/* /usr/cad/mtl/beflow/site/bytech/tsmc16ffp/synopsys/scripts/* /usr/cad/mtl/beflow/site/bytech/tsmc16ffp/synopsys/defs/* | grep -v README'
alias bgrep='find=/usr/cad/mtl/beflow/$BEFLOW_REV/ /usr/cad/synopsys/dc/site_4_beflow/ /usr/cad/synopsys/dc/site/bin/ /usr/cad/synopsys/icc/site/bin/ /usr/cad/synopsys/pts/site/bin/ /shomron/synopsys/beflow/ /pelican/synopsys/beflow/ /condor/synopsys/beflow/ /galil/synopsys/beflow/ /raven/synopsys/beflow/ /eagle/synopsys/beflow/ -type f | grep -v RCS | grep -v README | grep -v info-users | xargs grep -n --color \!*'

# Makefile
alias _make_targets=egrep\=-s\ '"^.*:"'\ Makefile\  \| \ grep\ -v \#\  \| \ grep\ -v \@\ \| \ awk\ \'\{sub \( \":\",\" \" \) \; print \$\1\}\'
complete make 'p/1/`_make_targets`/'
alias _umake_targets=egrep\=-s\ '"^step"'\ Makefile\ \| \ awk\ \'\{print \$3\}\' \| grep\ -v \#\ \| \ sort\ -u
complete umake 'p/1/`_umake_targets`/'
alias tech16='echo="/usr/cad/mtl/beflow/site/bytech/tsmc16ffp/synopsys/defs/tsmc16ffp_13M_2Xa1Xd3Xe2Y2Yy2R_UTRDL.tf" ; echo "/misc/cad/tsmc/On-line/N16/T-N16-CL-PR-001-S1/release/N16FF_PRTF_Syn_1.1a/PR_tech/Synopsys/TechFile/Standard/VHV/N16_ICC_13M_2Xa1Xd3Xe2Y2Yy2R_UTRDL_1.1a.tf"'

alias qu='/home/yokadm/bin/quotaReport.sh $USER'
alias lm='/usr/cad/mtl/licmgr/gui/licManager.py'
alias lmstat=/usr/cad/synopsys/SCL/11.1/amd64/bin/lmstat
alias n='/home/leonw/bin/neditx \!* &'
alias x='~yokadm/DAP/x86_64/bin/xemacs \!$ &'
alias vim="~/usr/local/bin/vim"
alias gv='gvim -p -reverse'
alias tk='/home/leonw/bin/tkdiff \!* &'
alias be_monitor='/ramon/scripts/be_monitor.pl'
alias SumResults='/usr/cad/synopsys/icc/site/bin/SumResults.csh'
alias SumResults_ap='/usr/cad/atoptech/Aprisa/site/bin/SumResults_atoptech.csh'
alias checkRtlDiff='/home/yokadm/bin/CheckRtlDiff.csh'

alias bgrep='grep -R \!* /usr/cad/mtl/beflow/site/* /usr/cad/synopsys/icc/site/bin/* /usr/cad/synopsys/dc/site/bin/* /usr/cad/synopsys/dc/site_4_beflow/* /usr/cad/synopsys/pts/site/bin/* /${PROJECT}/synopsys/beflow/* | grep -v RCS'

# machines, qsub
alias qt='qsub.py -P umake -q all.q@@backend -l mem_free=10G -pe be \!$ -N INTERACTIVE xterm'
alias qt10='xrdb ~/.Xresources ; qqsh -cwd -l mem_free=10G  -pe be 1 -display ${DISPLAY}'
alias qt10_pt='xrdb ~/.Xresources_PT ; qqsh -cwd -l mem_free=10G  -pe be 1 -display ${DISPLAY}'
alias qt5='qqsh -cwd -l mem_free=5G -display ${DISPLAY}'
alias qtc10='qqsh -cwd -l mem_free=10G -display ${DISPLAY} -pe be \!*'
#BP
alias qt35='qqsh -cwd -l mem_free=35G'
alias qt80='qqsh -cwd -l mem_free=80G'
alias qt120='qqsh -cwd -l mem_free=120G'
alias qt200='qqsh -cwd -l mem_free=200G'
alias qtr35='qsub.py -P umake -q be_raven.q -l mem_free=35G -pe be 1 -N INTERACTIVE xterm'
#alias qstat '/verification/utils/qstat >! ~/.temp_qstat ; cat ~/.temp_qstat | head -n 2 ; cat ~/.temp_qstat | grep $USER | sort -k 1 -n ; \rm -rf ~/.temp_qstat'
alias qstat='/verification/utils/qstat -showdir'
#alias qstat 'qstat -showdir'
#alias lsf="/home/nv/bin/qsub -q o_pnr_2048G -P ncd_infra_misc -u RbsDirectToDevNull@nvidia.com -n 16 -R 'span[hosts=1]' -R 'select[cpuf>=32]' -R 'select[dynamic_pool==vlsi2048g]' -I"
alias lsf="/home/nv/bin/qsub -q pnr_interactive -m rel75 -P nvlsi_albatross_design -J PNR_INTERACTIVE --projectMode direct"
alias qdel_set=~/qqdel_set.csh
alias kill_job='/home/eyala/my_scripts/kill_job.tcsh'
alias lic_mgr='/usr/cad/mtl/licmgr/gui/licManager.py=&'
alias simv='/usr/cad/cadence/voltus/release/tools.lnx86/simvision/bin/simvision'
alias sim='simvision.tcl=-64bit'
# projects
alias set_proj='echo="echo "SOURCE STAR: /usr/cad/synopsys/starxt/setup" ; source /usr/cad/synopsys/starxt/setup ;\
					echo "SOURCE PT: /usr/cad/synopsys/pts/setup" ; source /usr/cad/synopsys/pts/setup ;\
					echo "SOURCE FM: /usr/cad/synopsys/fm/setup" ; source /usr/cad/synopsys/fm/setup ;\
					echo "SOURCE BMAKE: /usr/cad/mtl/bmake/setup" ; source /usr/cad/mtl/bmake/setup ;\
					echo "SOURCE ICV: /usr/cad/synopsys/icv/setup" ; source /usr/cad/synopsys/icv/setup ;\
					echo "SOURCE CALIBRE: /usr/cad/mentor/calibre/setup" ; source /usr/cad/mentor/calibre/setup ;\
					echo "SOURCE APACHE: /usr/cad/apache/RedHawk/setup" ; source /usr/cad/apache/RedHawk/setup ;\
					echo "SOURCE VOLTUS: /usr/cad/cadence/voltus/setup" ; source /usr/cad/cadence/voltus/setup ;\
					setenv TPMDIR /local/tmpexit ;\
					echo "ICC_REV   : $ICC_REV" ;\
					echo "PTS_REV   : $PTS_REV" ;\
					echo "setenv skipDefaultIccSite 1" ; setenv skipDefaultIccSite 1 ;\
					echo "setenv skipDefaultDcSite 1" ; setenv skipDefaultDcSite 1 ;\
					setenv DC_SITE /usr/cad/synopsys/dc/site ; echo "DC_SITE  : $DC_SITE" ;\
					echo "APS_SITE  : $APS_SITE" ; setenv APS_BIN ${APS_SITE}/bin ;\
					echo "ICC_SITE  : $ICC_SITE" ;\
					echo "STXT_SITE : $STXT_SITE" ;\
					echo "PTS_SITE  : $PTS_SITE" ;\
					echo "ICV_SITE  : $ICV_SITE" ;\
					echo "BMAKE_SITE  : $BMAKE_SITE" ;\
					setenv BEFLOW_SITE /usr/cad/mtl/beflow/site/bytool/synopsys ; \
					unsetenv MGLS_LICENSE_FILE ; \
					'
# tools
alias d='gthumb'
export BEFLOW_REV="release"
alias mw='source=/usr/cad/synopsys/mw/setup; Milkyway -load "~leonw/.leonw.avntrc" &'
alias dc='/usr/cad/mtl/beflow/$BEFLOW_REV/bytool/synopsys/dc/dc_shell.bf=-no_gui -64bit'
alias dct='/usr/cad/mtl/beflow/$BEFLOW_REV/bytool/synopsys/dc/dc_shell.bf=-no_gui -64bit -topo'
alias icc2='source=/usr/cad/synopsys/icc2/site/bin/icc2_setup ; /usr/cad/mtl/beflow/$BEFLOW_REV/bytool/synopsys/icc2/icc2_shell.bf'
#alias icc2 '/usr/cad/mtl/beflow/site/bytool/synopsys/icc2/icc2_shell.bf'
alias icc2_lm='/usr/cad/mtl/beflow/$BEFLOW_REV/bytool/synopsys/icc2/icc2_lm_shell.bf'
alias ficc2='/home/eyala/my_scripts/icc2/find_icc2_man_apropos.alias.pl=-tool icc2 -regexp'
alias sicc2='/home/eyala/my_scripts/icc2/summarize.pl'
alias icc=/usr/cad/mtl/beflow/site/bytool/synopsys/icc/icc_shell.bf
alias innovus='/usr/cad/cadence/Innovus/release/lnx86/bin/innovus=-common_ui'
alias iccdp='icc=-dp_mode'
alias pt=/usr/cad/mtl/beflow/$BEFLOW_REV/bytool/synopsys/pt/pt_shell.bf
alias xtractim='unsetenv=SIGRITY_EDA_DIR; setenv LM_LICENSE_FILE 27010@mtlxls01; /usr/cad/cadence/SPB/release.sig/tools/bin/xtractim \!* &'
alias lc='~ofers/license_monitor/license_monitor.tk=&'
alias freezer='/usr/cad/mtl/interactive/site/freezer'
alias setProj='source=/usr/cad/Enovia/Synchronicity/custom/site/share/client/tcl/setProj.csh'
alias ap='set=APS_BIN = /usr/cad/atoptech/Aprisa/site/bin; ${APS_BIN}/ap_shell.bf'
alias ap_phoenix='set=APS_BIN = /usr/cad/mtl/beflow/site/bytool/tmp/scripts_beflow/ ; ${APS_BIN}/ap_shell.bf'
alias make_ap_env='/usr/cad/atoptech/Aprisa/site/bin/buildAtopEnv.csh'
alias udel='/opt/n1ge6/bin/lx24-amd64/udel'
alias run_silver='/home/yokadm/silver/user/silver.tag.tcl=-t \!$ | tee -i silver.log'
alias voltus='source=/usr/cad/cadence/voltus/setup ; /usr/cad/cadence/voltus/release/bin/voltus'
alias gdsv='setenv=ICW_REV D-2010.06-8;source /usr/cad/synopsys/icwbevPlus/setup;setenv LM_LICENSE_FILE ${LM_LICENSE_FILE}:/usr/cad/synopsys/license/mtlxls01.lic;cp /home/leonw/info/gdsv/icwbev_28nm.mac \!$*.mac; icwbev \!$* &; echo "Please Load:\n/home/leonw/info/gdsv/icwbev_40nm.mac\n/home/leonw/info/gdsv/icwbev_28nm.mac\n/home/leonw/info/gdsv/icwbev_16nm.mac" ; echo "user_socket open 0"'
alias g2o='source=/usr/cad/mentor/calibre/setup ; echo "gds2oasis <in_gds> <out_oasis> " ; gds2oasis '
alias bh='bmakeGetStepConf=\!*; less \!*.conf_descr'
alias gs='grep=-A 2 " ----" \!$ | grep : | egrep -v "APS|ICC|Pin|POW-052" | less'

alias ffMatch='/home/annat/work/dap/apps/ffMatch/ffMatch'
alias arrays28to16='/home/annat/work/misc/arrays28to16.pl'

#My aliases
# Flow reports
alias gerr='egrep "ERR|Err|\-E\-" --color=always'
alias gwarn='egrep "\-W\-|Warning|warning" --color=always'
alias licGui='/usr/cad/mtl/licmgr/gui/licManager.py'
alias drc_pdf='acroread /chipDesign/tsmc16ffc/cad/tsmc/On-line/T-N16-CL-DR-002/release/TN16CLDR002_1_5.pdf'

# PT report
# merge startpoint and endpoint lines to one line in traces reports
alias se='awk '\''{if($0 ~ "Startpoint") {s=$0} else {if ($0 ~ "Endpoint") {l= l"\n"s" "$0} else {l = l"\n"$0}}} END {print l}'\'' '
alias latestLog='lt umake_log/ | grep "\.nive\." | grep "[0-9][0-9]-[0-9][0-9]_[0-9][0-9]_[0-9][0-9]_[0-9][0-9]"'
# show distribution of paths, work on lines from timing file
alias pd='awk '\''{if(NR==1){th=sprintf("%.2f",$5)+0.01;mone=0;th2=th};if($5<th2){mone2=mone2+1}else{counter=counter+mone2;printf "%d,%d,%d,%f\n" , mone,mone2,counter,th2;mone=mone+1;mone2=1;th2=th+(0.01*mone)}}'\'' '
# plot distribution from dp command
alias pdp='pd > pd.csv; python3 -c '\''import pandas;import matplotlib.pyplot as plt;df=pandas.read_csv("pd.csv",header=None,names=["NVP","NVP+","Slack"]);print(df);df.plot(x="Slack",y="NVP",kind="bar");plt.show()'\'' ; rm pd.csv '
# plot units distibution
alias udp='python3 /home/nive/scripts/fc/plotUnitsVioHist.py'
alias pt2innvs_buf="sed -r 's/insert_buffer[ ]+?\[[ ]+?get_pins[ ]+\{([^ ,}]+)[ ,}]+\][ ]+([^ ]+)[ ]+-new_net_names[ ]+([^ ]+)[ ]+-new_cell_names[ ]+([^ ]+)/ecoAddRepeater -term \1 -cell \2 -newNetName \3 -name \4 -loc [get_db [get_db pin:\1] .location]/g' "
alias eco_insert_buffer='awk -v DATE="`date +%y_%m_%d`" '\''{print "insert_buffer [ get_pins {"$1"}] BUFFD1T6 -new_net_names FCT_net_HOLD_MARGIN_TRANSITION_"DATE"_P"NR"_stg0 -new_cell_names FCT_cell_HOLD_MARGIN_TRANSITION_"DATE"_P"NR"_stg0"}'\'' '
alias ecoAddReapeater='awk -v DATE="`date +%y_%m_%d`" '\''{print "ecoAddRepeater -term "$1" -cell "$2" -newNetName FCT_net_HOLD_MARGIN_TRANSITION_"DATE"_P"NR"_stg0 -name FCT_cell_HOLD_MARGIN_TRANSITION_"DATE"_P"NR"_stg0 -loc [get_db [get_db pin:"$1"] .location]"}'\''  '
alias eco_add_buffer_net='awk '\''{print "ecoAddRepeater -net "$1" -cell BUFFD8T6 -relativeDistToSink 0.5"}'\'' '
alias list2tcl='sed '\''s/$/ \\/g'\'' | sed '\''1s/^/set pin \[ get_pins { \\\n/g'\'' | sed '\''$a}\]'\'' '

# FC eco
alias to_grep="sed -r 's/\[/\\[/g' | sed -r 's/\]/\\]/g' | sed 's/\//\\\//g' "

#hacks
p()  {echo $(pwd)/$1 } 
px() { echo $(pwd)/$1 | xclip }
alias ef='tee tmp > /dev/null; cat tmp > \!* ; rm -f tmp'
alias nc='sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g" '
# less
alias l='less -RSMN'
alias zl='zless'
alias lc='source-highlight -o STDOUT -i \!* | elinks -dump -dump-color-mode 2 | less -RSMN'

#grep
alias grep='grep --color=auto'
alias eg='egrep'
alias grepc='grep --color=always'
alias gc='grep --color=always'
alias egc='egrep --color=always'
alias g='grep'

## resulotion
alias small='xrandr -s 4'
alias big='xrandr -s 18'
alias m='/usr/cad/mtl/beUtils/umake_utils/site/bin/be_monitor.pl'

###condb
alias cg='grep -E "^//[^ /A-Z]|\!*" condb_out/*.rbv --color=always | sed "s/condb_out\/\(\w*\)\.rbv:/\1: /" | awk '\''{if ($0 !~ /\/\// ) { if (last !="" && $0 !~ /: input |output |wire /  ) {print last} ; print $0 ; last=""} else last=$0 ;}'\'' '
alias Numports='egrep "input|output" | egrep -v "^\/\/" | tr "[" " " | tr ":" " " | awk '\''{if($3~"]"){sum=sum+1+$2}else{sum=sum+1}}END{print sum}'\'''
alias Numports_in='egrep "input" | egrep -v "^\/\/" | tr "[" " " | tr ":" " " | awk '\''{if($3~"]"){sum=sum+1+$2}else{sum=sum+1}}END{print sum}'\'''
alias Numports_out='egrep "output" | egrep -v "^\/\/" | tr "[" " " | tr ":" " " | awk '\''{if($3~"]"){sum=sum+1+$2}else{sum=sum+1}}END{print sum}'\'''
alias chier='/home/liranc/scripts/csh/check_hier_condb.sh'
alias condb_gui='/usr/cad/mtl/gencondb/2021_ww03_02/gui/condb_gui.py'
alias connectivityCondbFE='/usr/cad/mtl/gencondb/2021_ww03_01/utils/connectivityCondbFE.py'
alias lp2p='sed "s/{.*,//g" | perl -pe "s|SAMPLE_BLOCK.*?}||g" | perl -pe "s|{.*?INNER_PATH[ ]*:||g" | sed -r "s/FE_LABEL[ ]*:[A-Z]+//g" | perl -pe "s|{.*?}||g" | sed -r '\''s/(<|>|,|})//g'\'' | awk '\''{s=0;for(i=1; i<=NF; i++) if ($i ~ /^[0-9]+$/) s+=$i; print $0 "Total_Samples:" s}'\'' '
alias sfo='sed "s/|/\n\t\t\t\t\t\t\t\t\t\t/g"'
alias decport="sed -r 's/cport([0-9]|1[0-1]) /cport_ll/g' | sed -r 's/cport(1[2-9]|2[0-2]) /cport_ml/g' | sed -r 's/cport(2[3-9]|3[0-2]) /cport_hl /g' | sed -r 's/cport(3[3-9]|4[0-4]) /cport_lr/g' | sed -r 's/cport(4[5-9]|5[0-5]) /cport_mr/g' | sed -r 's/cport(5[6-9]|6[0-5]) /cport_hr/g'"

# python
alias pyq='qsub.py -N PYTN -q be_main.q -cwd -l mem_free=4G -P da /usr/local/pyCharm/pycharm-community-2017.3.3/bin/pycharm.sh \!$'

# tables
alias ct='column -t'
alias csv='column -ts, | less'
alias tbl='set=CSV \!*; /usr/local/python/python-3.6.5/bin/python3.6 -c "import pandas;from tabulate import tabulate;data=pandas.read_csv('\''${CSV}'\'',index_col=0); print(tabulate(data,headers=data.columns,tablefmt='\''psql'\''));" '

# shortcut
alias aliases.nive='/home/nive/.aliases.nive'
alias ff='/home/nive/firefox/firefox'
alias pja='proj_setup albatross'
alias sma='source ~nive/.aliases.zsh'
alias ubr='umake --be_run'
alias uqs='umake --qstat'
alias uqd='umake --qdel'
alias fpt='csh /home/nive/scripts/fc/fc_auto_pt.csh'
alias xc='xclip'
# copy files bigger than zero:
alias cpfnz='set=FILE="\!:1";set SRC="\!:2";set DEST="\!:3";echo "copy: ""${FILE}:" "from: "${SRC} "to: "${DEST}; find ${SRC} -type f -name "${FILE}" -size +0 -print0 | xargs -0 -I % cp % ${DEST}'

# Tools
alias urxvt='/home/utils/rxvt-unicode-9.22/bin/urxvt'
alias qtx='qsub.py -P umake -q be_main.q -l mem_free=10G -pe be 8 -N INTERACTIVE xterm'
alias qturxvt='qsub.py -P umake -q be_main.q -l mem_free=10G -pe be 8 -N INTERACTIVE urxvt'
alias plotmemusage='/usr/cad/univa/sge/site/utils/plotmemusage.py'
alias snapshot='/home/yokadm/bin/show_snapshots.sh'
alias fzfh='history | \fzf --tac '

# q
alias qfc='qhost=-q | grep -e "be_albatross.*.q" -e mtlx | grep "be_albatross.*.q" -B1'
alias qfc_name='qstat=-u "*" -maxvmem | egrep "be_albatross|job-ID"'
alias qfcd='set=MACHINES=`less des_def.tcl | grep sge_queue | tr "," "\n" | sed "s/.*@mtlx//g" | sed '\''s/"//g'\'' | tr "\n" "|" | sed '\''s/|$//g'\''` ;  qhost -q | grep -e "be_albatross.*.q" -e mtlx | grep "be_albatross.*.q" -B1 | egrep --color=always "${MACHINES}" -A1 '
alias qfc2des_def='qfc=| grep "0\/0" -B1 | g mtlx | item 0 | sed -r '\''s/^/be_albatross.*.q@/g'\''  | tr "\n" "," | awk '\''{print "bset sge_queue "$0}'\'' | sed '\''s/sge_queue /sge_queue "/g'\'' | sed -r '\''s/,$/"/g'\'' '

alias bfind7='find unit_scripts $BEFLOW_CONFIG_SITE/ $BEFLOW_ROOT/{pybeflow,common,bytool,bytech/tsmc7ff/} $UMAKE_UTILS/   /usr/cad/synopsys/{pts,icc2,dc,starxt}/site7/bin/ /usr/cad/cadence/{voltus,Genus,Innovus}/site7/bin/ $SCAN_INSERTION_SITE/   \( -type l -o -type f \) -name \!* -print |& \grep -v RCS | \grep -v svn'
alias bfind5='find unit_scripts $BEFLOW_CONFIG_SITE/ $BEFLOW_ROOT/{pybeflow,common,bytool,bytech/tsmc5/}  /usr/cad/synopsys/{pts,icc2,dc,starxt}/site7/bin/ /usr/cad/cadence/{voltus,Genus,Innovus}/site7/bin/ $SCAN_INSERTION_SITE/  $FLOW2_SITE/nvidia/{yaml,make,tcl} $FLOW2_SITE/{tsmc5,cadence,synopsys}  \( -type l -o -type f \) -name \!* -print |& \grep -v RCS '

alias bfind=bfind5
alias bgrep=bgrep5
alias bdiff='\diff -w `bfind \!* | head -1` .'
alias SumResults='/usr/cad/synopsys/icc/site/bin/SumResults.csh'

#declare -a path =( "/home/nbu_be_tools/be_utils/release" "$path" )
#set path_append=(/usr/local/tools/el7/release/bin)
#set path=( $path_append $path)
#aliases for backend potato
alias be_potato="/usr/cad/mtl/beUtils/bePotato/release/bePotato"
alias potatoGuiInt="/verification/rbs/rev/utils_latest/rbs_src/PotatoX/PotatoBox.py"

# fixing fails on appendig LD_LIBRARY_PATH, - meke it empty, - some scripts not correcly using it!
export LD_LIBRARY_PATH
export LIC_MGR="/usr/cad/mtl/licmgr/release"

#alias proj_setup 'source /usr/cad/mtl/beUtils/utils/release/proj_setup \!*'                 
alias proj_setup='csh /home/nbu_be_tools/be_utils/release/proj_setup; source /home/nive/scripts/proj_setup.zsh'
alias proj_setup_all=' source /usr/cad/mtl/beUtils/utils/release/proj_setup ;\
                          echo "Additional configuration" ;\
                          setenv ARRAYS /\!*/arrays/arm/arrays_release/arrays_milkyway_release ;\
                          echo "SOURCE BMAKE: /usr/cad/mtl/bmake/setup" ; source /usr/cad/mtl/bmake/setup ;\
                          echo "SOURCE CALIBRE: /usr/cad/mentor/calibre/setup" ; source /usr/cad/mentor/calibre/setup ;\
                          echo "SSV_REV     : $SSV_REV" ;\
                        '

#aliases for opening interactive sessions
alias lmstat='/home/yokadm/bin/lmtools/synopsys/amd64/release/bin/lmutil lmstat  \!*'
alias lmremove='/home/yokadm/bin/lmtools/synopsys/amd64/release/bin/lmutil lmremove \!*'
alias lic_gui='$LIC_MGR/gui/licManager.py \!*'

#aliases for SGE interactive and stat
alias quota_report='/home/yokadm/bin/quotaReport.sh $USER '
alias qt='set MEM=\!:2;set CPU=\!:1;/verification/utils/qqsh -q be_main.q -V -cwd -l mem_free=${MEM}G -pe be ${CPU}'
 
#debug and dev
#checks tcl for errors
alias tclCheck='/home/nbu_be_tools/be_utils/release/tclCheck/tclCheck \!*'
#opens tcl/tk console
alias tkcon='/home/nbu_be_tools/be_utils/release/tkcon.tcl \!*'
#opens tcl/tk console
alias tclcon='/home/nbu_be_tools/be_utils/release/tkcon.tcl \!*'
#fix indents for most programming languages
alias beutify='/home/nbu_be_tools/be_utils/release/beutify.sh \!*'
#open eclipse  - cpp and java dev tool
alias eclipse='/usr/local/eclipse/4.6.0/eclipse \!*'
#open pycharm - python dev tool
alias pycharm='/usr/local/pyCharm/pycharm-community-2019.1.1/bin/pycharm.sh  \!*'
#rc_calc wrapper
alias be_rc_calc='/usr/cad/mtl/wrappers/be_rc_calc'
#WORKAROUNDS
#setenv P4CLIENT  "DUMMY_DEFAULT_CLIENT_NAME"
export P4CLIENT="${USER}_p4_config"

## PyQt centos7
export QT_LOGGING_RULES='*=false'

#AutoComplete
alias p4ToolVersion="/home/nbu_be_tools/p4Version/release/p4ToolVersion.py"
complete p4ToolVersion 'p@*@`/home/utils/Python/3.8/3.8.3-20200727/bin/python-argcomplete-tcsh /home/nbu_be_tools/p4Version/release/p4ToolVersion.py`@' ;
alias p4ConfigVersion="/home/nbu_be_tools/p4Version/release/p4ConfigVersion.py"
complete p4ConfigVersion 'p@*@`/home/utils/Python/3.8/3.8.3-20200727/bin/python-argcomplete-tcsh /home/nbu_be_tools/p4Version/release/p4ConfigVersion.py`@' ;

# analog env
alias envquery='/usr/cad/mtl/bmake/site/bin/envquery.py'

# analog backend
alias setProj='source /usr/cad/Enovia/Synchronicity/custom/site/share/client/tcl/setProj.csh'
alias setNvidia='source /home/yokadm/mtl/setup_nvidia.sh'
alias setMellanox='source /home/yokadm/mtl/setup_mellanox.sh '
if [[ -d ~/.vnc ]]; then 
    alias setdisp='set _D=`ls -t ~/.vnc|head -1|cut -d\. -f1`; setenv DISPLAY $_D; unset _D'
fi

#if [ "$(groups | grep usr_ip)" != "" ]; then
#    source /usr/cad/mtl/icmanage/setup
#fi

#set _bundles="circuit layout extraction reflibs proj_env training"
#set _projects=""
#
#foreach dir (/usr/ip /usr/ip_dsp /usr/ip_mtdk)
#   if [ -d $dir ]; then
#      /bin/ls $dir >& /dev/null
#      if [ "$status" == "0" ]; then
#        set _tmp=`/bin/ls $dir | egrep "^[a-z0-9]+" | egrep -v "(tmp|old|^test|^ip)"`
#        set _projects = "$_projects $_tmp"
#      fi
#   fi
#end
#set _projects=`echo $_projects | sed -e 's/ /\n/g' | sort -u | paste -s --delimiters=" "`
#complete setProj p/1/"($_projects)"/ p/2/"($_bundles)"/
#
#set path=( $path /usr/cad/mtl/wrappers )
#unset _tmp
#
# TOOLS
alias qnv='qsub.py -P umake -q be_main.q -l mem_free=10G -pe be 8 -N NVIM /home/scratch.nive_nvlsi_1/scripts/tools/nvim.sh'
alias qcode='qsub.py -P umake -q be_main.q -l mem_free=10G -pe be 8 -N VSCODE /home/scratch.nive_nvlsi_1/scripts/tools/vscode.sh'
alias fzf='fzf --preview="bat  --color=always {}"'
alias rg='/home/scratch.nive_mlnx_methodology/.local/lib/python3.7/site-packages/bin/ranger'
alias cgpt='/home/nv/utils/cgpt/1.0/current_live/bin/cgpt'

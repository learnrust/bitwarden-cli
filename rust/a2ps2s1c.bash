#!/bin/sh
#
#echo $@
#FOOTER=`pwd'
#a2ps --sides=2 --medium=Letter --columns=1 --portrait --line-numbers=1 --font-size=8 $@ --output=./$@.ps
a2ps --sides=2 --medium=Letter --columns=1 --portrait --line-numbers=1 --font-size=8 $@ --output=/tmp/$@.ps
#a2ps --sides=2 --medium=Letter --columns=1 --portrait --line-numbers=1 --font-size=8 $@ 
#a2ps --sides=2 --medium=Letter --columns=1 --portrait --line-numbers=1 --font-size=8 $@ | lp -d 16-28B



#setlabel.plt
set hidden3d

set terminal postscript color enhanced
#set terminal eps

set tics font "Times New Roman,27"   # 
set xlabel font "Times New Roman:Italic,30" # xlabel
set ylabel font "Times New Roman,30" # ylabel
set zlabel font "Times New Roman:Italic,20" # zlabel
set key font "Times New Roman,18"    #



set xlabel offset 0,-1
set ylabel offset -2.5,0
set bmargin 6
set lmargin 11

#set terminal postscript eps color enhanced "Arial" 20 
set view 60,45
set format y "10^{%L}"
set xlabel "{St_D}"
set ylabel "{PSD}"
set yr [1e-14:1e-4]
set logscale
set output "x=0~15,z=r.eps"
set key spacing 3.5
#set key off
set key top outside
set key box

plot "./result/FFT_z= 0.0r= 2.0.dat" u 1:2 title "x=0.0,z=2.0 " w l lw 5
#	"./result/FFT_z=20.0r= 3.0.dat" u 1:2 title "x=20.0,z=3.0 " w l lw 5 ,\
#	"./result/FFT_z=25.0r= 6.0.dat" u 1:2 title "x=25.0,z=6.0 " w l lw 5 ,\
#	"./result/FFT_z=30.0r= 9.0.dat" u 1:2 title "x=30.0,z=9.0 " w l lw 5 ,\
#	"./result/FFT_z=35.0r=12.0.dat" u 1:2 title "x=35.0,z=12.0 " w l lw 5 ,\
#	"./result/FFT_z=40.0r=15.0.dat" u 1:2 title "x=40.0,z=15.0 " w l lw 5
set output



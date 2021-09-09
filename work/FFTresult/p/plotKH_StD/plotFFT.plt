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
#set yr [1e-14:1e-6]
set autoscale
set logscale

eps_file = "x=0.0,z=0~1.eps"
set output eps_file

set key spacing 3.5
#set key off
set key top inside
set key box

plot "../data/FFT_z= 0.0r= 0.0.dat" u 1:2 title "x=0.0,z=0.0 " w l lw 5 ,\
	"../data/FFT_z= 0.0r= 0.2.dat" u 1:2 title "x=0.0,z=0.2 " w l lw 5 ,\
	"../data/FFT_z= 0.0r= 0.8.dat" u 1:2 title "x=0.0,z=0.8 " w l lw 5 ,\
	"../data/FFT_z= 0.0r= 1.0.dat" u 1:2 title "x=0.0,z=1.0 " w l lw 5

#"./result/FFT_z= 1.0r= 0.9.dat" u 1:2 title "x=1.0,z=0.9 " w l lw 5 ,\

#"./result/FFT_z= 3.0r= 0.9.dat" u 1:2 title "x=3.0,z=0.9 " w l lw 5 ,\

	#"./result/FFT_z= 5.0r= 0.9.dat" u 1:2 title "x=5.0,z=0.9 " w l lw 5 ,\


command = sprintf("evince %s &",eps_file)

system command
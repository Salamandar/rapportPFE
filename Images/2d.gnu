#!/usr/bin/gnuplot

if (!exists("filename")) exit


# set terminal svg size 800 800 fname 'Ubuntu' fsize 14
# set output 'test.svg'
set terminal pngcairo size 150,150
set output filename.'.png'

# Virgules
set decimalsign locale; set decimalsign ','

# Légende scale
# Bessel/Franges
#set arrow nohead lw 6                   lc rgb "#ffffff" front from 5,2 to 18,2
#set label font 'Ubuntu-Bold,12 ' textcolor rgb "#ffffff" front center at 12,6 "10 µm"
# Bessel/VarDistance
#set arrow nohead lw 6                   lc rgb "#ffffff" front from 5,2 to 18,2
#set label font 'Ubuntu-Bold,12 ' textcolor rgb "#ffffff" front center at 12,6 "4 µm"
# Bessel/VarLambda
#set arrow nohead lw 6                   lc rgb "#ffffff" front from 3,2 to 10.3,2
#set label font 'Ubuntu-Bold,12 ' textcolor rgb "#ffffff" front center at 6.5,4 "5 µm"
# Metal/1
#set arrow nohead lw 6                   lc rgb "#ffffff" front from 5,2 to 18,2
#set label font 'Ubuntu-Bold,12 ' textcolor rgb "#ffffff" front center at 12,6 "2 µm"
# Metal/VarDistance
#set arrow nohead lw 6                   lc rgb "#ffffff" front from 7,2 to 18,2
#set label font 'Ubuntu-Bold,12 ' textcolor rgb "#ffffff" front center at 13,6 "2 µm"
# Var_Lambda/1
#set arrow nohead lw 6                   lc rgb "#ffffff" front from 5,2 to 13,2
#set label font 'Ubuntu-Bold,12 ' textcolor rgb "#ffffff" front center at 10,6 "1 µm"
# Var_Lambda/Nues_2
#set arrow nohead lw 6                   lc rgb "#ffffff" front from 5,2 to 13,2
#set label font 'Ubuntu-Bold,12 ' textcolor rgb "#ffffff" front center at 10,6 "5 µm"
# Var_Lambda/Metal_2
#set arrow nohead lw 6                   lc rgb "#ffffff" front from 5,2 to 15,2
#set label font 'Ubuntu-Bold,12 ' textcolor rgb "#ffffff" front center at 10,6 "5 µm"
# Vrac
#set arrow nohead lw 6                   lc rgb "#ffffff" front from 5,2 to 15,2
#set label font 'Ubuntu-Bold,12 ' textcolor rgb "#ffffff" front center at 10,6 "1 µm"



# Pas de légende pour Z
unset colorbox
# Palette de couleurs
set palette defined(0  0   0   0.5, 1  0   0   1,  2  0   0.5 1,  3  0   1   1,  4  0.5 1   0.5,  5  1   1   0,  6  1   0.5 0,  7  1   0   0,  8  0.5 0   0)

# Heatmap
set view map
# Interpolation
set pm3d interpolate 6,6

# Pas de légendes pour les axes
set format xy ""
# Pas de ticks
#set tic scale 0
unset key
unset tics
unset border
unset offsets
set lmargin at screen 0
set rmargin at screen 1
set bmargin at screen 0
set tmargin at screen 1

# Plotte l'image, en la tournant
splot filename.'.dat' matrix every :::2 using 2:1:3 with pm3d


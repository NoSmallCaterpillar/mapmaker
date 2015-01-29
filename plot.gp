set terminal jpeg size 1920,1080
set output 'map.jpg'
set obj 1 rectangle behind from screen 0,0 to screen 1,1
set obj 1 fillstyle solid 1.0 fillcolor rgbcolor "black"
plot for [i=2:101] 'map.dat' using 1:i notitle with lines

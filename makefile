all: mapmaker

mapmaker: main.cpp
	g++ main.cpp -o mapmaker
	echo "Compiled! Now do 'make run'"

run:
	./mapmaker
	echo "Done! Now do 'make plot'"

plot: plot.gp map.dat
	gnuplot plot.gp
	display map.jpg &
	echo "Plotted! File saved as map.jpg!"

clean:
	rm -rf *~ *.o *.dat *.png *.aux *.log

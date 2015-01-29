all: mapmaker

mapmaker: main.cpp
	g++ main.cpp -o mapmaker

run:
	./mapmaker

plot: plot.gp map.dat
	gnuplot plot.gp
	eog *.jpg &

clean:
	rm -rf *~ *.o *.dat *.png *.aux *.log

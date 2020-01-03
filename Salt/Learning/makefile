all:

start:
	./minion.sh start

restart:
	./minion.sh restart

stop:
	./minions.sh stop

minion: build
	./spawnminion.sh

build:
	cd minion && ./build.sh

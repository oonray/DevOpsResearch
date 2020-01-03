ip="127.0.0.1"

all: minion minion minion
	
start:
	./minion.sh start

restart:
	./minion.sh restart

stop:
	./minions.sh stop

minion: build
	./spawnminion.sh $(ip)

build:
	cd minion && ./build.sh

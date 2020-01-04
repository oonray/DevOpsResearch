ip="127.0.0.1"
#Paths
minion=minion
 
#Tags  
tag_base=salt
tag_base_minion=$(tag_base):minion
 
#Colors
color=$(shell tput setaf $(1)) 
NC=$(call color,7)           
RED=$(call color,1)         
GREEN=$(call color,2)       
YELLOW=$(call color,3)            
BLUE=$(call color,4)        
PURPLE=$(call color,5)      
                             
#outputs                     
                            
                                                   
#Messages                                                   
log_error=$(RED)[!]$(NC)
log_debug=$(PURPLE)[.]$(NC)          
log_sucess=$(GREEN)[+]$(NC)   


all: minion minion minion
	
start:
	./minion.sh start

restart:
	./minion.sh restart

stop:
	./minions.sh stop

minion: build_minion
	$(call log_debug, $(shell ./spawnminion.sh $(ip)))

build=docker build $(1) -t $(2) #Runs docker build command for folder (1) with tag (2)
build_minion: 
	@echo $(log_debug)Building minion
	$(call build,$(minion),$(tag_base_minion))
	@echo $(log_sucess)Minion Built!

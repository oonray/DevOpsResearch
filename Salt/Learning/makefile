ip="127.0.0.1"
#Paths
minion=minion
network=bridge 

#Tags  
tag=salt:$(shell echo $(1) | sed s:\/:_:g)
 
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

#minion Name
name_minion_num=$(shell docker ps -a | grep -Po '$(1)[0-9]{3}' | grep -Po '[0-9]{3}'| sort | tail -1)
name_minion_name=$(1)$(call name_minion_num)

all: minion minion minion

conainers=$(shell docker ps -a | grep -Po 'minion[0-9]{3}')
start:
	docker start $(call conainers)

restart:
	docker restart $(call containers)

stop:
	docker stop $(call containers)

minion: build_minion
	$(call log_debug, $(shell ./spawnminion.sh $(ip)))

build=docker build $(1) -t $(call tag,$(1)) #Runs docker build command for folder (1) with tag (2)
build_minion: 
	@echo $(log_debug)Building minion
	$(call build,$(minion))
	@echo $(log_sucess)Minion Built!


spawn=docker run -d --name $(1) --hostname $(1) --network $(2) $(call tag,$(3)) $(ip) 
spawn_minion:
	$(eval name=$(call name_minion_name,$(minion)))
ifeq ($(name_minion_num),)
	$(eval name=$(minion)000)
endif
	@echo $(log_debug)Spawning $(name)
	$(call spawn,name,$(network),$(minion))
|
clean:
	@echo $(log_debug)Removing Iamges
	docker rmi $(call tag,$(minion))
	@echo $(log_sucess)Images Removed

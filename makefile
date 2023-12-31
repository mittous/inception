all : up

up : 
	@mkdir -p /home/imittous/data/my_db
	@mkdir -p /home/imittous/data/wp_files
	@docker compose -f ./srcs/docker-compose.yml up --build

down : 
	@docker compose -f ./srcs/docker-compose.yml down
	
status : 
	@docker ps

clean  : down
	@docker system prune -af
	@sudo rm -rf /home/imittous/data/my_db
	@sudo rm -rf /home/imittous/data/wp_files

all : up

up : 
	@mkdir -p /home/imittous/data/my_db
	@mkdir -p /home/imittous/data/wp_files
	@docker compose -f ./srcs/docker-compose.yml up

down : 
	@docker-compose -f ./srcs/docker-compose.yml down -v
	
status : 
	@docker ps

clean  : down
	@docker system prune --all --force --volumes
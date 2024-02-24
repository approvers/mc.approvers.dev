up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

update:
	git pull && docker compose restart

logs:
	docker compose logs -f

exec:
	docker exec -i mc-server-paper-1 rcon-cli

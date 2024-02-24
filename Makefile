up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f

exec:
	docker exec -i mcapproversdev-paper-1 rcon-cli

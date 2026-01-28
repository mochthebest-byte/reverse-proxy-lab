.PHONY: up down logs test config

up:
	docker compose up -d --remove-orphans

down:
	docker compose down -v --remove-orphans

logs:
	docker compose logs -f --tail=200

config:
	docker compose config

test:
	@echo "1) /healthz JSON:"
	@curl -s http://localhost:8080/healthz ; echo
	@echo
	@echo "2) Flood test (expect some 429):"
	@rm -f /tmp/codes.txt
	@for i in $$(seq 1 50); do (curl -s -o /dev/null -w "%{http_code}\n" http://localhost:8080/healthz >> /tmp/codes.txt &) ; done ; wait
	@sort /tmp/codes.txt | uniq -c

postgres:
	docker run --name postgres12 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:12-alpine
createdb:
	docker exec -it postgres12 createdb --username=root --owner=root simple_bank

dropdb:
	docker exec -it postgres12 dropdb simple_bank

migrateup:
	migrate -path db/migration -database "postgres://root:secret@localhost:5432/simple_bank?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgres://root:secret@localhost:5432/simple_bank?sslmode=disable" -verbose down

sqlc:
	sqlc generate

test:
	go test -v ./...
test-cover:
	go test -cover -v ./...

server:
	go run main.go

.PHONY: postgres createdb dropdb migrateup migratedown sqlc test test-cover server

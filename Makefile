links:
	@echo "Prometheus: http://localhost:9090"
	@echo "Grafana: http://localhost:3000"

build-api:
	docker build -t mlops_iris_api -f ./src/api/Dockerfile .

run-api:
	docker container run --rm -d --name iris_api -p 8000:8000 mlops_iris_api

stop-api:
	docker container stop iris_api
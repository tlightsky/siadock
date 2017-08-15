in:
	docker-compose exec sia sh

min:
	docker-compose exec minio sh

up:
	docker-compose up -d

init-seed:
	docker-compose exec sia siac wallet init

init-seed-force:
	docker-compose exec sia siac wallet init --force

unlock:
	docker-compose exec sia siac wallet unlock

address:
	docker-compose exec sia siac wallet address

download:
	echo "this may take hours"
	mkdir -p ./sia-data/consensus/
	wget https://consensus.siahub.info/consensus.db
	mv consensus.db ./sia-data/consensus


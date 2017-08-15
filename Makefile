in:
	docker-compose exec sia sh

min:
	docker-compose exec minio sh

up:
	docker-compose up -d

init-seed:
	docker-compose exec sia siac wallet init

unlock:
	docker-compose exec sia siac wallet unlock

download:
	echo "this may take hours"
	mkdir -p ./sia-data/consensus/
	wget https://consensus.siahub.info/consensus.db
	mv consensus.db ./sia-data/consensus


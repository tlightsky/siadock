in:
	docker-compose exec sia sh

download:
	echo "this may take hours"
	mkdir -p ./sia-data/consensus/
	wget https://consensus.siahub.info/consensus.db
	mv consensus.db ./sia-data/consensus


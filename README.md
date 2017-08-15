# Siadock


# target

* help quick setup sia
* use sia related products


# usage

1. `make download`, download consensus from [Siahub](https://consensus.siahub.info/) for bootstrap consensus download, could skip
2. make up
3. make init-seed (save seed words somewhere)
4. make unlock (paste the seed words here, when ask)
5. make address
6. send some siacoin to this address (maybe about 1000sc)
7. checkout `make hostdb-count` and `make prices`, wait until counts more than 500 and prices around a reasonable price
8. set allowance for renter by `make setallowance` (default is 500sc for 12week, you can change before you run this command)
9. checkout renter contracts by `make contracts-count`, if around 50, now you are ready to upload files
10. visite http://dockerhostip:9000 to view minio, login by `minio`:`welovesia`

# links

* [dvstate's integration info](https://github.com/dvstate/minio/tree/master)

# thanks

* thanks for [sia](https://github.com/NebulousLabs/Sia) team make suck a great product
* thanks for @dvstate's hard work for minio [integration](https://github.com/dvstate/minio/tree/master)
* thanks for @eddiewang for base image selection suggestion
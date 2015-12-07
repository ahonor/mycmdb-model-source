
all: clean zip

clean:
	rm -rf dist
	mkdir dist
zip: 
	mkdir -p dist/mycmdb-model-source
	cp -r src/* dist/mycmdb-model-source
	(cd dist; zip -r ../dist/mycmdb-model-source.zip mycmdb-model-source)

check-env:
ifndef RDECK_BASE
    $(error RDECK_BASE is undefined)
endif

install: zip check-env
	cp dist/mycmdb-model-source.zip $(RDECK_BASE)/libext

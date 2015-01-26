build:
	docker build -t malev/freeling .

bash:
	docker run --rm -it malev/freeling bash

test:
	docker run --rm -it malev/freeling echo 'Hello world' | analyze -f $FREELINGSHARE/config/en.cfg

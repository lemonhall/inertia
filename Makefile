NAME=inertia

build:
	./node_modules/.bin/pegjs grammar.pegjs
	rm $(NAME)
	echo "#!/usr/bin/env node" > $(NAME)
	cat grammar.js main.js >> $(NAME)
	chmod +x $(NAME)

install:
	npm install

clean:
	rm grammar.js out.js $(NAME)

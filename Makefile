build: lambda

lambda: lambda.byte

%.native: src/*.*
	@ocamlbuild -cflag -bin-annot -use-ocamlfind $@

%.byte: src/*.*
	@ocamlbuild -cflag -bin-annot -use-ocamlfind -tag debug $@

clean:
	@ocamlbuild -clean

test: lambda.byte
	@./lambda.byte test.lambda

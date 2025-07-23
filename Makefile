.PHONY: all run test clean watch build doc switch switch-activate upgrade update install open-doc deps

# Default: build e test
all: build test

# Executa o binário principal
run: build
	./_build/default/bin/base-project.exe

# Roda os testes
test: build
	dune runtest

# Limpa arquivos de build
clean:
	dune clean
	rm -f *.exe *~

# Compila o projeto e observa alterações
watch:
	dune build --watch

# Compila o projeto
build:
	dune build

# Gera a documentação
doc: build
	dune build @doc

# Cria e configura um novo switch
switch:
	opam switch create . ocaml-base-compiler.5.3.0 --no-install
	$(MAKE) deps
	@echo "\nSwitch criado! Execute 'make switch-activate' para ativar"

# Ativa o switch local
switch-activate:
	eval $$(opam env)
	@echo "Switch ativado! Ambiente configurado para: $$(opam switch show)"

# Atualiza os pacotes instalados
upgrade: switch-activate
	opam upgrade

# Atualiza os repositórios OPAM
update: switch-activate
	opam update

# Instala dependências
install: deps

# Alias para instalação de dependências
deps: switch-activate
	opam install . --deps-only -y
	opam install ocaml-lsp-server ocamlformat utop -y

# Abre documentação
open-doc: doc
	xdg-open _build/default/_doc/_html/index.html

# Utilitário: lista pacotes instalados
list-packages:
	opam list
all:
	test -d _build/default/lib || rebar3 get-deps
	rebar3 compile
	@erl -noshell -pa './_build/default/lib/bitcask/ebin' -pa './_build/default/lib/bertie/ebin' -s bertie start


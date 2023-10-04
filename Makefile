.PHONY: deps deps.update build build.strict format lint check test test.trace repl repl.phx

deps:
	mix do deps.get + deps.compile

deps.update:
	mix deps.update --all

build: deps
	mix compile

build.strict: deps
	mix compile --warnings-as-errors

format:
	mix format

lint:
	mix credo

check:
	mix do credo + dialyzer

test:
	mix test

test.trace:
	mix test --trace

repl:
	iex -S mix

repl.phx:
	iex -S mix phx.server
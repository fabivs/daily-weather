.PHONY: deps deps.update build build.strict format lint check test test.trace repl repl.phx

deps:
	mix deps.get

deps.update:
	mix deps.update --all

build:
	mix compile

build.strict:
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
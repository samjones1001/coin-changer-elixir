# CoinChanger [![Build Status](https://travis-ci.com/samjones1001/coin-changer-elixir.svg?branch=master)](https://travis-ci.com/samjones1001/coin-changer-elixir)  [![codecov](https://codecov.io/gh/samjones1001/coin-changer-elixir/branch/master/graph/badge.svg)](https://codecov.io/gh/samjones1001/coin-changer-elixir)

An implementation of the coin changer kata in elixir.
### Setup

- If you have not already done so, [install elixir](https://elixir-lang.org/install.html)
- Clone this repository and navigate to its root directory in the command line
- Install dependencies using `mix deps.get`

### Tests

In order to run the test suite, navigate to the projects root directory in the command line and run `mix test`.

### Execution

To execute the program make use of `iex -S mix`.

Output will be printed to the command line as a list of integers representing coins.

For example:

```shell
$ iex -S mix
$ CoinChanger.calculate(25)
> [20, 5]
```

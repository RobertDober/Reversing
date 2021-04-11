# Reversing

Musings about things we believe but do not know

Here is the believe:

`Enum.reverse` is better than anything we can do in Elixir ourselves

And here is the prove (or not?)


## Benchmarks

```
Operating System: macOS
CPU Information: Intel(R) Core(TM) i5-5250U CPU @ 1.60GHz
Number of Available Cores: 4
Available memory: 8 GB
Elixir 1.11.3
Erlang 23.2.5

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 0 ns
parallel: 1
inputs: none specified
Estimated total run time: 35 s

Benchmarking Enum.reverse/1...
Benchmarking Reversing.clever10/1...
Benchmarking Reversing.clever5/1...
Benchmarking Reversing.naive/1...
Benchmarking use Erlang, dude...

Name                           ips        average  deviation         median         99th %
use Erlang, dude            1.62 K      617.41 μs    ±71.12%         403 μs     1589.67 μs
Reversing.clever10/1        1.61 K      622.69 μs    ±71.12%         403 μs        1586 μs
Enum.reverse/1              1.60 K      624.05 μs    ±68.15%         411 μs     1579.78 μs
Reversing.clever5/1         0.75 K     1341.76 μs    ±18.42%        1501 μs     1877.73 μs
Reversing.naive/1           0.48 K     2104.86 μs    ±12.54%        2259 μs     2856.24 μs

Comparison: 
use Erlang, dude            1.62 K
Reversing.clever10/1        1.61 K - 1.01x slower +5.28 μs
Enum.reverse/1              1.60 K - 1.01x slower +6.64 μs
Reversing.clever5/1         0.75 K - 2.17x slower +724.35 μs
Reversing.naive/1           0.48 K - 3.41x slower +1487.45 μs

```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/reversing](https://hexdocs.pm/reversing).

SPDX-License-Identifier: Apache-2.0

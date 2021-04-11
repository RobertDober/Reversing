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
Estimated total run time: 28 s

Benchmarking Enum.reverse/1...
Benchmarking Reversing.clever10/1...
Benchmarking Reversing.clever5/1...
Benchmarking Reversing.naive/1...

Name                           ips        average  deviation         median         99th %
Reversing.clever10/1        1.62 K        0.62 ms    ±70.55%        0.41 ms        1.58 ms
Enum.reverse/1              1.60 K        0.62 ms    ±71.05%        0.40 ms        1.59 ms
Reversing.clever5/1         0.74 K        1.35 ms    ±18.27%        1.50 ms        1.97 ms
Reversing.naive/1           0.47 K        2.12 ms    ±13.41%        2.25 ms        3.03 ms

Comparison: 
Reversing.clever10/1        1.62 K
Enum.reverse/1              1.60 K - 1.01x slower +0.00602 ms
Reversing.clever5/1         0.74 K - 2.18x slower +0.73 ms
Reversing.naive/1           0.47 K - 3.43x slower +1.50 ms

```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/reversing](https://hexdocs.pm/reversing).

SPDX-License-Identifier: Apache-2.0

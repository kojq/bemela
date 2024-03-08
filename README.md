<div align=center>

  # bemela

  Benchmark memory-safe languages.
</div>

## Community

Disrespect is not tolerated. Feel free to [join the Discord server](https://discord.com/invite/C6NdvU5bzN).

## Usage

Install each language you want to test onto your development environment. Modify the Bash scripts as needed. In order, run `compile.sh`, `time.sh`, and `measure.sh`.

These must be done within the development environment:

The `compile.sh` file compiles each algorithm file from every language folder into their respective binaries. It also spits out a `versions.txt` file, indicating the current version of each language.
```ShellSession
./compile.sh
```

The `time.sh` file times each binary (with preset example inputs) and aggregates the results into a readable format, `times.txt`.
```ShellSession
./time.sh
```

This can be done outside the development environment:

The `measure.sh` file measures the size of each binary and aggregates the results into a readable format, `measurements.txt`. It also spits out a `benchmarks.txt` file, indicating information aggregated from `versions.txt`, `times.txt`, and `measurements.txt`.
```ShellSession
./measure.sh
```

## Features

- Standard set of algorithm implementations per language
- Each algorithm tests a certain language attribute

## Build

Refer to [Usage](#usage).

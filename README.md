# OCaml Base Project

This is a base OCaml project, designed to serve as a starting point for other projects. It comes pre-configured with directory structure, build automation, and testing.

## Project Structure

```
baseproject/
├── bin/           # Executables
│   └── base_project.ml  # Project main
├── lib/           # Library source code
│   ├── math_utils.ml
│   └── math_utils.mli
├── test/          # Unit tests, property tests, integration tests, etc
│   └── math_utils_test.ml
├── dune-project   # Dune project configuration
├── Makefile       # Utility commands
├── .ocamlformat   # Formatting configuration
└── README.md      # Project README
```

## Prerequisites

- [OCaml](https://ocaml.org/) >= 4.14
- [Opam](https://opam.ocaml.org/) (package manager)
- [Dune](https://dune.build/) (build system)

## Installing dependencies

```sh
opam install . --deps-only
```

## Useful Makefile commands

The project has a robust Makefile to facilitate development. See the main commands:

| Command              | What it does                                                     |
|----------------------|------------------------------------------------------------------|
| `make all`           | Compiles and tests the project                                   |
| `make build`         | Compiles the project                                             |
| `make run`           | Compiles (if needed) and runs the main binary                   |
| `make test`          | Compiles (if needed) and runs tests                             |
| `make clean`         | Cleans build and temporary files                                 |
| `make watch`         | Automatically recompiles when saving files                      |
| `make doc`           | Generates project documentation                                  |
| `make open-doc`      | Opens the generated HTML documentation in browser                |
| `make switch`        | Creates a new local opam switch and installs dependencies       |
| `make switch-activate`| Activates the newly created local switch                        |
| `make deps`          | Installs project dependencies and development tools             |
| `make install`       | Alias for `make deps`                                           |
| `make update`        | Updates OPAM repositories                                        |
| `make upgrade`       | Upgrades installed packages                                      |
| `make list-packages` | Lists all packages installed in current switch                  |

### Suggested workflow

1. **Initial setup**:
   ```sh
   make switch           # creates switch with version 5.3.0 (pre-defined in Makefile) and installs dependencies
   make switch-activate  # Activates local environment
   ```
2. **Development**:
   ```sh
   make watch    # In one terminal (automatically recompiles)
   make test     # In another terminal (runs tests)
   make run      # Runs the program
   ```
3. **Maintenance**:
   ```sh
   make update   # Updates OPAM repositories
   make upgrade  # Upgrades installed packages
   make deps     # Installs new dependencies (if updated .opam)
   ```
4. **Documentation**:
   ```sh
   make doc      # Generates documentation
   make open-doc # Opens documentation in browser
   ```

These commands make the development, testing, and maintenance cycle much more practical and standardized for the entire team!

## How to run

```sh
make run
```
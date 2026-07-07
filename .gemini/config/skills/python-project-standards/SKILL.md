---
name: python-project-standards
description: Python Project Standards and Guidelines for initializing, formatting, and structuring modern Python projects. Trigger this when working with python files, creating new python projects, or debugging python issues.
---

# Python Project Standards

**Note**: These standards are designed for the general open-source community and represent modern best practices for that environment. They may not align with specific corporate standards, which vary by company.

All new Python projects should follow this structure to ensure consistency, testability, and modern tool compatibility.

## Directory Structure

1.  **`src/`**: Contains the application code in a package directory (e.g., `src/<package_name>/`). Must include an empty `__init__.py` to define the package.
2.  **`tests/`**: Contains unit and integration tests using `pytest`.
3.  **`pyproject.toml`**: The single source of truth for project metadata, dependencies, and tool configuration (Ruff, Mypy, Pytest).
4.  **`.gitignore`**: Standard Python `.gitignore`. Must include vim temp files (e.g., `*.sw*`).
5.  **`README.md`**: Project overview, installation, and usage instructions.
6.  **`LICENSE`**: MIT or Apache 2.0 license.

## Tooling & Quality Standards

- **Environment Discovery**: At the start of a new conversation or session, check `.vscode/settings.json` for `python.defaultInterpreterPath` to identify and use the project's active conda environment.
- **Package Management**: Use **uv** (within a conda environment) for dependency management and project environments. Always use the conda environment defined in `.vscode/settings.json` if it exists.
- **Dependency Organization**: Separate dependencies logically in `pyproject.toml`. Application requirements go in `[project.dependencies]`, while development tools (pytest, ruff, mypy, pre-commit) must be placed in a separate dependency group (e.g., `[dependency-groups.dev]`).
- **Data Validation**: Use **Pydantic** for runtime data validation and settings management.
- **Type Checking**: Use **Mypy** for static type analysis. Configuration should be in `[tool.mypy]` in `pyproject.toml`.
- **Linting & Formatting**: Use **Ruff** for linting and formatting. Configuration should be in `[tool.ruff]` in `pyproject.toml`.
- **Testing**: Use **pytest** for unit and integration testing.
- **Automation**: Use **pre-commit** (`.pre-commit-config.yaml`) to run Ruff and Mypy automatically before every commit.

## Code Style & Linting Standards

When generating Python code or configuring project tools (specifically Ruff in `pyproject.toml`), strictly enforce the following styling and linting rules:

- **Indentation:** Use 4 spaces per indentation level. Tabs are strictly forbidden. Line continuations must use a 4-space hanging indent.
- **Line Length:** Maximum 88 characters per line. (URLs, long file paths, and module-level docstrings are exempt).
- **Quotes:** Use double quotes (`"`) for all standard strings. Use triple double quotes (`"""`) for all docstrings.
- **Docstrings:** Use **Google Style** docstrings for all modules, classes, and functions. They should be clear, concise, and include sections for `Args`, `Returns`, and `Raises` where applicable.
- **Imports:** Group imports logically (Standard Library, Third-Party, First-Party) and alphabetize them within their groups. Never use wildcard imports (e.g., `from module import *`).
- **Naming Conventions:** Strictly enforce PEP 8. Use `snake_case` for variables, functions, and methods. Use `PascalCase` for classes and exceptions. Use `UPPER_SNAKE_CASE` for module-level constants.
- **Modern Python:** Require type hints on all function signatures. Favor f-strings over older formatting methods. Forbid bare `except:` blocks (require specific exception classes or at least `Exception`).
- **Tool Configuration:** When generating the `pyproject.toml`, ensure the `[tool.ruff]` and `[tool.ruff.format]` sections are explicitly configured to enforce the 88-character line limit and standard Black-compatible formatting.

## Project Initialization

When asked to initialize a project, always generate the complete scaffolding. This includes:
1.  **`pyproject.toml`**: Provide the exact contents, including metadata and `[tool.ruff]` and `[tool.mypy]` tables.
2.  **`.pre-commit-config.yaml`**: Provide a basic configuration to run Ruff and Mypy.
3.  **Directory structure**: Create the `src/<package_name>/` and `tests/` directories. Ensure an empty `__init__.py` is placed inside the package directory.
4.  **Setup Commands**: Always provide a single, copy-pasteable bash snippet containing the commands (`mkdir`, `touch`) to create the directory structure and empty files before providing the file contents.

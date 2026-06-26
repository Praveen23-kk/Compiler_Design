# Compiler Design

A comprehensive implementation of compiler design concepts and techniques covering all phases of compilation.

## Overview

This repository contains implementations of key compiler design principles, including:
- **Lexical Analysis** (Tokenization)
- **Syntax Analysis** (Parsing)
- **Semantic Analysis**
- **Intermediate Code Generation**
- **Code Optimization**
- **Code Generation**

## Table of Contents

- [Overview](#overview)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Features](#features)
- [Usage](#usage)
- [Compiler Phases](#compiler-phases)
- [Requirements](#requirements)
- [Contributing](#contributing)
- [License](#license)

## Project Structure

```
Compiler_Design/
├── exp4.exe            # .exe file
├── lex.l               # Lexical code
├──  lex.yy.c           #C code 
└── README.md         # ReadMe
```

## Getting Started

### Prerequisites

- GCC or Clang compiler
- C/C++ standard library
- Make (optional)

### Building

```bash
# Clone the repository
git clone https://github.com/Praveen23-kk/Compiler_Design.git
cd Compiler_Design

# Compile
gcc -o compiler main.c
# or
make
```

### Running

```bash
./compiler input_file.txt
```

## Features

- **Lexical Analysis**: Tokenizes source code into meaningful units
- **Syntax Analysis**: Validates grammatical structure using parsing techniques
- **Symbol Table Management**: Tracks variables and their properties
- **Error Detection**: Reports syntax and semantic errors
- **AST Generation**: Builds Abstract Syntax Tree
- **Intermediate Representation**: Generates IR for optimization
- **Code Optimization**: Applies various optimization techniques
- **Assembly Generation**: Produces target code

## Usage

### Example

```c
// Input: sample.txt
int main() {
    int x = 10;
    return x;
}
```

```bash
./compiler sample.txt
```

## Compiler Phases

### 1. Lexical Analysis
Converts source code into tokens (keywords, identifiers, operators, etc.)

### 2. Syntax Analysis
Builds a parse tree from the token stream, checking grammar rules

### 3. Semantic Analysis
Validates semantic rules and builds symbol tables

### 4. Intermediate Code Generation
Generates an intermediate representation for platform independence

### 5. Code Optimization
Applies techniques to improve code efficiency

### 6. Code Generation
Produces target machine code or assembly

## Requirements

- C compiler (GCC/Clang)
- Basic understanding of compiler theory
- Knowledge of parsing techniques and formal languages

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is open source. Feel free to use and modify as needed.

---

**Author**: Praveen23-kk  
**Language**: C  
**Last Updated**: 2026-06-26

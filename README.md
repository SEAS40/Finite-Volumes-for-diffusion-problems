# 1D Finite Volume Method (FVM) for Diffusion Problems using MATLAB

## Overview

This repository contains MATLAB code that implements a 1D Finite Volume Method (FVM) for solving diffusion problems. The FVM is a numerical technique used to approximate solutions to partial differential equations (PDEs), such as the diffusion equation in this case. The provided code takes care of the entire process, from specifying the input data to performing the necessary computations.

## What is the Diffusion Problem?

The diffusion problem deals with the spread of a quantity (such as heat, concentration, or particles) in a medium. It is governed by the diffusion equation, which describes how the quantity changes over time and space due to the gradient in its concentration. The 1D version of the diffusion equation is particularly relevant when considering diffusion along a straight line or in a confined space.

## Finite Volume Method (FVM)

The Finite Volume Method is a numerical approach used to solve various types of PDEs, including diffusion equations. It involves discretizing the domain into smaller volumes (or cells) and approximating the integral form of the PDE over these volumes. The method is particularly useful for problems involving conservation laws and is well-suited for handling irregular geometries.

## Repository Contents

- **main.m:** This is the main MATLAB script that implements the 1D FVM for the diffusion problem. It includes the necessary steps to define the problem, discretize the domain, set up the linear system of equations, and solve for the unknowns.

## How to Use

1. Run the `main.m` script in MATLAB. This script reads the input data, performs the necessary calculations, and generates the solution for the diffusion problem.

2. The results, including the concentration profile over time, will be displayed and can be further analyzed or visualized as needed.

## Contribution

Feel free to contribute to this repository by submitting pull requests. If you find any issues or have suggestions for improvements, please create an issue in the repository's issue tracker.

## License

This project is available under the [MIT License](LICENSE), allowing you to use, modify, and distribute the code for both commercial and non-commercial purposes.

## Acknowledgments

This implementation is inspired by the principles of the Finite Volume Method and aims to provide an easy-to-understand example of solving diffusion problems using MATLAB. It can serve as a starting point for more complex simulations and research in the field of numerical methods for PDEs.

# A guide to Julia's Package ecosystem

Julia's package ecosystem is still modest in comparison to Python or R. Nonetheless, with the overhaul of the package manager and registry in version 1.6, it is now in a state where you can find a package for almost anything you might want to do (and if not, you can also interface with Python packages through PyCall). Here's a list of noteworthy packages grouped by topics.


## Interfacing with other languages
Switching to Julia doesn't mean you have to throw away your old code. You can natively [call C and Fortran functions](https://docs.julialang.org/en/v1/manual/calling-c-and-fortran-code/index.html) and there are bindings for [C++](https://github.com/JuliaInterop/Cxx.jl), [Python](https://github.com/JuliaPy/PyCall.jl), [R](https://github.com/JuliaInterop/RCall.jl) and [many more](https://github.com/JuliaInterop).

## Plotting

Your first stop should be [Plots](https://github.com/JuliaPlots/Plots.jl), which provides an interface over multiple plotting backends, meaning you can switch to pyplot with a single call, and all your plotting code will work without modifications. Statistics people should look into [StatsPlots](https://github.com/JuliaPlots/StatsPlots.jl) and [Gadfly](http://gadflyjl.org/stable/). Note that Plots is mostly intended for creating static plots without interactivity. [Makie](http://makie.juliaplots.org/stable/index.html) is another package geared for interactivity.

## Dynamical Systems
[DifferentialEquations](https://diffeq.sciml.ai/stable/) is a **massive** suite of solvers for differential equations. If you believe [this blog post](http://www.stochasticlifestyle.com/comparison-differential-equation-solver-suites-matlab-r-julia-python-c-fortran/) by the main author of the package, it is the most comprehensive suite of solvers on the market today. I think it's not an overstatement to say that this package is one of the main drivers of Julia's growing adoption among the scientific community.

Not only this, it has become the nexus of a *sprawling* ecosystem of satellite packages. Highlights include
* [ModelingToolkit](https://github.com/SciML/ModelingToolkit.jl) A framework that allows to symbolically define a set of ODEs and have it automagically transformed into an optimized problem that you can run on the GPU.
* [Catalyst](https://github.com/SciML/Catalyst.jl) A chemical reaction modeling package building on ModelingToolkit.
* [DataDrivenDiffEq](https://github.com/SciML/DataDrivenDiffEq.jl) Discover dynamics from data. If you like applied Koopman theory, this one is for you.
* [DiffEqUncertainty](https://github.com/SciML/DiffEqUncertainty.jl) Do you have uncertainties on your ODE parameters? Do you want to see a cool application of Koopman Operator theory? If you answered yes to either of these questions, check this package out.
* [Quadrature](https://github.com/SciML/Quadrature.jl) Numerical quadrature. Better yet, *differentiable* numerical quadrature.

[DynamicalSystems](https://juliadynamics.github.io/DynamicalSystems.jl/latest/) is a suite of packages that builds on top of DifferentialEquations to provide tools for analysing general dynamical systems, especially chaotic ones. 

See also [BifurcationKit](https://github.com/rveltz/BifurcationKit.jl/) for bifurcation diagrams.

Finally, the package [ApproxFun](https://github.com/JuliaApproximation/ApproxFun.jl) deserves a special mention. Far from just approximating functions in a variety of function bases, it also allows solving linear and nonlinear ODES *in function space*.

## Networks
[Graphs.jl](https://github.com/JuliaGraphs/Graphs.jl) is an excellent package for network analysis, including generators for a wide array of static and random network models and a plethora of network algorithms (Its online documentation sucks however). It is the core of the wider [JuliaGraphs](https://juliagraphs.github.io/) ecosystem, which has a ton of options for visualizing graphs. There is however a certain lack of polish to most of the actual network analysis packages.

Other relevant packages include
* [NetworkDynamics](https://github.com/PIK-ICoNe/NetworkDynamics.jl) build optimized dynamical systems on networks. It's used in [PowerDynamics](https://juliaenergy.github.io/PowerDynamics.jl/stable/) to model electrical networks.
* [SimpleHypergraphs](https://github.com/pszufe/SimpleHypergraphs.jl) and [Simplicial](https://github.com/nebneuron/Simplicial.jl) for your preferred flavour of higher order graph. (Simplicial is still in a much rougher state, however)

## Statistics
There are plenty of packages in the [JuliaStats](https://github.com/JuliaStats) ecosystem. The [Distributions](https://github.com/JuliaStats/Distributions.jl) package is especially nice to use. There's not much that I can say other than to look for yourself.

There are also some choice packages for [Probabilistic](https://turing.ml/dev/) [Programming](https://github.com/StanJulia/Stan.jl), if that's your thing.

## Machine Learning
[Flux](https://github.com/FluxML/Flux.jl) is a pure Julia Deep Learning library. It is the place to go for mixing Neural networks and ODEs, thanks to the [DiffEqFlux](https://github.com/SciML/DiffEqFlux.jl) package. Another pure Julia package is [KNet](https://denizyuret.github.io/Knet.jl/latest/install/)

Outside these, the [MLJ](https://github.com/alan-turing-institute/MLJ.jl) serves as an overarching framework over the various Julia machine learning packages, *à la* Scikit-learn. Speaking of which, there's a [wrapper](https://github.com/cstjean/ScikitLearn.jl) to it. See also [Tensorflow](https://github.com/malmaud/TensorFlow.jl), [JuliaML](https://github.com/JuliaML) and [JuliaAI](https://github.com/JuliaAI).

## Physics
The [JuliaPhysics](https://github.com/JuliaPhysics) ecosystem should be your first stop. You may also be interested in the following:

* [QuantumOptics](https://qojulia.org/) Exactly what it says on the tin, with some rather sexy [benchmarks](https://qojulia.org/benchmarks) to boot.
* [Yao](https://github.com/QuantumBFS/Yao.jl) Quantum Computing
* [QuantumLab](https://github.com/vonDonnerstein/QuantumLab.jl) and [Quante](https://github.com/jarvist/Quante.jl) Quantum Chemistry. Neither has been updated in a while, and I don't know enough about QC to assess them. Your mileage may vary.

See also [Unitful](https://github.com/PainterQubits/Unitful.jl) to handle quantities with physical units.

## Astronomy and Aerospace
* [JuliaAstro](https://juliaastro.github.io/dev/index.html) Computational Astronomy ecosystem
* [SatelliteToolbox](https://github.com/JuliaSpace/SatelliteToolbox.jl) Satellite simulations. Developed and used by the Brazilian Space Agency to plan missions.
* [Modeling Spacecraft Separation Dynamics in Julia - Jonathan Diegelman](https://www.youtube.com/watch?v=tQpqsmwlfY0) A short talk by a NASA engineer describing how he rewrote the NASA Spacecraft Separation planning tool from Simulink to Julia.

## Optimization
[JuMP](https://jump.dev/) is the equivalent of DifferentialEquations for optimization.

See also [Optim](https://github.com/JuliaNLSolvers/Optim.jl) and [GalacticOptim](https://github.com/SciML/GalacticOptim.jl).

## Control Systems

* [ControlSystems](https://github.com/JuliaControl/ControlSystems.jl) Part of the [JuliaControl](https://github.com/JuliaControl) ecosystem. It feels more like a Matlab Toolbox than a Julia package, but it has what you would expect.
* [POMDPs](https://juliapomdp.github.io/POMDPs.jl/v0.4/) for a more Bayesian/Machine-learny approach to the same types of problems.

## Pure(r) mathematics
Julia is not just for applied mathematics, and there are a couple of packages for doing more abstract math. Highlights include

* [Grassmann](https://github.com/chakravala/Grassmann.jl): Differential Geometry and Geometric Algebra. It's worth taking multiple times to read its main page just to gradually take in its sheer insanity.
* [Manifolds](https://github.com/JuliaManifolds/Manifolds.jl): Differential Geometry. Use this if you want to do data analysis and your data lives on a Riemannian manifold (see also [Manopt](https://github.com/JuliaManifolds/Manopt.jl) for optimization on manifolds).
* [Symbolics](https://juliasymbolics.org/): Symbolic algebra. This grew out of work on DifferentialEquations, and is already giving Sympy and Mathematica a run for their money.
* [Catlab](https://algebraicjulia.github.io/Catlab.jl/latest/): Applied Category Theory. Worth checking out if you've ever wanted to learn about Categories in a more practical context.
* [Nemo](https://nemocas.org/): Computer Algebra. If you like number theory, this is the place for you.
# So you heard about Julia?

The Julia programming language is a relatively young language that promises performances on par with C and Fortran, while being as easy to use as Python, with a particular focus on scientific computation and High Performance Computing. Due to a number of spectacular successes, it has been attracting more and more attention from people in scientific computing and data science as a competitor to both C/C++/Fortran and Python.

In this presentation, I will give a broad introduction to Julia, how it differs from languages like Python or Matlab, and most importantly whether those performance claims are the real deal. Along the way, I will demonstrate various useful Julia features and packages. The objective is to provide an overview of what the language offers, as well as giving pointers for people interested in learning the language.

## Details about this page
This repository is licensed under the Creative Commons CC0 Universal license.

The slides were made with [Marp](https://marp.app/). Demos were made using [Pluto notebooks](https://github.com/fonsp/Pluto.jl).

All code examples were made in Julia 1.6.3.

This is the second edition of a talk I gave at ULimerick in 2020. You can check out the slides from that one [here](https://github.com/csimal/JuliaTalk-limerick).

## Links and Resources
The latest version of Julia can be downloaded on the [official website](https://julialang.org/). The creators of Julia have also started a company called [Julia Computing](https://juliacomputing.com/), that provides various services around Julia, including editor support and curated packages. They've also recently announced a product called [JuliaSim](https://juliacomputing.com/products/juliasim/), which is aiming straight for the throat of Mathworks' Simulink and similar software.

For a quick introduction to the langage, you can check [this page](https://learnxinyminutes.com/docs/julia/) or my own Julia Starter pack.

## Learning Julia
Given the amount of interest (and funding) Julia is getting, it's no surprise that there are plenty of [learning resources](https://julialang.org/learning/). I found the [manual](https://docs.julialang.org/en/v1/) and the occasional visit to stackoverflow to be all I need, but your mileage may vary. Users coming to Julia from another language should check out [this page](https://docs.julialang.org/en/v1/manual/noteworthy-differences/)

## Sales Pitch
Want to know what Julia's all about? Start with these

* [Julia: A Fast Dynamic Language for Technical Computing](https://arxiv.org/pdf/1209.5145.pdf) : The 2012 paper in which Julia was unveiled by its creators.
* [Why we created Julia](https://julialang.org/blog/2012/02/why-we-created-julia/) : a blog post stating their reasons for creating Julia.
* [Automatic Differentiation in 10 minutes with Julia](https://www.youtube.com/watch?v=vAp6nUMrKYg) : a short video by one of Julia's creators showcasing how Julia's design enables doing Automatic Differentiation, i.e. *exact* computation of derivatives *without* symbolic computation in a manner that is both efficient and elegant.
* [SC19 Awards Presentation: IEEE-CS Sidney Fernbach Award - Alan Edelman, MIT](https://www.youtube.com/watch?v=nwdGsz4rc3Q) : One of the creators of Julia talking about High Performance Computing, and how Julia was designed with it in mind.
* [JuliaCon 2018 | Why Julia is the most suitable language for science | George Datseris](https://www.youtube.com/watch?v=7y-ahkUsIrY) : Another talk in the same vein as mine, that covers some features of Julia I didn't talk about.
* [Adam McLean - A thread on teaching dynamical systems in Julia](https://twitter.com/adamlmaclean/status/1368988846457647105) Absolute banger of a twitter thread showcasing the amazing stuff you can do in the Julia Dynamics ecosystem.
* [JuliaSim interview](https://www.notamonadtutorial.com/simulations-are-about-to-get-way-way-faster-with-juliasim/)
* [Why Julia is turning heads in 2021](https://www.nextplatform.com/2021/03/22/why-julia-is-turning-heads-in-2021/) 
* [LWN - The accelerating adoption of Julia](https://lwn.net/Articles/834571/)
* [LWN Article about how Julia 1.6 addresses the "Time to first plot" problem](https://lwn.net/Articles/856819/)
* [Differentiable Programming with Julia by Mike Innes](https://www.youtube.com/watch?v=LjWzgTPFu14) A short talk on [Differentiable Programming](https://fluxml.ai/blog/2019/02/07/what-is-differentiable-programming.html), which has been hailed by some famous ML researchers (e.g. Yan LeCun) as the next revolution after Deep Learning.
* [What packages are state-of-the-art OR attract you to Julia, and make you stay there?](https://discourse.julialang.org/t/what-package-s-are-state-of-the-art-or-attract-you-to-julia-and-make-you-stay-there-not-easily-replicateable-in-e-g-python-r-matlab/11294/4)

## Advanced examples/tutorials
Once you've fallen into the Julia rabbit hole, read the following. They contain a lot of useful insight and tips.
* [Julia Basics: Multiple Dispatch](https://opensourc.es/blog/basics-multiple-dispatch/) A nice explanation of multiple dispatch.
* [Why does Julia work so well?](https://ucidatascienceinitiative.github.io/IntroToJulia/Html/WhyJulia) A technical post about what makes Julia fast.
* [Blog post](https://opensourc.es/blog/matrix-multiplication-performance/) on performance tricks using matrix multiplication as an example. This and the next two entries are blog posts by Öle Kruger, and are absolutely worth reading.
* [Benchmarking and Profiling Julia Code](https://opensourc.es/blog/benchmarking-and-profiling-julia-code/)
* [Debugging in Julia](https://opensourc.es/blog/basics-debugging/)
* [Composability in Julia: Implementing Deep Equilibrium Models via Neural ODEs](https://julialang.org/blog/2021/10/DEQ/) Neural ODEs and Deep Equilibrium Models are neural network architectures that are intertwined with an ODE solver. This blog post shows how trivial that is to do in Flux + DiffEq.
* [The impact of differentiable programming: how ∂P is enabling new science in Julia](https://www.youtube.com/watch?v=rF2QAJLM730)
* [Why Numba and Cython are not substitutes for Julia](https://www.juliabloggers.com/why-numba-and-cython-are-not-substitutes-for-julia/) A fairly technical blog post by the main author of the DifferentialEquations package on the differences between Julia and Python acceleration tools like Numba or Cython.
* [I like Julia because it scales and is productive: Some insight from a Julia Developer](http://www.stochasticlifestyle.com/like-julia-scales-productive-insights-julia-developer/)

## Benchmarks and speedups
One of Julia's main selling points is its speed. There a few benchmarks floating around on various domains, as well as stories of people getting some good speedups just from porting their old code to Julia. As a rule of thumb, you can expect a speedup of at least one or two orders of magnitudes when switching from Python/Matlab to Julia.
* [General Micro Benchmarks](https://julialang.org/benchmarks/) Fairly old at this point, and if anything, you should expect Julia to do *much better* today. 
* [Basic Comparison of Python, Julia, Matlab, IDL and Java](https://juleskouatchou.github.io/basic_language_comparison/) : A comprehensive comparison of the most popular scientific computing languages.
* [Graph Processing Libraries Benchmark](https://www.timlrx.com/blog/benchmark-of-popular-graph-network-packages-v2) Slightly old as well, but (Light)Graphs.jl is still roughly 2 order of magnitudes faster than the popular networkx package.
* [Celeste.jl case study](https://juliacomputing.com/case-studies/celeste/) This was the project that made Julia enter the highly exclusive "Petaflop Club" of languages that have reached peak performance in the Petaflop range. (the only other languages on that list are C, C++ and Fortran)
* [Pfizer case study](https://juliacomputing.com/case-studies/pfizer/)
* [Robotics case study](https://juliacomputing.com/case-studies/mit-robotics/)
* [ODE solver benchmarks](https://benchmarks.sciml.ai/html/MultiLanguage/wrapper_packages.html) TLDR: Julia's ODE solvers are the fastest.
* [334 speedup from porting Python code to Julia](https://twitter.com/RobBlackwell/status/1311340653222166534)
* [Discourse by a user describing a spectacular speedup obtained by porting code from Python to Julia](https://discourse.julialang.org/t/julias-applicable-context-is-getting-narrower-over-time/55042/4)
* [Discussion of Symbolics and ModelingToolkit with more spectacular speedups](https://www.notamonadtutorial.com/modeling-complexity-with-symbolics-jl-and-modelingtoolkit-jl/)
* [Accelerating Flux.jl with PyTorch kernels](https://fluxml.ai/blog/2020/06/29/acclerating-flux-torch.html) I couldn't find many benchmarks of Flux with other popular DL frameworks, but nonetheless you can just "borrow" stuff from PyTorch.

## Packages
Julia's package ecosystem is still modest in comparison to Python or R. Nonetheless, with the overhaul of the package manager and registry in version 1.6, it is now in a state where you can find a package for almost anything you might want to do (and if not, you can also interface with Python packages through PyCall). Here's a list of noteworthy packages grouped by topics.


### Interfacing with other languages
Switching to Julia doesn't mean you have to throw away your old code. You can natively [call C and Fortran functions](https://docs.julialang.org/en/v1/manual/calling-c-and-fortran-code/index.html) and there are bindings for [C++](https://github.com/JuliaInterop/Cxx.jl), [Python](https://github.com/JuliaPy/PyCall.jl), [R](https://github.com/JuliaInterop/RCall.jl) and [many more](https://github.com/JuliaInterop).

### Plotting

Your first stop should be [Plots](https://github.com/JuliaPlots/Plots.jl), which provides an interface over multiple plotting backends, meaning you can switch to pyplot with a single call, and all your plotting code will work without modifications. Statistics people should look into [StatsPlots](https://github.com/JuliaPlots/StatsPlots.jl) and [Gadfly](http://gadflyjl.org/stable/). Note that Plots is mostly intended for creating static plots without interactivity. [Makie](http://makie.juliaplots.org/stable/index.html) is another package geared for interactivity.

### Dynamical Systems
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

### Networks
[Graphs.jl](https://github.com/JuliaGraphs/Graphs.jl) is an excellent package for network analysis, including generators for a wide array of static and random network models and a plethora of network algorithms (Its online documentation sucks however). It is the core of the wider [JuliaGraphs](https://juliagraphs.github.io/) ecosystem, which has a ton of options for visualizing graphs. There is however a certain lack of polish to most of the actual network analysis packages.

Other relevant packages include
* [NetworkDynamics](https://github.com/PIK-ICoNe/NetworkDynamics.jl) build optimized dynamical systems on networks. It's used in [PowerDynamics](https://juliaenergy.github.io/PowerDynamics.jl/stable/) to model electrical networks.
* [SimpleHypergraphs](https://github.com/pszufe/SimpleHypergraphs.jl) and [Simplicial](https://github.com/nebneuron/Simplicial.jl) for your preferred flavour of higher order graph. (Simplicial is still in a much rougher state, however)

### Statistics
There are plenty of packages in the [JuliaStats](https://github.com/JuliaStats) ecosystem. The [Distributions](https://github.com/JuliaStats/Distributions.jl) package is especially nice to use. There's not much that I can say other than to look for yourself.

There are also some choice packages for [Probabilistic](https://turing.ml/dev/) [Programming](https://github.com/StanJulia/Stan.jl), if that's your thing.

### Machine Learning
[Flux](https://github.com/FluxML/Flux.jl) is a pure Julia Deep Learning library. It is the place to go for mixing Neural networks and ODEs, thanks to the [DiffEqFlux](https://github.com/SciML/DiffEqFlux.jl) package. Another pure Julia package is [KNet](https://denizyuret.github.io/Knet.jl/latest/install/)

Outside these, the [MLJ](https://github.com/alan-turing-institute/MLJ.jl) serves as an overarching framework over the various Julia machine learning packages, *à la* Scikit-learn. Speaking of which, there's a [wrapper](https://github.com/cstjean/ScikitLearn.jl) to it. See also [Tensorflow](https://github.com/malmaud/TensorFlow.jl), [JuliaML](https://github.com/JuliaML) and [JuliaAI](https://github.com/JuliaAI).

### Physics
The [JuliaPhysics](https://github.com/JuliaPhysics) ecosystem should be your first stop. You may also be interested in the following:

* [QuantumOptics](https://qojulia.org/) Exactly what it says on the tin, with some rather sexy [benchmarks](https://qojulia.org/benchmarks) to boot.
* [Yao](https://github.com/QuantumBFS/Yao.jl) Quantum Computing
* [QuantumLab](https://github.com/vonDonnerstein/QuantumLab.jl) and [Quante](https://github.com/jarvist/Quante.jl) Quantum Chemistry. Neither has been updated in a while, and I don't know enough about QC to assess them. Your mileage may vary.

See also [Unitful](https://github.com/PainterQubits/Unitful.jl) to handle quantities with physical units.

### Astronomy and Aerospace
* [JuliaAstro](https://juliaastro.github.io/dev/index.html) Computational Astronomy ecosystem
* [SatelliteToolbox](https://github.com/JuliaSpace/SatelliteToolbox.jl) Satellite simulations. Developed and used by the Brazilian Space Agency to plan missions.
* [Modeling Spacecraft Separation Dynamics in Julia - Jonathan Diegelman](https://www.youtube.com/watch?v=tQpqsmwlfY0) A short talk by a NASA engineer describing how he rewrote the NASA Spacecraft Separation planning tool from Simulink to Julia.

### Optimization
[JuMP](https://jump.dev/) is the equivalent of DifferentialEquations for optimization.

See also [Optim](https://github.com/JuliaNLSolvers/Optim.jl) and [GalacticOptim](https://github.com/SciML/GalacticOptim.jl).

### Control Systems

* [ControlSystems](https://github.com/JuliaControl/ControlSystems.jl) Part of the [JuliaControl](https://github.com/JuliaControl) ecosystem. It feels more like a Matlab Toolbox than a Julia package, but it has what you would expect.
* [POMDPs](https://juliapomdp.github.io/POMDPs.jl/v0.4/) for a more Bayesian/Machine-learny approach to the same types of problems.

### Pure(r) mathematics
Julia is not just for applied mathematics, and there are a couple of packages for doing more abstract math. Highlights include

* [Grassmann](https://github.com/chakravala/Grassmann.jl): Differential Geometry and Geometric Algebra. It's worth taking multiple times to read its main page just to gradually take in its sheer insanity.
* [Manifolds](https://github.com/JuliaManifolds/Manifolds.jl): Differential Geometry. Use this if you want to do data analysis and your data lives on a Riemannian manifold (see also [Manopt](https://github.com/JuliaManifolds/Manopt.jl) for optimization on manifolds).
* [Symbolics](https://juliasymbolics.org/): Symbolic algebra. This grew out of work on DifferentialEquations, and is already giving Sympy and Mathematica a run for their money.
* [Catlab](https://algebraicjulia.github.io/Catlab.jl/latest/): Applied Category Theory. Worth checking out if you've ever wanted to learn about Categories in a more practical context.
* [Nemo](https://nemocas.org/): Computer Algebra. If you like number theory, this is the place for you.
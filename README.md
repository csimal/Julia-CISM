# Introduction to Julia (for HPC)

The Julia programming language is a relatively young language that promises performances on par with C and Fortran, while being as easy to use as Python, with a particular focus on scientific computation and High Performance Computing. Due to a number of [spectacular successes](https://juliacomputing.com/case-studies/celeste/), it has been attracting more and more attention from people in scientific computing and data science as a competitor to both C/C++/Fortran and Python.

In this presentation, I will give a broad introduction to Julia, how it differs from languages like Python or Matlab, and most importantly whether those performance claims are the real deal. Along the way, I will demonstrate various useful features relevant to HPC. The objective is to provide an overview of what the language offers, as well as giving pointers for people interested in learning the language.

## Details about this page
This repository is licensed under the Creative Commons CC0 Universal license.

The slides were made with [Marp](https://marp.app/). Demos were made using Jupyter notebooks.

All code examples were made in Julia 1.7.0.

I previously gave some more broadly scoped versions of this presentation. You can find the slides for those [here](https://github.com/csimal/JuliaTalk-limerick), [here](https://github.com/csimal/Julia-Unamur) and [here](https://github.com/csimal/Julia-for-Dynamical-Systems).

## Links and Resources
The latest version of Julia can be downloaded on the [official website](https://julialang.org/). The creators of Julia have also started a company called [Julia Computing](https://juliacomputing.com/), that provides various services around Julia, including editor support and curated packages. They've also recently announced a product called [JuliaSim](https://juliacomputing.com/products/juliasim/), which is aiming straight for the throat of Mathworks' Simulink and similar software.

For a quick introduction to the langage, you can check [this page](https://cheatsheet.juliadocs.org//), [this page](https://learnxinyminutes.com/docs/julia/) or my own [Julia Starter pack](https://github.com/csimal/Julia-Unamur/blob/main/pdfs/julia-starter-pack.md).

If you're looking for books to learn Julia. [This recent blog post](https://logankilpatrick.medium.com/the-best-julia-programming-books-going-into-2023-ab51adae091c) might help.

## Learning Julia
Given the amount of interest (and funding) Julia is getting, it's no surprise that there are plenty of [learning resources](https://julialang.org/learning/). I found the [manual](https://docs.julialang.org/en/v1/) and the occasional visit to stackoverflow to be all I need, but your mileage may vary. Users coming to Julia from another language should check out [this page](https://docs.julialang.org/en/v1/manual/noteworthy-differences/)

For a short overview of Julia packages for science, see [here]().

## Sales Pitch
Want to know what Julia's all about? Start with these

* [Julia: A Fast Dynamic Language for Technical Computing](https://arxiv.org/pdf/1209.5145.pdf) : The 2012 paper in which Julia was unveiled by its creators.
* [Why we created Julia](https://julialang.org/blog/2012/02/why-we-created-julia/) : a blog post stating their reasons for creating Julia.
* [Automatic Differentiation in 10 minutes with Julia](https://www.youtube.com/watch?v=vAp6nUMrKYg) : a short video by one of Julia's creators showcasing how Julia's design enables doing Automatic Differentiation, i.e. *exact* computation of derivatives *without* symbolic computation in a manner that is both efficient and elegant.
* [SC19 Awards Presentation: IEEE-CS Sidney Fernbach Award - Alan Edelman, MIT](https://www.youtube.com/watch?v=nwdGsz4rc3Q) : One of the creators of Julia talking about High Performance Computing, and how Julia was designed with it in mind.
* [JuliaCon 2018 | Why Julia is the most suitable language for science | George Datseris](https://www.youtube.com/watch?v=7y-ahkUsIrY) : Another talk in the same vein as mine, that covers some features of Julia I didn't talk about.
* [Adam McLean - A thread on teaching dynamical systems in Julia](https://twitter.com/adamlmaclean/status/1368988846457647105) Absolute banger of a twitter thread showcasing the amazing stuff you can do in the Julia Dynamics ecosystem.
* [JuliaSim interview](https://www.notamonadtutorial.com/simulations-are-about-to-get-way-way-faster-with-juliasim/)
* [Differentiable Programming with Julia by Mike Innes](https://www.youtube.com/watch?v=LjWzgTPFu14) A short talk on [Differentiable Programming](https://fluxml.ai/blog/2019/02/07/what-is-differentiable-programming.html), which has been hailed by some famous ML researchers (e.g. Yan LeCun) as the next revolution after Deep Learning.
* [What packages are state-of-the-art OR attract you to Julia, and make you stay there?](https://discourse.julialang.org/t/what-package-s-are-state-of-the-art-or-attract-you-to-julia-and-make-you-stay-there-not-easily-replicateable-in-e-g-python-r-matlab/11294/4)

## Bad things about Julia
A common criticism of Julia is that it has many correctness bugs. See for example [this blog post](https://yuri.is/not-julia/) which highlights a number of them, and is [widely discussed](https://discourse.julialang.org/t/discussion-on-why-i-no-longer-recommend-julia-by-yuri-vishnevsky/81151/12) among Julia developers. 

One of the roots of these problems is that while abstract types are used as de-facto interfaces, the language has no formal way of defining an interface and the properties and the solutions it should satisfy, and no way to check that a given implementation complies with them.

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

## Parallel Programming in Julia

Using parallel programming in one form or another is inevitable nowadays if you need performance, especially in HPC. As such Julia was designed with this in mind, and there is a [wealth of options](https://docs.julialang.org/en/v1/manual/parallel-computing/) that make most use cases about as easy as they could possibly be.

- Julia Manual on [Multi-Threading](https://docs.julialang.org/en/v1/manual/multi-threading/)
- Julia Manual on [Distributed Computing](https://docs.julialang.org/en/v1/manual/distributed-computing/)
- The Github organisation for [Julia packages for parallel computing](https://github.com/JuliaParallel)
- [A quick introduction to data parallelism in Julia](https://juliafolds.github.io/data-parallelism/tutorials/quick-introduction/)
- The [JuliaFolds](https://github.com/JuliaFolds) github organisation, for packages revolving around the map-reduce paradigm. Highlights include [Floops.jl](https://github.com/JuliaFolds/FLoops.jl), [Folds.jl](https://github.com/JuliaFolds/Folds.jl) and [Transducers.jl](https://github.com/JuliaFolds/Transducers.jl)
- Julia can run *natively* on CUDA gpus thanks to the [CUDA.jl](https://cuda.juliagpu.org/stable/) package. Support for [other](https://github.com/JuliaGPU/AMDGPU.jl) [constructors](https://github.com/JuliaGPU/oneAPI.jl) is also available, but still very much a Work In Progress. See also [Tullio](https://github.com/mcabbott/Tullio.jl) and [KernelAbstractions](https://juliagpu.github.io/KernelAbstractions.jl/stable/)


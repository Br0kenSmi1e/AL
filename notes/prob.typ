#import "@preview/touying:0.6.1": *
#import "@preview/touying-simpl-hkustgz:0.1.2": *
#import "@preview/cetz:0.4.2": *

// Specify `lang` and `font` for the theme if needed.
#show: hkustgz-theme.with(
  // lang: "zh",
  // font: (
  //   (
  //     name: "Linux Libertine",
  //     covers: "latin-in-cjk",
  //   ),
  //   "Source Han Sans SC",
  //   "Source Han Sans",
  // ),
  config-info(
    title: [Combinatorial Optimization Problems],
    short-title: [COPs],
    subtitle: [],
    author: [Longli Zheng],
    date: datetime.today(),
    institution: [AMAT, FUNH, HKUST(GZ)]
  ),
)

#title-slide()

== Generic Combinatorial Optimization Problems

Combinatorial Optimization Problems (COPs) is a type of mathematical optimization problem whose feasible solutions consist a discrete set.

A generic form of COP is
$
  min & quad E(bold(sigma)) \
  s.t. & quad bold(sigma) = (sigma_1, dots, sigma_cal(L)) \
       & quad sigma_ell in bb(S)_ell quad "for" quad 1 <= ell <= cal(L)
$
where $E$ is called energy function or loss function,
$bold(sigma)$ is the high-dimensional configuration of the system, taking discrete values in each dimension (i.e. $bb(S)_ell$ are discrete sets).

== Spin Glass: A Concrete Example

Spin glass is a well-known class of COP cite(<spin-glass>).

Its variables $sigma_ell$ are binary, i.e. $bb(S)_ell = {-1, +1}$ for all $1 <= ell <= cal(L)$.

The energy function is a quadratic function of these binary variables:
$
  E(bold(sigma)) = -sum_(1 <= i < j <= N) J_(i j) sigma_i sigma_j,
$
where $J_(i j)$ are the coupling constants.

== Boltzmann Distribution and Sampling

We search for ground states and meta-stable states by constructing and then sampling the canonical Boltzmann distribution at low temperature:

$
  p(bold(sigma)) = (e^(-beta E(bold(sigma)))) / (Z_beta), quad beta >> 1,
$

where $Z_beta = sum_bold(sigma) e^(-beta E(bold(sigma)))$ is the normalizing factor, also known as partition function.

Here, $beta$ denotes the inverse temperature, and $beta >> 1$ indicates low temperature condition.

# λ

[Lambda calculus](https://en.wikipedia.org/wiki/Lambda_calculus) interpreter in OCaml

## Build

`make`

## Usage

`./lambda.byte test.lambda`

## Example: 1 + 1 = 2

```
(λm.λn.λf.λx.m f (n f x)) (λf.λx.f x) (λf.λx.f x)
= (λn.λf'.λx'.(λf.λx.f x) f' (n f' x')) (λf.λx.f x)
= λf'.λx'.(λf''.λx''.f'' x'') f' ((λf.λx.f x) f' x')
= λf'.λx'.(λx''.f' x'') ((λx.f' x) x')
= λf'.λx'.f' ((λx.f' x) x')
= λf'.λx'.f' (f' x')
```

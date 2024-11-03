---
title: "NTB: Chapter 1"
description: "My notes on chapter 1 of the book A Computational Introduction to Number Theory\rand Algebra"
date: 2024-10-27
categories:
  - technical
  - math
tags:
  - math
  - group-theory
toc: true
pin: false
math: true
mermaid: true
comments: true
media_subpath: 
render_with_liquid: false
published: true
---
### Chapter 2: Congruences

#### 2.1 Equivalence Relations
- **Definition**: Equivalence relations, with detailed discussion of properties (reflexive, symmetric, and transitive).
- **Theorem 2.1**: Provides a characterization of equivalence classes in an equivalence relation.

#### 2.2 Definitions and Basic Properties of Congruences
- **Definition**: Congruence modulo $n$ and the concept of a modulus.
- **Theorem 2.2**: Congruence modulo $n$ is proven as an equivalence relation.
- **Theorem 2.3**: Shows congruences are compatible with addition and multiplication.
- **Theorem 2.4**: Discusses the uniqueness of modular solutions in defined intervals.
- **Example 2.1**: Step-by-step solution of a modular equation.

#### 2.3 Solving Linear Congruences
- **General Problem**: Examines linear congruences of the form $az \equiv b \, (\text{mod} \, n)$.
- **Theorem 2.5**: Characterizes solutions for linear congruences, covering conditions for existence and uniqueness.
- **Examples**:
  - **Example 2.2**: Specific case solution for a linear congruence.
  - **Example 2.3**: Applies the cancellation law for modular congruences.

#### 2.4 The Chinese Remainder Theorem
- **Theorem 2.6 (Chinese Remainder Theorem)**: Formal statement and proof for systems of congruences with pairwise relatively prime moduli.
- **Example 2.6**: Illustrates the Chinese Remainder Theorem with specific modular values.

#### 2.5 Residue Classes
- **Concept**: Residue classes as equivalence classes modulo $n$.
- **Theorem 2.7**: Defines $\mathbb{Z}_n$ as the set of residue classes modulo $n$, listing distinct classes and typical representatives.
- **Example 2.7**: Examines residue classes modulo 6, including addition and multiplication tables.
- **Properties**: Discussion of algebraic structures within residue classes, such as commutativity and distributivity of addition and multiplication in $\mathbb{Z}_n$.

#### 2.6 Euler’s Phi Function
- **Definition**: Euler’s Phi function and its application in number theory.
- **Theorem 2.9**: Discusses the multiplicative nature of Euler’s function.

#### 2.7 Euler's Theorem and Fermat’s Little Theorem
- **Theorem 2.10 (Euler’s Theorem)**: Statement and proof of Euler’s theorem.
- **Theorem 2.11 (Fermat’s Little Theorem)**: Statement and proof of Fermat’s theorem.

#### 2.8 Quadratic Residues
- **Definition**: Quadratic residues modulo $n$ and applications.
- **Theorem 2.16**: Properties of powers and residue classes related to quadratic residues.

#### 2.9 Summations Over Divisors
- **Concept**: Introduces arithmetic functions and the Dirichlet product.
- **Theorem 2.37**: Applications of Dirichlet products in arithmetic functions.


### Section 2.1: Equivalence Relations

#### Definition of Equivalence Relation
Let $S$ be a set, and let $\sim$ be a binary relation on $S$. We define $\sim$ to be an **equivalence relation** if it satisfies the following properties:
- **Reflexive**: For all $a \in S$, $a \sim a$.
- **Symmetric**: For all $a, b \in S$, if $a \sim b$, then $b \sim a$.
- **Transitive**: For all $a, b, c \in S$, if $a \sim b$ and $b \sim c$, then $a \sim c$.

#### Equivalence Class
For an element $a \in S$, the **equivalence class** of $a$ is defined as the set of elements in $S$ that are equivalent to $a$, denoted by:
$$
[a] = \lbrace  x \in S : x \sim a \rbrace.
$$

#### Theorem 2.1: Properties of Equivalence Classes
Let $\sim$ be an equivalence relation on a set $S$, and let $a, b \in S$. Then:
1. $a \in [a]$, showing that every element belongs to its own equivalence class.
2. If $a \in [b]$, then $[a] = [b]$, which implies that equivalence classes are either identical or disjoint.

##### Proof of Theorem 2.1
1. **Reflexivity** guarantees that $a \in [a]$.
2. Suppose $a \in [b]$. By definition, $a \sim b$. To prove $[a] = [b]$, consider any $x \in S$. If $x \in [a]$, then $x \sim a$. Since $a \sim b$ and $\sim$ is transitive, $x \sim b$, so $x \in [b]$, implying $[a] \subseteq [b]$.
3. By symmetry, $b \sim a$, and by the same argument, $[b] \subseteq [a]$.
4. Thus, $[a] = [b]$, confirming that equivalence classes partition the set $S$.

### Section 2.2: Definitions and Basic Properties of Congruences

#### Definition of Congruence Modulo $n$
Let $n$ be a positive integer. For integers $a$ and $b$, we say that $a$ is **congruent** to $b$ modulo $n$ if $n$ divides $a - b$, denoted by:
$$
a \equiv b \pmod{n}
$$
If $n$ does not divide $a - b$, we write $a \not\equiv b \pmod{n}$. Equivalently, $a \equiv b \pmod{n}$ if and only if there exists an integer $y$ such that $a = b + ny$. Here, $n$ is called the **modulus** of the congruence.

#### Theorem 2.2: Congruence as an Equivalence Relation
For all integers $a, b, c$, and a positive integer $n$, the congruence relation $a \equiv b \pmod{n}$ satisfies:
1. **Reflexivity**: $a \equiv a \pmod{n}$.
2. **Symmetry**: If $a \equiv b \pmod{n}$, then $b \equiv a \pmod{n}$.
3. **Transitivity**: If $a \equiv b \pmod{n}$ and $b \equiv c \pmod{n}$, then $a \equiv c \pmod{n}$.

##### Proof of Theorem 2.2
1. **Reflexivity**: $n$ divides $a - a = 0$.
2. **Symmetry**: If $n$ divides $a - b$, it also divides $b - a = -(a - b)$.
3. **Transitivity**: If $n$ divides $a - b$ and $b - c$, then it divides $(a - b) + (b - c) = a - c$.

#### Theorem 2.3: Compatibility with Addition and Multiplication
For integers $a, a', b, b'$ and a positive integer $n$, if:
$$
a \equiv a' \pmod{n} \quad \text{and} \quad b \equiv b' \pmod{n},
$$
then:
$$
a + b \equiv a' + b' \pmod{n} \quad \text{and} \quad a \cdot b \equiv a' \cdot b' \pmod{n}.
$$

##### Proof of Theorem 2.3
Given $a \equiv a' \pmod{n}$ and $b \equiv b' \pmod{n}$, there exist integers $x$ and $y$ such that $a = a' + nx$ and $b = b' + ny$. Therefore:
1. $a + b = a' + b' + n(x + y)$, proving $a + b \equiv a' + b' \pmod{n}$.
2. $a \cdot b = (a' + nx)(b' + ny) = a'b' + n(a'y + b'x + nxy)$, proving $a \cdot b \equiv a' \cdot b' \pmod{n}$.

#### Theorem 2.4: Unique Representation of Congruences
For any integers $a$ and $n$ with $n > 0$, there exists a unique integer $z$ such that:
$$
z \equiv a \pmod{n} \quad \text{and} \quad 0 \leq z < n,
$$
where $z = a \mod n$.

---
title: "CAA: Chapter 2"
description: My notes on chapter 2 of the book Contemporary Abstract Algebra (supported by AI) 
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
### I. Definitions and Examples

#### **1. Definition of Binary Operation**

- **Definition**: Let $G$ be a set. A **binary operation** on $G$ is a function that assigns each ordered pair of elements from $G$ an element in $G$.

- **Closure Property**: This condition ensures that combining any two elements in $G$ results in another element in $G$. For instance, addition and multiplication are familiar binary operations on the integers, whereas division is not, as it doesn't produce an integer for all integer inputs.

#### **2. Definition of a Group**

- **Formal Definition**: A set $G$ with a binary operation (often referred to as multiplication) is a **group** if the following properties hold:
  1. **Associativity**: For all $a, b, c \in G$, $(ab)c = a(bc)$.
  2. **Identity Element**: There exists an element $e \in G$ such that $ae = ea = a$ for every $a \in G$.
  3. **Inverses**: For each $a \in G$, there exists an element $b \in G$ (the inverse of $a$) such that $ab = ba = e$.

  - A group is **Abelian** if for all $a, b \in G$, $ab = ba$. Otherwise, it is **non-Abelian**.

#### **3. Examples of Groups**

- **Example 1: Integers Under Addition**
  - Set $\mathbb{Z}$ (integers) forms a group under addition. The identity is $0$, and the inverse of any integer $a$ is $-a$.

- **Example 2: Positive Rationals Under Multiplication**
  - Set $\mathbb{Q}^+$ (positive rational numbers) forms a group under multiplication. The identity is $1$, and the inverse of any $a$ in $\mathbb{Q}^+$ is $\frac{1}{a}$.

- **Example 3: Non-zero Real Numbers Under Multiplication**
  - The set of non-zero real numbers $\mathbb{R}^*$ is a group under multiplication, with $1$ as the identity and $\frac{1}{a}$ as the inverse of any $a \neq 0$.

- **Example 4: Dihedral Group $D_n$**
  - The dihedral group $D_n$ represents the symmetries of a regular $n$-gon, consisting of rotations and reflections. It includes elements like rotations $R_k$ and reflections $F$ which satisfy specific group properties, particularly non-commutativity.

---

### II. Theorems on Group Properties

#### **Theorem 2.1: Uniqueness of the Identity**

- **Statement**: In a group $G$, there is only one identity element.

- **Proof**:
  - Suppose $e$ and $e'$ are both identity elements in $G$.
  - By definition, for any $a \in G$:
    - $ae = a$ and $e'a = a$.
  - Setting $a = e'$ in the first identity condition gives $e'e = e'$.
  - Setting $a = e$ in the second condition gives $e'e = e$.
  - Thus, $e = e'$, proving that the identity element is unique.

#### **Theorem 2.2: Cancellation Laws**

- **Statement**: In a group $G$, both the left and right cancellation laws hold:
  - If $ba = ca$, then $b = c$.
  - If $ab = ac$, then $b = c$.

- **Proof**:
  - Suppose $ba = ca$.
  - Let $a^{-1}$ be the inverse of $a$.
  - Multiplying both sides of $ba = ca$ by $a^{-1}$ on the right yields:
    - $(ba)a^{-1} = (ca)a^{-1}$.
  - By associativity, $b(aa^{-1}) = c(aa^{-1})$.
  - Since $aa^{-1} = e$, the identity element, we have $be = ce$, which simplifies to $b = c$.
  - Similarly, we can prove the left cancellation law by multiplying on the left with $a^{-1}$.

#### **Theorem 2.3: Uniqueness of Inverses**

- **Statement**: For each element $a$ in a group $G$, there exists a unique element $b$ in $G$ such that $ab = ba = e$.

- **Proof**:
  - Suppose $b$ and $c$ are both inverses of $a$.
  - Then $ab = e$ and $ac = e$.
  - From $ab = ac$, applying the cancellation law yields $b = c$.
  - Therefore, each element $a$ has a unique inverse in $G$.

#### **Theorem 2.4: Socks-Shoes Property (Inverse of a Product)**

- **Statement**: For any elements $a$ and $b$ in a group $G$, $(ab)^{-1} = b^{-1}a^{-1}$.

- **Proof**:
  - We know that $(ab)(ab)^{-1} = e$.
  - Substitute $(ab)^{-1} = b^{-1}a^{-1}$ and verify:
    - $(ab)(b^{-1}a^{-1}) = a(bb^{-1})a^{-1} = ae a^{-1} = aa^{-1} = e$.
  - By the uniqueness of inverses, we conclude that $(ab)^{-1} = b^{-1}a^{-1}$.

---

### III. Historical Note on Non-Commutative Matrices in Quantum Mechanics

This section provides insight into the impact of non-commutative properties within the context of matrix operations and quantum mechanics.

#### **Historical Background: Non-commutativity and Quantum Mechanics**

- In 1925, quantum mechanics was an emerging field filled with complex and ambiguous problems. One breakthrough came from physicist **Werner Heisenberg**, who observed that the product of certain quantum analogs of classical functions did not follow the commutative property. This meant that for two elements $X$ and $Y$ in this system, $XY \neq YX$.

- Heisenberg found this discovery uncomfortable, referring to non-commutativity as the only troubling aspect in his otherwise well-formed theory. Unsure about his conclusions, he sought advice from his mentor, **Max Born**, who recognized the potential of Heisenberg's work.

- Max Born, with his student **Pascual Jordan**, reformulated Heisenberg's concepts using matrix theory, giving birth to the matrix mechanics formulation of quantum mechanics. Though Heisenberg had limited knowledge of matrices, his insight led to significant advancements in physics.

- Heisenberg, Born, and **Paul Dirac** were awarded the Nobel Prize for these groundbreaking contributions, though Heisenberg later expressed his regret that Born's contributions were not fully recognized initially. Born eventually received the Nobel Prize in 1954 for his work in quantum mechanics, completing the acknowledgment of this revolutionary discovery.

This historical note highlights the broader implications of abstract group theory concepts, particularly non-commutativity, in shaping modern physics and expanding our understanding of the mathematical foundations of reality.

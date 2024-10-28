---
title: "CAA: Chapter 1"
description: My notes on chapter 1 of the book Contemporary Abstract Algebra (supported by AI)
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
Let's dive into the first section: **Symmetries of a Square and the Dihedral Group $D_4$**.

### 1. Symmetries of a Square

We begin by analyzing the symmetries of a square, focusing on motions that can return the square to its original position in different orientations. These motions form the **Dihedral Group** $D_4$, which contains eight elements.

#### Elements of $D_4$

Each motion can be categorized as either a **rotation** or a **flip**:

- **Rotations**:
  - $R_0$: Rotation of $0^\circ$ (identity element).
  - $R_{90}$: Rotation of $90^\circ$ counterclockwise.
  - $R_{180}$: Rotation of $180^\circ$.
  - $R_{270}$: Rotation of $270^\circ$ counterclockwise.

- **Flips (Reflections)**:
  - $H$: Horizontal flip (across the middle horizontal axis).
  - $V$: Vertical flip (across the middle vertical axis).
  - $D$: Flip along the main diagonal (from top left to bottom right).
  - $D'$: Flip along the other diagonal (from top right to bottom left).

These eight elements are all possible motions that leave the square within the same plane and in its original boundary, only differing by orientation.

#### Cayley Table of $D_4$

The **Cayley table** provides a systematic way to compose these operations, revealing important group properties. Here's the Cayley table for $D_4$:

$$
\begin{array}{c|cccccccc}
     & R_0 & R_{90} & R_{180} & R_{270} & H & V & D & D' \\
\hline
R_0  & R_0 & R_{90} & R_{180} & R_{270} & H & V & D & D' \\
R_{90}  & R_{90} & R_{180} & R_{270} & R_0 & D' & D & H & V \\
R_{180} & R_{180} & R_{270} & R_0 & R_{90} & V & H & D' & D \\
R_{270} & R_{270} & R_0 & R_{90} & R_{180} & D & D' & V & H \\
H       & H & D & V & D' & R_0 & R_{180} & R_{90} & R_{270} \\
V       & V & D' & H & D & R_{180} & R_0 & R_{270} & R_{90} \\
D       & D & H & D' & V & R_{270} & R_{90} & R_0 & R_{180} \\
D'      & D' & V & D & H & R_{90} & R_{270} & R_{180} & R_0 \\
\end{array}
$$

This table is filled without introducing any new motions, demonstrating the **closure property** of the group.

### 2. Properties of the Dihedral Group $D_4$

- **Closure**: Each combination of two elements in $D_4$ yields another element within $D_4$, as seen in the Cayley table.
- **Identity Element**: The rotation $R_0$ serves as the identity element since combining $R_0$ with any other element $A$ results in $A$ itself.
- **Inverses**: Each element in $D_4$ has an inverse:
  - $R_{90}$ and $R_{270}$ are inverses of each other.
  - $R_{180}$ is its own inverse.
  - Each flip is its own inverse (e.g., $H \cdot H = R_0$).

- **Commutativity**: $D_4$ is **non-Abelian** since, in general, $AB \neq BA$. For instance, $H \cdot D \neq D \cdot H$, showing that order matters for some combinations in $D_4$.

### 3. Associativity in $D_4$ and General Dihedral Groups $D_n$

To qualify as a group, $D_4$ must satisfy the **associativity property**, which states that for any elements $A$, $B$, and $C$ in $D_4$, the following must hold:

$$
(A \cdot B) \cdot C = A \cdot (B \cdot C)
$$

#### Associativity in $D_4$

Since the operations in $D_4$ are based on **function composition**—and function composition is inherently associative—we don't need to verify each combination. However, understanding that associativity is maintained through function composition is fundamental because all group operations rely on this property. Associativity in $D_4$ ensures that sequences of motions can be composed without concern for grouping, making calculations within the group straightforward.

### 4. Generalizing to Dihedral Groups $D_n$

The **Dihedral Group $D_n$** represents the group of symmetries for a regular $n$-gon (where $n \geq 3$), and it consists of **2n elements**:

- $n$ **rotations**: Each rotation is a multiple of $360^\circ/n$.
- $n$ **reflections**: Each reflection is a flip across a line of symmetry of the $n$-gon.

#### Elements of $D_n$

For any $n$-gon, the elements of $D_n$ are structured as follows:

1. **Rotations** $R_k$ where $k \in \lbrace 0, 1, \ldots, n-1\rbrace$ and each $R_k$ represents a rotation by $k \times (360^\circ / n)$.
2. **Reflections** $F_i$, where each reflection corresponds to flipping across a unique line of symmetry of the $n$-gon. There are $n$ such axes for a regular $n$-gon.

The group $D_n$ is defined by:

- **Closure**: Composing any two elements results in an element within $D_n$.
- **Identity**: The rotation $R_0$ (or $0^\circ$ rotation) acts as the identity element.
- **Inverses**: Each element has an inverse within the group, with reflections being self-inverses and rotations having corresponding opposite rotations as inverses.
- **Associativity**: Ensured due to function composition.

#### Real-World Applications of Dihedral Groups

Dihedral groups are not only mathematical constructs but appear in various fields, including:

- **Art and Design**: Symmetries in floor patterns, pottery, corporate logos (e.g., Chrysler's $D_5$ logo, Mercedes-Benz's $D_3$ logo).
- **Crystallography**: Symmetry patterns in crystals, particularly with groups like $D_4$ and $D_6$, revealing structural properties.
- **Chemistry**: The molecular symmetry of compounds, such as the $D_3$ symmetry of ammonia.

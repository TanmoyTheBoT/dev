---
title: "[WIP] Contemporary Abstract Algebra: Chapter 5"
description: My notes on chapter 5 of the book Contemporary Abstract Algebra (supported by AI)  
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
Starting with **Definitions and Basic Notations** and the **Examples of Permutation Groups**, here's the detailed walkthrough:

## Definitions and Basic Notations

1. **Permutation of a Set $A$**:
   A permutation of a set $A$ is defined as a function $f: A \rightarrow A$ that is **bijective** (both one-to-one and onto). This means every element in $A$ maps uniquely to another element in $A$, covering all elements without repetition or omission.

2. **Permutation Group of a Set $A$**:
   The permutation group of $A$, denoted $S_A$, consists of all permutations of $A$ under the operation of function composition. This group operation satisfies closure, associativity, the presence of an identity element, and the existence of inverses, making it a valid group.

3. **Symmetric Group $S_n$**:
   When $A$ is a finite set $\lbrace 1, 2, \dots, n\rbrace$, the permutation group on $A$ is called the **symmetric group** of degree $n$, denoted by $S_n$. It contains all possible permutations of $n$ elements, giving it an order of $n!$ (factorial of $n$).

## Examples of Permutation Groups

1. **Example 1: Symmetric Group $S_3$**
   - Consider the set $\lbrace 1, 2, 3\rbrace$.
   - The permutations of this set that form the group $S_3$ are as follows:
     $$
     \epsilon = \begin{bmatrix} 1 & 2 & 3 \\ 1 & 2 & 3 \end{bmatrix}, \quad
     \alpha = \begin{bmatrix} 1 & 2 & 3 \\ 2 & 3 & 1 \end{bmatrix}, \quad
     \alpha^2 = \begin{bmatrix} 1 & 2 & 3 \\ 3 & 1 & 2 \end{bmatrix}
     $$
     $$
     \beta = \begin{bmatrix} 1 & 2 & 3 \\ 1 & 3 & 2 \end{bmatrix}, \quad
     \alpha \beta = \begin{bmatrix} 1 & 2 & 3 \\ 2 & 1 & 3 \end{bmatrix}, \quad
     \alpha^2 \beta = \begin{bmatrix} 1 & 2 & 3 \\ 3 & 2 & 1 \end{bmatrix}
     $$
   - This group is **non-Abelian** since not all elements commute. For instance, $\beta \alpha \neq \alpha \beta$.

2. **Example 2: Symmetric Group $S_n$**
   - For any set $A = \lbrace 1, 2, \dots, n\rbrace$, the group $S_n$ consists of all permutations of $A$.
   - The number of elements (order) of $S_n$ is $n!$ because each element can be mapped in $n$ different ways, then $n-1$, and so forth.
   - **Note**: $S_n$ is non-Abelian for $n \geq 3$.

3. **Example 3: Symmetries of a Square (Dihedral Group $D_4$)**
   - Labeling the corners of a square as $1, 2, 3,$ and $4$, we can define symmetries by rotations or reflections:
     - **90° Counterclockwise Rotation**: $$\rho = \begin{bmatrix} 1 & 2 & 3 & 4 \\ 2 & 3 & 4 & 1 \end{bmatrix}$$
     - **Reflection across Horizontal Axis**: $$\phi = \begin{bmatrix} 1 & 2 & 3 & 4 \\ 1 & 3 & 2 & 4 \end{bmatrix}$$
   - These symmetries form a subgroup of $S_4$, illustrating how geometric transformations correspond to elements in a permutation group.

## Cycle Notation

1. **Definition and Use of Cycle Notation**:
   - **Cycle Notation** simplifies the representation of permutations by showing how elements move in cycles rather than in array form.
   - In cycle notation, a permutation $\alpha$ of the set $\lbrace 1, 2, 3, 4, 5, 6\rbrace$ that maps:
     $$
     \alpha = \begin{bmatrix} 1 & 2 & 3 & 4 & 5 & 6 \\ 2 & 1 & 4 & 6 & 5 & 3 \end{bmatrix}
     $$
     is written as $\alpha = (1\ 2)(3\ 4\ 6)(5)$.
   - **Interpretation**: The cycle $(1\ 2)$ means $1 \to 2$ and $2 \to 1$. The cycle $(3\ 4\ 6)$ sends $3 \to 4$, $4 \to 6$, and $6 \to 3$.

2. **Multiplying Cycles**:
   - Cycles are composed from **right to left**. If you have cycles $\alpha = (1\ 2)(3\ 4)$ and $\beta = (3\ 1)(2\ 4)$, to find $\alpha \beta$, apply $\beta$ first and then $\alpha$ to each element.
   - In **disjoint cycle form** (cycles with no shared elements), permutations are simpler to compose and analyze.

3. **Disjoint Cycles**:
   - Disjoint cycles **commute** with each other, allowing any reordering of terms in a product. For example, $(1\ 2)(3\ 4) = (3\ 4)(1\ 2)$.

## Theorems on Permutations Group

### **Theorem 5.1: Products of Disjoint Cycles**

**Statement**: Every permutation of a finite set can be written as a cycle or as a product of disjoint cycles.

#### Proof of Theorem 5.1

Let $\alpha$ be a permutation on a finite set $A = \lbrace 1, 2, \dots, n\rbrace$.

1. **Constructing Cycles**:
   - Begin by picking any element $a_1 \in A$.
   - Define a sequence by iteratively applying $\alpha$:
     $$
     a_2 = \alpha(a_1),\ a_3 = \alpha(a_2) = \alpha^2(a_1), \dots, a_m = \alpha^{m-1}(a_1)
     $$
   - Since $A$ is finite, the sequence $a_1, a_2, \dots$ must eventually repeat, meaning there exists some $m$ where $a_m = a_1$. This sequence forms a **cycle**:
     $$
     \alpha = (a_1, a_2, \dots, a_m)
     $$

2. **Exhausting All Elements in $A$**:
   - If all elements of $A$ have been included in this cycle, we are done.
   - If there are elements not in this cycle, choose an element $b_1$ not in $\lbrace a_1, a_2, \dots, a_m\rbrace$, and repeat the cycle construction:
     $$
     b_2 = \alpha(b_1),\ b_3 = \alpha(b_2), \dots, b_k = b_1
     $$
   - This forms a **second disjoint cycle**.

3. **Continuing the Process**:
   - Repeat the cycle construction for each element not yet included in previous cycles.
   - Eventually, every element in $A$ will be included in some cycle, giving a decomposition of $\alpha$ as a product of disjoint cycles.

Thus, every permutation can be written as a cycle or a product of disjoint cycles.

---

### **Theorem 5.2: Disjoint Cycles Commute**

**Statement**: If two cycles $\alpha = (a_1, a_2, \dots, a_m)$ and $\beta = (b_1, b_2, \dots, b_n)$ have no elements in common, then $\alpha \beta = \beta \alpha$.

#### Proof of Theorem 5.2

Let $S = \lbrace a_1, a_2, \dots, a_m, b_1, b_2, \dots, b_n, c_1, c_2, \dots, c_k\rbrace$ where the $c_i$'s are elements in $S$ that are fixed by both $\alpha$ and $\beta$.

1. **Case 1**: For any $x \in \lbrace a_1, a_2, \dots, a_m\rbrace$:
   - $\beta$ does not move $x$, so $\beta(x) = x$.
   - Applying $\alpha \beta$ to $x$ gives:
     $$
     (\alpha \beta)(x) = \alpha(\beta(x)) = \alpha(x)
     $$
   - Similarly, $(\beta \alpha)(x) = \beta(\alpha(x)) = \alpha(x)$.
   - Thus, $(\alpha \beta)(x) = (\beta \alpha)(x)$.

2. **Case 2**: For any $y \in \lbrace b_1, b_2, \dots, b_n\rbrace$:
   - $\alpha$ does not move $y$, so $\alpha(y) = y$.
   - Applying $\alpha \beta$ to $y$ gives:
     $$
     (\alpha \beta)(y) = \alpha(\beta(y)) = \beta(y)
     $$
   - Similarly, $(\beta \alpha)(y) = \beta(\alpha(y)) = \beta(y)$.
   - Thus, $(\alpha \beta)(y) = (\beta \alpha)(y)$.

3. **Case 3**: For any $z \in \lbrace c_1, c_2, \dots, c_k\rbrace$:
   - Both $\alpha$ and $\beta$ leave $z$ fixed, so $(\alpha \beta)(z) = z$ and $(\beta \alpha)(z) = z$.

Since $\alpha \beta$ and $\beta \alpha$ act identically on all elements of $S$, $\alpha \beta = \beta \alpha$, proving that disjoint cycles commute.

---

### **Theorem 5.3: Order of a Permutation**

**Statement**: The order of a permutation of a finite set written in disjoint cycle form is the least common multiple (LCM) of the lengths of its cycles.

#### Proof of Theorem 5.3

Let $\alpha$ be a permutation on $A$ with disjoint cycle decomposition:
$$
\alpha = (a_1\ a_2\ \dots\ a_m)(b_1\ b_2\ \dots\ b_n) \dots (c_1\ c_2\ \dots\ c_k)
$$

1. **Order of Each Cycle**:
   - Each cycle $(a_1\ a_2\ \dots\ a_m)$ has order $m$, meaning that applying this cycle $m$ times brings each element back to its starting position.
   - Similarly, the cycle $(b_1\ b_2\ \dots\ b_n)$ has order $n$, and so on for each disjoint cycle in the decomposition.

2. **Order of $\alpha$ as a Product**:
   - Since the cycles are disjoint, they do not interfere with each other.
   - The permutation $\alpha$ returns all elements to their original positions when each cycle in the decomposition has returned to its starting position.
   - Thus, the order of $\alpha$ is the least common multiple of the lengths of the cycles: $\text{lcm}(m, n, \dots, k)$.

This completes the proof.

---

### **Theorem 5.4: Product of 2-Cycles**

**Statement**: Every permutation in $S_n$ (for $n > 1$) can be expressed as a product of 2-cycles (transpositions).

#### Proof of Theorem 5.4

Let $\alpha = (a_1\ a_2\ \dots\ a_k)$ be a cycle of length $k$ where $k \geq 2$. We express $\alpha$ as a product of 2-cycles:

1. **Decomposition of a Cycle**:
   - Observe that $(a_1\ a_2\ \dots\ a_k) = (a_1\ a_k)(a_1\ a_{k-1}) \dots (a_1\ a_2)$.
   - Each term $(a_1\ a_i)$ is a transposition (a 2-cycle), meaning it swaps two elements.

2. **General Permutation**:
   - By Theorem 5.1, every permutation can be written as a product of disjoint cycles.
   - Since each cycle can be decomposed into a product of 2-cycles, any permutation can be written as a product of transpositions.

Thus, every permutation in $S_n$ is a product of 2-cycles.

### **Theorem 5.5: Always Even or Always Odd**

**Statement**: If a permutation $\alpha$ can be expressed as a product of an even (or odd) number of 2-cycles, then every decomposition of $\alpha$ into a product of 2-cycles must have an even (or odd) number of 2-cycles. In other words, the parity (evenness or oddness) of the number of 2-cycles in a decomposition is invariant.

#### Proof of Theorem 5.5

Let $\alpha = \beta_1 \beta_2 \dots \beta_r = \gamma_1 \gamma_2 \dots \gamma_s$, where $\beta_i$ and $\gamma_i$ are 2-cycles, and $r$ and $s$ denote the number of 2-cycles in each decomposition, respectively.

1. **Equating Two Decompositions**:
   - Since $\alpha$ can be decomposed into both $r$ and $s$ 2-cycles, we can write:
     $$
     \beta_1 \beta_2 \dots \beta_r = \gamma_1 \gamma_2 \dots \gamma_s
     $$

2. **Considering the Identity**:
   - Multiply both sides by the inverse of $\alpha$:
     $$
     \alpha \alpha^{-1} = (\gamma_1 \gamma_2 \dots \gamma_s)(\beta_r \dots \beta_2 \beta_1) = \epsilon
     $$
   - This shows that the identity permutation $\epsilon$ can be written as a product of $r + s$ 2-cycles.

3. **Parity Argument**:
   - If $r$ is even, then $s$ must also be even because a product of an odd number of 2-cycles cannot produce the identity permutation.
   - Similarly, if $r$ is odd, $s$ must also be odd.

Therefore, every decomposition of a permutation into 2-cycles must have the same parity. This implies that permutations are classified as either **even** (product of an even number of 2-cycles) or **odd** (product of an odd number of 2-cycles), proving that this parity is invariant.

---

### **Theorem 5.6: Even Permutations Form a Group**

**Statement**: The set of even permutations in $S_n$ forms a subgroup of $S_n$.

#### Proof of Theorem 5.6

To prove that the set of even permutations, denoted $A_n$, forms a group under composition, we need to show that it satisfies the four group properties (closure, identity, inverses, and associativity).

1. **Closure**:
   - Suppose $\alpha$ and $\beta$ are even permutations in $S_n$, meaning both can be written as products of an even number of 2-cycles.
   - The product $\alpha \beta$ is also an even permutation since the total number of 2-cycles in the product of $\alpha$ and $\beta$ will still be even.
   - Thus, $A_n$ is closed under composition.

2. **Identity**:
   - The identity permutation $\epsilon$ in $S_n$ can be considered a product of zero 2-cycles, which is an even number.
   - Therefore, $\epsilon \in A_n$.

3. **Inverses**:
   - If $\alpha \in A_n$, then $\alpha$ is a product of an even number of 2-cycles.
   - The inverse $\alpha^{-1}$ will also be a product of an even number of 2-cycles because inverting a 2-cycle gives the same 2-cycle (since a 2-cycle is its own inverse).
   - Hence, $\alpha^{-1} \in A_n$.

4. **Associativity**:
   - Composition of permutations is always associative, as it inherits associativity from the function composition operation.

Since all group properties are satisfied, the set of even permutations $A_n$ forms a subgroup of $S_n$, completing the proof.

---

### **Theorem 5.7: Order of the Alternating Group $A_n$**

**Statement**: For $n > 1$, $A_n$ (the group of even permutations in $S_n$) has order $n! / 2$.

#### Proof of Theorem 5.7

1. **Partition of $S_n$ into Even and Odd Permutations**:
   - Every permutation in $S_n$ is either even or odd by Theorem 5.5, and no permutation can be both.
   - This partitions $S_n$ into two disjoint sets: even permutations and odd permutations, which we denote by $A_n$ and $O_n$, respectively.

2. **Pairing Even and Odd Permutations**:
   - For any even permutation $\alpha \in A_n$, $(1\ 2)\alpha$ is an odd permutation, and for any odd permutation $\beta \in O_n$, $(1\ 2)\beta$ is an even permutation.
   - This operation creates a one-to-one correspondence between $A_n$ and $O_n$, establishing that there are equally many even and odd permutations in $S_n$.

3. **Order Calculation**:
   - Since $S_n$ has $n!$ elements and there is an equal number of even and odd permutations, it follows that:
     $$
     |A_n| = |O_n| = \frac{n!}{2}
     $$

Thus, the order of $A_n$ is $n! / 2$, completing the proof.

Next, let's move on to **Examples** that illustrate the application of these theorems, starting with order calculations, cycle decompositions, and group properties in $S_n$ and $A_n$.

---

## Examples of Cycle Order and Structure

### **Example 1: Calculating the Order of a Permutation**

Using **Theorem 5.3** on the order of a permutation:

1. **Permutation in Disjoint Cycle Form**:
   - Consider the permutation $\alpha = (1\ 2)(3\ 4\ 5)$ in $S_5$.
   - The cycle $(1\ 2)$ has length 2, and $(3\ 4\ 5)$ has length 3.

2. **Order Calculation**:
   - The order of $\alpha$ is the least common multiple (LCM) of the cycle lengths:
     $$
     \text{lcm}(2, 3) = 6
     $$
   - Therefore, $\alpha$ has order 6, meaning $\alpha^6$ is the identity permutation.

### **Example 2: Symmetric Group $S_4$ and Subgroups**

Using **Theorem 5.6** on even permutations forming a subgroup:

1. **Symmetric Group $S_4$**:
   - $S_4$ includes all permutations of $\lbrace 1, 2, 3, 4\rbrace$, with order $4! = 24$.

2. **Alternating Group $A_4$**:
   - $A_4$ consists of all even permutations in $S_4$, with order $24 / 2 = 12$.
   - The elements in $A_4$ include the identity and permutations such as:
     $$
     (12)(34), (13)(24), (14)(23)
     $$
     along with 3-cycles like $(123)$ and $(132)$.
   - By **Theorem 5.7**, $A_4$ has half the order of $S_4$, hence 12 elements.

### **Example 3: Properties of Even and Odd Permutations in $S_3$**

Using **Theorem 5.5** on the parity of permutations:

1. **Elements of $S_3$**:
   - In $S_3$, the elements are:
     $$
     \epsilon = (1)(2)(3),\quad (12),\quad (13),\quad (23),\quad (123),\quad (132)
     $$

2. **Parity Classification**:
   - $\epsilon$ is even, as it's the identity.
   - The transpositions $(12), (13), (23)$ are odd, each consisting of a single 2-cycle.
   - The 3-cycles $(123)$ and $(132)$ are even, as each can be expressed as the product of two transpositions:
     $$
     (123) = (12)(23), \quad (132) = (13)(23)
     $$
   - Thus, $S_3$ has both even and odd elements, while $A_3$ includes only the even elements: $\epsilon, (123), (132)$.

### **Example 4: Decomposition into 2-Cycles**

Using **Theorem 5.4**:

1. **Decomposing a Cycle into 2-Cycles**:
   - Consider $(12345)$ in $S_5$.
   - We decompose it into a product of 2-cycles as:
     $$
     (12345) = (15)(14)(13)(12)
     $$
   - This decomposition shows that $(12345)$ is an even permutation, as it is expressed as a product of four (even number) of 2-cycles.

---

## Applications of Permutation Groups

### **Example 5: Cryptographic Application with Permutations**

A permutation can be used for encryption by rearranging elements in blocks.

1. **Encryption with a 4-Letter Block**:
   - Suppose we use the permutation $$\alpha = \begin{bmatrix} 1 & 2 & 3 & 4 \\ 3 & 4 & 2 & 1 \end{bmatrix}$$.
   - To encrypt the message "MEET AT DAWN", break it into 4-letter blocks:
     $$
     \text{MEET ATDA WNXX}
     $$
     (adding "XX" as padding if necessary).
   - Applying $\alpha$ to each block:
     - "MEET" becomes "ETME"
     - "ATDA" becomes "DAAT"
     - "WNXX" becomes "XXWN"

2. **Decryption**:
   - To decrypt, use the inverse permutation $$\alpha^{-1} = \begin{bmatrix} 1 & 2 & 3 & 4 \\ 4 & 3 & 1 & 2 \end{bmatrix}$$ to restore the original order.

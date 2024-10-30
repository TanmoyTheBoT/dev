---
title: "CAA: Chapter 5"
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
   A permutation of a set $A$ is defined as a function $f: A \rightarrow A$ that is **bijective** (both one-to-one and onto). This means every element in $A$ maps uniquely to another element in $A$, while also covering all elements without repetition or omission.

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

**Statement**: The order of a permutation written in disjoint cycle form is the least common multiple (LCM) of the lengths of its cycles.

#### Proof of Theorem 5.3

Let $\alpha$ be a permutation on a finite set $A$, and suppose $\alpha$ can be written as a product of disjoint cycles:
$$
\alpha = (a_1\ a_2\ \dots\ a_{m_1})(b_1\ b_2\ \dots\ b_{m_2}) \dots (c_1\ c_2\ \dots\ c_{m_r})
$$
where each cycle is disjoint from the others and has lengths $m_1, m_2, \dots, m_r$, respectively.

Our goal is to show that the order of $\alpha$, denoted $t$, is the least common multiple of $m_1, m_2, \dots, m_r$, i.e., $t = \text{lcm}(m_1, m_2, \dots, m_r)$.

##### Step 1: Define the Least Common Multiple of the Cycle Lengths

Let $k = \text{lcm}(m_1, m_2, \dots, m_r)$. By definition, $k$ is the smallest positive integer that is a multiple of each $m_i$ (the length of each cycle). Thus, $\alpha^k = \epsilon$ (the identity permutation), because applying $\alpha$ $k$ times completes each cycle, bringing every element in each cycle back to its original position.

This means that $k$ is a possible period for $\alpha$, so we have $t$ divides $k$, since $t$ is the smallest positive integer such that $\alpha^t = \epsilon$.

##### Step 2: The Order $t$ of $\alpha$ Must Divide $k$

Since $\alpha^t = \epsilon$, each disjoint cycle in $\alpha$ must also return to the identity when raised to the power $t$. Thus, $t$ must be a multiple of each $m_i$, the length of each disjoint cycle in $\alpha$. This implies that $t$ is a common multiple of $m_1, m_2, \dots, m_r$.

Since $k$ is the least common multiple of $m_1, m_2, \dots, m_r$, it follows that $k$ divides $t$ because $k$ is the LCM.

##### Step 3: Conclude that $t = k$

So since $t$ divides $k$ and $k$ divides $t$, it must be the case that $t = k$.
Thus, the order $t$ of $\alpha$ is precisely $k$, the least common multiple of the lengths of the disjoint cycles
$$
t = \text{lcm}(m_1, m_2, \dots, m_r)
$$

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

---

### Lemma: If $\epsilon = \beta_1 \beta_2 \cdots \beta_r$, where the $\beta$'s are 2-cycles, then $r$ is even

#### Proof of Lemma

This proof uses **induction** on $r$, the number of 2-cycles. The goal is to show that if $\epsilon$ (the identity permutation) can be written as a product of 2-cycles, then the number of 2-cycles, $r$, must be even.

---

##### **Step 1: Base Cases**

1. **Case $r = 1$:**  
   - If $r = 1$, then we have only one 2-cycle $\beta_1$. 
   - A single 2-cycle (such as $(a\ b)$) is **not** the identity permutation because it swaps two elements.
   - Thus, $r = 1$ cannot represent the identity, so $r = 1$ is impossible for $\epsilon$.

2. **Case $r = 2$:**  
   - If $r = 2$, then we have $\epsilon = \beta_1 \beta_2$, where each $\beta_i$ is a 2-cycle.
   - For example, $\epsilon = (a\ b)(a\ b)$ results in the identity, since applying the same 2-cycle twice returns each element to its original position.
   - Therefore, $r = 2$ **does represent the identity**, so $r = 2$ is even, as required.

   Having established the base cases, we proceed with the induction step.

---

##### **Step 2: Inductive Hypothesis**

Assume that for any product of an **even number** $r - 2$ of 2-cycles, the product represents the identity permutation. In other words, we assume:

- If $\epsilon = \beta_1 \beta_2 \cdots \beta_{r-2}$, then $r - 2$ is even.

We will use this hypothesis to prove that $r$ (which is assumed to be greater than 2 and odd) leads to a contradiction, thereby showing that $r$ must be even.

---

##### **Step 3: Inductive Step - Handling the Last 2-Cycles**

Suppose we have $r > 2$ and that the rightmost 2-cycle is $(a\ b)$. We analyze the possible forms of the product $\beta_{r-1} \beta_r$ (the last two 2-cycles in the sequence) to simplify the expression. We can consider the following cases for $\beta_{r-1} \beta_r$:

1. **Case 1**: $\beta_{r-1} \beta_r = (a\ b)(a\ b) = \epsilon$.  
   - If the last two 2-cycles are identical, we can simplify $\beta_{r-1} \beta_r = \epsilon$, effectively removing these two 2-cycles from the product.
   - We then have:
     $$
     \epsilon = \beta_1 \beta_2 \cdots \beta_{r-2},
     $$
     which is a product of $r - 2$ 2-cycles.
   - By the inductive hypothesis, $r - 2$ is even, so $r$ must also be even (since adding 2 to an even number keeps it even).

   This completes the proof for this case, as we’ve shown that if $\beta_{r-1} \beta_r = (a\ b)(a\ b)$, then $r$ is even.

2. **Other Cases**: If $\beta_{r-1} \beta_r$ does not equal $\epsilon$, we proceed as follows.  
    The possible forms of $\beta_{r-1} \beta_r$, given that each is a 2-cycle, are:

    1. **Case 2**: $\beta_{r-1} \beta_r = (a\ b)(b\ c) = (a\ c)(a\ b)$
        - In this case, the product $(a\ c)(a\ b)$ is replaced by $(a\ b)(b\ c)$.
        - This substitution creates a new product where the rightmost occurrence of $a$ is now in the second-from-the-right 2-cycle, rather than in the rightmost 2-cycle.
        - We now have a new product of $r$ 2-cycles, but the position of $a$ has shifted one position to the left.

    2. **Case 3**: $\beta_{r-1} \beta_r = (a\ c)(c\ b) = (b\ c)(a\ b)$
        - Similarly, in this case, the product $(b\ c)(a\ b)$ is replaced by $(a\ c)(c\ b)$.
        - This again shifts the rightmost occurrence of $a$ to the second-from-the-right position, while maintaining the structure of the product.
        - We now have a new product of $r$ 2-cycles, with the rightmost occurrence of $a$ shifted one position to the left.

    3. **Case 4**: $\beta_{r-1} \beta_r = (a\ b)(c\ d) = (c\ d)(a\ b)$
        - In this case, $(c\ d)(a\ b)$ is replaced by $(a\ b)(c\ d)$.
        - Here, neither 2-cycle contains $a$ in the rightmost position, but the form of the product remains consistent.

In each of **Cases 2, 3, and 4**, we end up with a new product that has the following properties:

- It still represents the identity permutation $\epsilon$.
- The rightmost occurrence of $a$ is shifted one position to the left in the sequence.

By continuing this process for $\beta_{r-2} \beta_{r-1}$ and so on, we will eventually either:

1. Reach a situation similar to **Case 1**, where $\beta_{r-1} \beta_r = (a\ b)(a\ b) = \epsilon$, allowing us to remove two cycles, reduce the product to a form with **only $r - 2$ 2-cycles**, or
2. Reach a new product with $r$ 2-cycles with $a$ in $\beta_{r-3}$. This process will continue until we reach a form similar to **Case 1**, where we can simplify the product to a form with only $r - 2$ 2-cycles. Because if otherwise, then we would have the only occurrence of $a$ in $\beta_{1}$, which would not change $a$ back to the original position, leads to a contradiction.

So my the Second Principle of Mathematical Induction, since $r - 2$ is even, $r$ must also be even.

### **Theorem 5.5: Always Even or Always Odd**

**Statement**: If a permutation $\alpha$ can be expressed as a product of an even (or odd) number of 2-cycles, then every decomposition of $\alpha$ into a product of 2-cycles must have an even (or odd) number of 2-cycles. In other words, the parity (evenness or oddness) of the number of 2-cycles in a decomposition is invariant.

In symbols, if $\alpha = \beta_1 \beta_2 \cdots \beta_r$ and $\alpha = \gamma_1 \gamma_2 \cdots \gamma_s$
where the $\beta$'s and the $\gamma$'s are 2-cycles, then $r$ and $s$ are both even or both odd.

#### Proof of Theorem 5.5
  
- Suppose $\alpha$ is a permutation that can be written in two ways as products of 2-cycles:
   $$
   \alpha = \beta_1 \beta_2 \cdots \beta_r = \gamma_1 \gamma_2 \cdots \gamma_s,
   $$
   where the $\beta$'s and $\gamma$'s are 2-cycles, and $r$ and $s$ are the numbers of 2-cycles in each decomposition, respectively.
- From the equation above, we can write:
   $$
   \epsilon = \gamma_1 \gamma_2 \cdots \gamma_s \beta_r^{-1} \cdots \beta_2^{-1} \beta_1^{-1},
   $$
   where $\epsilon$ denotes the identity permutation.
- Since a 2-cycle is its own inverse (i.e., $\beta_i = \beta_i^{-1}$ and $\gamma_i = \gamma_i^{-1}$), we can rewrite this expression as:
   $$
   \epsilon = \gamma_1 \gamma_2 \cdots \gamma_s \beta_r \cdots \beta_2 \beta_1.
   $$
- This expression shows that we have written the identity permutation $\epsilon$ as a product of $r + s$ 2-cycles.
- The lemma preceding Theorem 5.5 guarantees that the identity permutation can only be written as a product of an **even** number of 2-cycles.
- Therefore, $r + s$ must be even.
- Since $r + s$ is even, it follows that $r$ and $s$ must both be even or both be odd. This implies that the parity of the number of 2-cycles in any decomposition of $\alpha$ is invariant.

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
     along with 3-cycles like $(123) = (1 2)(1 3)$ and $(132) = (1 2)(1 3)$.
   - By **Theorem 5.7**, $A_4$ has half the order of $S_4$, hence 12 elements.

### **Example 3: Properties of Even and Odd Permutations in $S_3$**

Using **Theorem 5.5** on the parity of permutations:

1. **Elements of $S_3$**:
   - In $S_3$, the elements are:
     $$
     \epsilon = (1)(2)(3), (12), (13), (23), (123), (132)
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

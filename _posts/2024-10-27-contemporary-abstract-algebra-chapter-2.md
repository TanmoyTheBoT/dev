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

## I. Definitions and Examples

### **1. Definition of Binary Operation**

- **Definition**: Let $G$ be a set. A **binary operation** on $G$ is a function that assigns each ordered pair of elements from $G$ an element in $G$.

- **Closure Property**: This condition ensures that combining any two elements in $G$ results in another element in $G$. For instance, addition and multiplication are familiar binary operations on the integers, whereas division is not, as it doesn't produce an integer for all integer inputs.

### **2. Definition of a Group**

- **Formal Definition**: A set $G$ with a binary operation (often referred to as multiplication) is a **group** if the following properties hold:
  1. **Associativity**: For all $a, b, c \in G$, $(ab)c = a(bc)$.
  2. **Identity Element**: There exists an element $e \in G$ such that $ae = ea = a$ for every $a \in G$.
  3. **Inverses**: For each $a \in G$, there exists an element $b \in G$ (the inverse of $a$) such that $ab = ba = e$.

  - A group is **Abelian** if for all $a, b \in G$, $ab = ba$. Otherwise, it is **non-Abelian**.

### **3. Examples of Groups**

#### Example 1: The Set of Integers $\mathbb{Z}$ under Addition

The set of integers $\mathbb{Z}$ (denoted so because the German word for numbers is "Zahlen"), the set of rational numbers $\mathbb{Q}$, and the set of real numbers $\mathbb{R}$ all form groups under ordinary addition.

- **Identity**: The identity element is $0$ since $a + 0 = 0 + a = a$ for any $a \in \mathbb{Z}$.
- **Inverse**: For each integer $a$, the inverse is $-a$, as $a + (-a) = 0$.
- **Associativity**: Addition is associative for all integers.

Thus, $\mathbb{Z}$, $\mathbb{Q}$, and $\mathbb{R}$ under addition satisfy the group properties and are **Abelian** (commutative) groups because $a + b = b + a$.

---

#### Example 2: The Set of Integers under Multiplication

The set of integers under ordinary multiplication is **not** a group.

- **Identity**: While $1$ serves as the identity element under multiplication, not all integers have a multiplicative inverse. For example, there is no integer $b$ such that $5 \cdot b = 1$.
  
Therefore, the set of integers under multiplication does not satisfy the group property of **inverses** and is not a group.

---

#### Example 3: The Set $\lbrace 1, -1, i, -i\rbrace$ under Complex Multiplication

Consider the subset $\lbrace 1, -1, i, -i\rbrace$ of the complex numbers under complex multiplication.

- **Identity**: The identity is $1$ because $1 \cdot a = a \cdot 1 = a$ for any $a$ in the set.
- **Inverses**: Each element has an inverse:
  - $1$ is its own inverse.
  - $-1$ is its own inverse.
  - The inverse of $i$ is $-i$, and the inverse of $-i$ is $i$.
  
This set satisfies all group properties under complex multiplication and forms a group. It is **Abelian** since $ab = ba$ for any pair $a, b$ in the set.

#### Example 4: The Set of Positive Rational Numbers $\mathbb{Q}^+$ under Multiplication

The set of positive rational numbers $\mathbb{Q}^+$ is a group under ordinary multiplication.

- **Identity**: The identity element is $1$, since $a \cdot 1 = 1 \cdot a = a$ for any $a \in \mathbb{Q}^+$.
- **Inverses**: Every positive rational number $a$ has an inverse, $\displaystyle\frac{1}{a}$, because $a \cdot \displaystyle\frac{1}{a} = 1$.
- **Associativity**: Multiplication is associative for positive rational numbers.
- **Commutativity**: $\mathbb{Q}^+$ is **Abelian** because $ab = ba$ for all $a, b \in \mathbb{Q}^+$.

Thus, $\mathbb{Q}^+$ under multiplication satisfies all group properties and is an Abelian group.

---

#### Example 5: The Set $S$ of Positive Irrational Numbers under Multiplication

Consider the set $S$ of positive irrational numbers together with $1$ under multiplication. Although this set satisfies some group properties, it does not form a group.

- **Identity**: The identity element is $1$.
- **Inverses**: Each element has an inverse, e.g., the inverse of $\sqrt{2}$ is $\displaystyle\frac{1}{\sqrt{2}}$, which is irrational.
- **Closure**: The set is **not closed** under multiplication, as seen by $\sqrt{2} \cdot \sqrt{2} = 2$, which is not an irrational number.

Therefore, $S$ does not satisfy the closure property and is not a group.

#### Example 6: The General Linear Group $GL(2, \mathbb{R})$

The set $GL(2, \mathbb{R})$ of all $2 \times 2$ matrices with real entries and nonzero determinants forms a group under matrix multiplication. This group is known as the **general linear group** of $2 \times 2$ matrices over $\mathbb{R}$.

1. **Definition of the Set**:
   $$
   GL(2, \mathbb{R}) = \left\lbrace  \begin{bmatrix} a & b \\ c & d \end{bmatrix} \middle| a, b, c, d \in \mathbb{R}, ad - bc \neq 0 \right\rbrace
   $$

2. **Identity Element**: The identity matrix is
   $$
   \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}
   $$

3. **Inverses**: Each matrix $$\begin{bmatrix} a & b \\ c & d \end{bmatrix}$$ in $GL(2, \mathbb{R})$ has an inverse given by
   $$
   \displaystyle\frac{1}{ad - bc} \begin{bmatrix} d & -b \\ -c & a \end{bmatrix}
   $$
   where $ad - bc \neq 0$ is required to ensure the matrix is invertible.

4. **Associativity**: Matrix multiplication is associative, so for any matrices $A, B, C \in GL(2, \mathbb{R})$, we have $(AB)C = A(BC)$.

5. **Non-Abelian Property**: The group $GL(2, \mathbb{R})$ is **non-Abelian**, meaning that, in general, $AB \neq BA$ for matrices $A$ and $B$ in $GL(2, \mathbb{R})$.

---

#### Example 6: The Set of $2 \times 2$ Matrices with Real Entries under Addition

The set of all $2 \times 2$ matrices with real entries is a group under componentwise addition.

- **Identity**: The identity element is the zero matrix:
  $$
  \begin{bmatrix} 0 & 0 \\ 0 & 0 \end{bmatrix}
  $$
- **Inverses**: For any matrix $$\begin{bmatrix} a & b \\ c & d \end{bmatrix}$$, its inverse under addition is $$\begin{bmatrix} -a & -b \\ -c & -d \end{bmatrix}$$.
- **Associativity**: Addition of matrices is associative.
- **Commutativity**: This group is **Abelian** because addition of matrices is commutative.

Hence, the set of $2 \times 2$ matrices with real entries is an Abelian group under addition.

##### Example 12: $U(n)$ - The Set of Positive Integers Relatively Prime to $n$

As defined by Euler in 1761, the set $U(n)$ consists of all positive integers less than $n$ that are relatively prime to $n$, forming a group under multiplication modulo $n$.

1. **Definition**: For any integer $n$, define $U(n)$ as:
   $$
   U(n) = \lbrace a \in \mathbb{Z}^+ \mid 1 \leq a < n \text{ and } \gcd(a, n) = 1\rbrace
   $$

2. **Group Properties**:
   - **Closure**: If $a$ and $b$ are in $U(n)$, then $ab \mod n$ is also in $U(n)$.
   - **Associativity**: Multiplication modulo $n$ is associative.
   - **Identity**: The identity element is $1$ because $a \cdot 1 \equiv a \mod n$.
   - **Inverses**: Each element in $U(n)$ has an inverse under multiplication modulo $n$, as guaranteed by their relative primality to $n$.

3. **Example Calculation**: For $n = 10$, we find:
   $$
   U(10) = \lbrace 1, 3, 7, 9\rbrace
   $$
   Here, each element is relatively prime to $10$ and forms a group under multiplication modulo $10$. The Cayley table for $U(10)$ is as follows:

   $$
   \begin{array}{c|cccc}
       \times & 1 & 3 & 7 & 9 \\
       \hline
       1 & 1 & 3 & 7 & 9 \\
       3 & 3 & 9 & 1 & 7 \\
       7 & 7 & 1 & 9 & 3 \\
       9 & 9 & 7 & 3 & 1 \\
   \end{array}
   $$

   This confirms that $U(10)$ is closed under multiplication modulo $10$ and contains inverses for each element.

##### Example 13: The Set $\lbrace 0, 1, 2, 3\rbrace$ under Multiplication Modulo 4

The set $\lbrace 0, 1, 2, 3\rbrace$ is **not** a group under multiplication modulo 4.

- **Reason**: Although elements 1 and 3 have multiplicative inverses in this set (1 and 3 are their own inverses), elements 0 and 2 do not have inverses. For instance, there is no element $x$ in $\lbrace 0, 1, 2, 3\rbrace$ such that $2 \cdot x \equiv 1 \mod 4$.

Thus, the lack of inverses for some elements prevents $\lbrace 0, 1, 2, 3\rbrace$ from forming a group under multiplication modulo 4.

#### Example 7: The Set of Integers under Subtraction

The set of all integers under subtraction is **not** a group.

- **Reason**: Subtraction is not an associative operation on integers. For example, \((5 - 3) - 2 = 0\), but \(5 - (3 - 2) = 4\), so \((5 - 3) - 2 \neq 5 - (3 - 2)\).
  
Due to the lack of associativity, the set of integers under subtraction does not satisfy the group properties and, therefore, is not a group .

#### Example 8: The Complex Numbers under Addition and Nonzero Complex Numbers under Multiplication

The set of complex numbers $\mathbb{C} = \lbrace a + bi \mid a, b \in \mathbb{R}, i^2 = -1\rbrace$ forms a group under addition, while the set of nonzero complex numbers $\mathbb{C}^*$ forms a group under multiplication.

1. **Addition on $\mathbb{C}$**:
   - **Identity**: The identity element is $0 + 0i$.
   - **Inverses**: For each complex number $a + bi$, the inverse under addition is $-a - bi$.
   - **Associativity**: Addition of complex numbers is associative.

2. **Multiplication on $\mathbb{C}^*$**:
   - **Identity**: The identity element for multiplication is $1 + 0i$.
   - **Inverses**: For each nonzero complex number $a + bi$, the inverse is given by:
     $$
     \displaystyle\frac{1}{a + bi} = \displaystyle\frac{a - bi}{a^2 + b^2}
     $$
   - **Associativity**: Multiplication of complex numbers is associative.
   - **Commutativity**: Both $\mathbb{C}$ and $\mathbb{C}^*$ are **Abelian** under their respective operations .

#### Example 9: The Set $\mathbb{R}^n$ under Componentwise Addition

The set $\mathbb{R}^n = \lbrace (a_1, a_2, \ldots, a_n) \mid a_i \in \mathbb{R} \rbrace$ forms a group under componentwise addition, defined as:
$$
(a_1, a_2, \ldots, a_n) + (b_1, b_2, \ldots, b_n) = (a_1 + b_1, a_2 + b_2, \ldots, a_n + b_n)
$$

1. **Identity**: The identity element is $(0, 0, \ldots, 0)$.
2. **Inverses**: The inverse of $(a_1, a_2, \ldots, a_n)$ is $(-a_1, -a_2, \ldots, -a_n)$.
3. **Associativity**: Addition is associative in each component.
4. **Commutativity**: The group $\mathbb{R}^n$ under componentwise addition is **Abelian** because addition is commutative in each component.

---

#### Example 10: The Special Linear Group $SL(2, F)$

The set of all $2 \times 2$ matrices with determinant $1$, with entries from a field $F$ (e.g., $\mathbb{Q}, \mathbb{R}, \mathbb{C},$ or $\mathbb{Z}_p$, where $p$ is a prime), forms a **non-Abelian group** under matrix multiplication. This group is called the **special linear group** of $2 \times 2$ matrices over $F$, denoted $SL(2, F)$.

1. **Identity**: The identity element is the matrix
   $$
   \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}
   $$

2. **Inverses**: For any matrix  $$A = \begin{bmatrix} a & b \\ c & d \end{bmatrix} \in SL(2, F)$$, the inverse is given by:
   $$
   \begin{bmatrix} d & -b \\ -c & a \end{bmatrix}
   $$
   This matrix has determinant $1$, maintaining the requirement for $SL(2, F)$.

3. **Associativity**: Matrix multiplication is associative.
4. **Non-Abelian Property**: $SL(2, F)$ is non-Abelian, meaning that matrix multiplication is not commutative for all elements.

---

## II. Theorems on Group Properties

### **Theorem 2.1: Uniqueness of the Identity**

- **Statement**: In a group $G$, there is only one identity element.

- **Proof**:
  - Suppose $e$ and $e'$ are both identity elements in $G$.
  - By definition, for any $a \in G$:
    - $ae = a$ and $e'a = a$.
  - Setting $a = e'$ in the first identity condition gives $e'e = e'$.
  - Setting $a = e$ in the second condition gives $e'e = e$.
  - Thus, $e = e'$, proving that the identity element is unique.

### **Theorem 2.2: Cancellation Laws**

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

### **Theorem 2.3: Uniqueness of Inverses**

- **Statement**: For each element $a$ in a group $G$, there exists a unique element $b$ in $G$ such that $ab = ba = e$.

- **Proof**:
  - Suppose $b$ and $c$ are both inverses of $a$.
  - Then $ab = e$ and $ac = e$.
  - From $ab = ac$, applying the cancellation law yields $b = c$.
  - Therefore, each element $a$ has a unique inverse in $G$.

### **Theorem 2.4: Socks-Shoes Property (Inverse of a Product)**

- **Statement**: For any elements $a$ and $b$ in a group $G$, $(ab)^{-1} = b^{-1}a^{-1}$.

- **Proof**:
  - We know that $(ab)(ab)^{-1} = e$.
  - Substitute $(ab)^{-1} = b^{-1}a^{-1}$ and verify:
    - $(ab)(b^{-1}a^{-1}) = a(bb^{-1})a^{-1} = ae a^{-1} = aa^{-1} = e$.
  - By the uniqueness of inverses, we conclude that $(ab)^{-1} = b^{-1}a^{-1}$.

---

## III. Historical Note on Non-Commutative Matrices in Quantum Mechanics

This section provides insight into the impact of non-commutative properties within the context of matrix operations and quantum mechanics.

### **Historical Background: Non-commutativity and Quantum Mechanics**

- In 1925, quantum mechanics was an emerging field filled with complex and ambiguous problems. One breakthrough came from physicist **Werner Heisenberg**, who observed that the product of certain quantum analogs of classical functions did not follow the commutative property. This meant that for two elements $X$ and $Y$ in this system, $XY \neq YX$.

- Heisenberg found this discovery uncomfortable, referring to non-commutativity as the only troubling aspect in his otherwise well-formed theory. Unsure about his conclusions, he sought advice from his mentor, **Max Born**, who recognized the potential of Heisenberg's work.

- Max Born, with his student **Pascual Jordan**, reformulated Heisenberg's concepts using matrix theory, giving birth to the matrix mechanics formulation of quantum mechanics. Though Heisenberg had limited knowledge of matrices, his insight led to significant advancements in physics.

- Heisenberg, Born, and **Paul Dirac** were awarded the Nobel Prize for these groundbreaking contributions, though Heisenberg later expressed his regret that Born's contributions were not fully recognized initially. Born eventually received the Nobel Prize in 1954 for his work in quantum mechanics, completing the acknowledgment of this revolutionary discovery.

This historical note highlights the broader implications of abstract group theory concepts, particularly non-commutativity, in shaping modern physics and expanding our understanding of the mathematical foundations of reality.

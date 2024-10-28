---
title: "Contemporary Abstract Algebra: Chapter 3"
description: My notes on chapter 3 of the book Contemporary Abstract Algebra (supported by AI) 
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
### Terminology and Notation

#### 1. **Order of a Group**

- The number of elements in a group $G$, whether finite or infinite, is called its order. It is denoted by $\vert G \vert$.
- **Example**: The group $\mathbb{Z}$ of integers under addition has infinite order, while $U(10) = \lbrace 1, 3, 7, 9\rbrace$ under multiplication modulo 10 has order 4.

#### 2. **Order of an Element**

- The order of an element $g$ in a group $G$ is the smallest positive integer $n$ such that $g^n = e$, where $e$ is the identity element. If no such integer exists, $g$ has infinite order. It is denoted by $\vert g \vert$.
- To find the order of $g$, compute the sequence $g, g^2, g^3, \ldots$ until reaching the identity element.

---

### Examples

1. **Example 1**: *Order of Elements in $U(15)$*  
   $U(15) = \lbrace 1, 2, 4, 7, 8, 11, 13, 14\rbrace$ under multiplication modulo 15. This group has order 8.

   - To find the order of element $7$:  
     $$
     7^1 = 7, \quad 7^2 = 4, \quad 7^3 = 13, \quad 7^4 = 1
     $$  
     So, $\vert 7\vert  = 4$.

   - For element $11$:  
     $$
     11^1 = 11, \quad 11^2 = 1
     $$  
     Hence, $\vert 11\vert  = 2$.

1. **Example 2**: *Order of Elements in $\mathbb{Z}_{10}$*  
   In the group $\mathbb{Z}_{10}$ under addition modulo 10:

   - To find the order of element $2$:  
     $$
     1 \cdot 2 = 2, \quad 2 \cdot 2 = 4, \quad 3 \cdot 2 = 6, \quad 4 \cdot 2 = 8, \quad 5 \cdot 2 = 0
     $$  
     Thus, $\vert 2\vert  = 5$.

   - Similar computations give:  
     $$
     \vert 0\vert  = 1, \quad \vert 7\vert  = 10, \quad \vert 5\vert  = 2, \quad \vert 6\vert  = 5
     $$

---

### Subgroup Definitions

1. **Definition of a Subgroup**:
   - A subset $H$ of a group $G$ is a subgroup of $G$ if $H$ is itself a group under the operation defined on $G$.
   - Notation: We write $H \leq G$ to indicate that $H$ is a subgroup of $G$.
   - If $H$ is a subgroup of $G$ but not equal to $G$ itself, it is called a **proper subgroup**, denoted $H < G$.
   - The **trivial subgroup** consists solely of the identity element, while any other subgroup is considered **nontrivial**.

2. **Subgroup Notation**:
   - **Proper Subgroup**: $H < G$
   - **Nontrivial Subgroup**: Any subgroup $H$ with elements other than the identity element.
   - **Example**: In $\mathbb{Z}$ (integers under addition), $2\mathbb{Z}$ (even integers) is a subgroup of $\mathbb{Z}$, while $\mathbb{Z}_n$ under addition modulo $n$ is not a subgroup of $\mathbb{Z}$, as it uses a different operation.

---

### Theorems and Proofs for Subgroup Verification

1. **Theorem 3.1**: *One-Step Subgroup Test*
   - **Statement**: Let $G$ be a group and $H$ a nonempty subset of $G$. If $ab^{-1} \in H$ whenever $a, b \in H$, then $H$ is a subgroup of $G$.
   - **Proof**:
     - Since $H \subset G$ and $G$ is a group, the operation in $H$ is associative by definition.
     - To confirm $e \in H$, pick any $x \in H$ and set $a = x$, $b = x$. Then, $e = xx^{-1} = ab^{-1} \in H$.
     - For each $x \in H$, its inverse $x^{-1}$ must also be in $H$. Let $a = e$ and $b = x$; then $a b^{-1} = x^{-1} \in H$.
     - Closure of $H$: For $x, y \in H$, $xy \in H$ because $y^{-1} \in H$, so $xy = x(y^{-1})^{-1} = ab^{-1} \in H$.
   - **Conclusion**: $H$ satisfies all group axioms and is a subgroup of $G$.

2. **Theorem 3.2**: *Two-Step Subgroup Test*
   - **Statement**: Let $G$ be a group and $H$ a nonempty subset of $G$. If $H$ is closed under the group operation (i.e., $ab \in H$ for $a, b \in H$) and $H$ contains inverses (i.e., $a^{-1} \in H$ for each $a \in H$), then $H$ is a subgroup of $G$.
   - **Proof**:
     - By assumption, $H \subset G$ and the operation on $H$ is associative as in $G$.
     - Since $H$ is nonempty, we need only check that $e \in H$. Let $a \in H$; then $a^{-1} \in H$ by assumption, and so $aa^{-1} = e \in H$.
     - Thus, $H$ contains the identity, is closed, and contains inverses, making it a subgroup of $G$.

3. **Theorem 3.3**: *Finite Subgroup Test*
   - **Statement**: Let $H$ be a nonempty finite subset of a group $G$. If $H$ is closed under the operation of $G$, then $H$ is a subgroup of $G$.
   - **Proof**:
     - Given that $H$ is finite and closed under $G$'s operation, consider any $a \in H$.
     - Since $H$ is finite and closed under $G$'s operation, for any $a\in H$, the sequence $a,a^2,a^3,\ldots$ must eventually repeat, so there exist integers $m$ and $n$ with $m>n$ such that $a^m=a^n$, implying $a^{m-n}=e$ and thus $e\in H$.
     - For any $a\in H$, we have $a^{m-n}=e$, which implies $a$ has finite order; letting $k$ be the smallest integer such that $a^k=e$, we find that $a^{k-1}$ is the inverse of $a$ and is in $H$, since $H$ is closed.

Let's move on to **Examples Applying Subgroup Tests** to illustrate these theorems in action.

---

### Examples Applying Subgroup Tests

1. **Example 4**: *Subgroup of Abelian Group $G$ with Condition $x^2 = e$*  
   Let $G$ be an Abelian group with identity $e$, and define $H = \lbrace  x \in G \mid x^2 = e \rbrace$.
   - Here, the defining property of $H$ is that $x^2 = e$ for all $x \in H$.
   - **Application of One-Step Subgroup Test**:
     - First, $e^2 = e$, so $e \in H$, making $H$ nonempty.
     - Now, if $a, b \in H$, then $a^2 = e$ and $b^2 = e$.
     - Since $G$ is Abelian, we have:
       $$
       (ab^{-1})^2 = ab^{-1} ab^{-1} = a^2(b^{-1})^2 = e \cdot e = e
       $$
     - Thus, $ab^{-1} \in H$, so by Theorem 3.1, $H$ is a subgroup of $G$.

2. **Example 5**: *Subgroup of Squares in $G$*  
   Let $G$ be an Abelian group under multiplication with identity $e$, and let $H = \lbrace  x^2 \mid x \in G \rbrace$, representing the set of all squares in $G$.
   - **Application of One-Step Subgroup Test**:
     - Note that $e = e^2 \in H$, so $H$ is nonempty.
     - Let $a^2$ and $b^2$ be elements of $H$ (meaning $a, b \in G$). We must show that $(a^2)(b^2)^{-1} \in H$.
     - Since $G$ is Abelian, we can write:
       $$
       a^2(b^2)^{-1} = (ab^{-1})^2
       $$
       which is the square of some element in $G$ and thus in $H$.
     - Therefore, $H$ is a subgroup of $G$.

3. **Example 6**: *Subgroup of Elements with Finite Order in Abelian Group $G$*  
   Let $G$ be an Abelian group, and let $H = \lbrace  x \in G \mid \vert x\vert  \text{ is finite} \rbrace$, where $\vert x\vert $ denotes the order of $x$.
   - **Application of Two-Step Subgroup Test**:
     - Since $e \in H$ and $\vert e\vert  = 1$, $H \neq \emptyset$.
     - If $a, b \in H$, then $\vert a\vert  = m$ and $\vert b\vert  = n$ are finite.
     - Since $G$ is Abelian, we have:
       $$
       (ab)^{mn} = a^{mn}b^{mn} = e \cdot e = e
       $$
     - This shows $ab$ has finite order, so $ab \in H$.
     - Furthermore, $a^{-1}$ also has finite order, as $(a^{-1})^m = (a^m)^{-1} = e^{-1} = e$, so $a^{-1} \in H$.
     - By Theorem 3.2, $H$ is a subgroup of $G$.

4. **Example 7**: *Subgroup $HK$ in Abelian Group $G$*  
   Let $G$ be an Abelian group, and let $H$ and $K$ be subgroups of $G$. Define $HK = \lbrace  hk \mid h \in H, k \in K \rbrace$.
   - **Application of Two-Step Subgroup Test**:
     - First, $e = ee \in HK$, so $HK \neq \emptyset$.
     - Suppose $a, b \in HK$; then $a = h_1k_1$ and $b = h_2k_2$ for some $h_1, h_2 \in H$ and $k_1, k_2 \in K$.
     - Since $G$ is Abelian, we have:
       $$
       ab = h_1k_1h_2k_2 = (h_1h_2)(k_1k_2) \in HK
       $$
     - Also, $a^{-1} = (h_1k_1)^{-1} = k_1^{-1}h_1^{-1} \in HK$ since inverses are closed in $H$ and $K$.
     - Thus, by Theorem 3.2, $HK$ is a subgroup of $G$.

---

### Advanced Theorems and Applications

1. **Theorem 3.4**: *$\langle a \rangle$ Is a Subgroup*
   - **Statement**: Let $G$ be a group, and let $a$ be any element of $G$. Then, the set $\langle a \rangle = \lbrace  a^n \mid n \in \mathbb{Z} \rbrace$ is a subgroup of $G$.
   - **Proof**:
     - The set $\langle a \rangle$ is not empty, as it contains $e = a^0$.
     - For any $a^m, a^n \in \langle a \rangle$, we have $a^m (a^n)^{-1} = a^{m-n} \in \langle a \rangle$.
     - By the One-Step Subgroup Test (Theorem 3.1), $\langle a \rangle$ is a subgroup of $G$.
   - **Conclusion**: $\langle a \rangle$ forms a subgroup known as the **cyclic subgroup** generated by $a$. If $G = \langle a \rangle$, $G$ is called a cyclic group, and $a$ is its generator.

2. **Theorem 3.5**: *Center Is a Subgroup*
   - **Statement**: The center of a group $G$, denoted $Z(G)$, is the subset of elements in $G$ that commute with every element of $G$. Formally,
     $$
     Z(G) = \lbrace  a \in G \mid ax = xa \text{ for all } x \in G \rbrace
     $$
     Then, $Z(G)$ is a subgroup of $G$.
   - **Proof**:
     - Since $e \in Z(G)$ (as $ex = xe = x$ for all $x \in G$), $Z(G)$ is nonempty.
     - Let $a, b \in Z(G)$; then for any $x \in G$:
       $$
       (ab)x = a(bx) = a(xb) = (ax)b = x(ab)
       $$
       showing $ab \in Z(G)$.
     - Now, for any $a\in Z(G)$, $ax=xa$ for all $x\in G$. Multiplying on the left and right by $a^{-1}$ gives $a^{-1}(ax)a^{-1}=a^{-1}(xa)a^{-1} \Leftrightarrow x a^{-1}=a^{-1} x$, so $a^{-1}\in Z(G)$.
     - By the Two-Step Subgroup Test (Theorem 3.2), $Z(G)$ is a subgroup of $G$.
   - **Conclusion**: $Z(G)$ is a subgroup called the **center of the group**, consisting of elements that commute with every element of $G$.

3. **Theorem 3.6**: *Centralizer $C(a)$ Is a Subgroup*
   - **Statement**: For each element $a$ in a group $G$, the centralizer of $a$ in $G$, denoted $C(a)$, is the set of all elements in $G$ that commute with $a$. Formally,
     $$
     C(a) = \lbrace  g \in G \mid ga = ag \rbrace
     $$
     . Then, $C(a)$ is a subgroup of $G$.
   - **Proof**:
     - By definition, $e \in C(a)$ because $ea = ae = a$.
     - If $x, y \in C(a)$, then for $x \in G$, $(xy)a = x(ya) = x(ay) = (xa)y = a(xy)$, so $xy \in C(a)$.
     - If $x \in C(a)$, then $xa=ax$ (by definition of the centralizer $C(a)$), so $x^{-1}(xa)x^{-1}=x^{-1}(ax)x^{-1} \Leftrightarrow ax^{-1}=x^{-1}a$, thus $x^{-1} \in C(a)$.
     - By the Two-Step Subgroup Test (Theorem 3.2), $C(a)$ is a subgroup of $G$.
   - **Conclusion**: $C(a)$ is a subgroup of $G$, known as the **centralizer of $a$**, and includes all elements of $G$ that commute with $a$.

Let's explore **Examples of Subgroup Applications** to see how these advanced theorems and subgroup properties are applied in practice.

---

### Examples of Subgroup Applications

1. **Example 8**: *Non-Subgroup Verification in $G$*  
   Let $G$ be the group of nonzero real numbers under multiplication.
   - Define $H = \lbrace  x \in G \mid x = 1 \text{ or } x \text{ is irrational} \rbrace$.
   - **Verification**: Check if $H$ is a subgroup.
     - Notice that $\sqrt{2} \in H$, but $(\sqrt{2}) \cdot (\sqrt{2}) = 2 \notin H$, as 2 is rational.
     - Since $H$ fails to be closed under multiplication, it is **not a subgroup** of $G$.

2. **Example 9**: *Cyclic Subgroup in $U(10)$*  
   Consider the group $U(10) = \lbrace 1, 3, 7, 9\rbrace$ under multiplication modulo 10.
   - Let $\langle 3 \rangle$ represent the cyclic subgroup generated by 3.
     - Compute: $3^1 = 3$, $3^2 = 9$, $3^3 = 7$, $3^4 = 1$.
   - Therefore, $\langle 3 \rangle = \lbrace 3, 9, 7, 1\rbrace = U(10)$, which means $U(10)$ is cyclic with 3 as a generator.

3. **Example 10**: *Cyclic Subgroup in $\mathbb{Z}_{10}$*  
   In the group $\mathbb{Z}_{10}$ (integers under addition modulo 10), find the cyclic subgroup generated by 2.
   - Let $\langle 2 \rangle = \lbrace  2n \mid n \in \mathbb{Z} \rbrace$ under addition modulo 10.
     - Compute: $2 \cdot 1 = 2$, $2 \cdot 2 = 4$, $2 \cdot 3 = 6$, $2 \cdot 4 = 8$, $2 \cdot 5 = 0$.
   - Thus, $\langle 2 \rangle = \lbrace 0, 2, 4, 6, 8\rbrace$, which is a cyclic subgroup of $\mathbb{Z}_{10}$.

4. **Example 11**: *Subgroup $D_3$ of $D_6$ Using Symmetry*  
   Consider the dihedral group $D_6$ (symmetries of a hexagon) and the subgroup $D_3$ (symmetries of an equilateral triangle inscribed in the hexagon).
   - Define $D_3 = \lbrace R_0, R_{120}, R_{240}, F, R_{120}F, R_{240}F\rbrace$, where $R_\theta$ denotes rotation by $\theta$ degrees, and $F$ denotes a reflection.
   - **Verification**: $D_3$ is closed under the operations of $D_6$ and contains the identity, inverses, and is associative within $D_6$.
   - Thus, $D_3$ is a subgroup of $D_6$.

5. **Example 12**: *Center of the Dihedral Group $D_n$*  
   For $D_n$, the group of symmetries of a regular $n$-gon:
   - If $n$ is even, the center $Z(D_n) = \lbrace R_0, R_{180}\rbrace$, where $R_{180}$ is rotation by 180 degrees.
   - If $n$ is odd, the center $Z(D_n) = \lbrace R_0\rbrace$.
   - This is because only $R_0$ and $R_{180}$ commute with every element in $D_n$ for even $n$, while only $R_0$ does so for odd $n$.

6. **Example 13**: *Centralizer in $D_4$*  
   In $D_4$ (symmetries of a square), find the centralizers of various elements:
   - For example, the centralizer of $R_{90}$ (rotation by 90 degrees) in $D_4$ is $C(R_{90}) = \lbrace  R_0, R_{90}, R_{180}, R_{270} \rbrace$, as these rotations commute with $R_{90}$.
   - Similarly, the centralizer of a reflection $H$ in $D_4$ is $C(H) = \lbrace  R_0, H, R_{180}, V \rbrace$, as these elements commute with $H$.

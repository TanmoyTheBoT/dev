---
title: "Contemporary Abstract Algebra: Chapter 4"
description: This is a AI-generated note from the book Contemporary Abstract Algebra
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
### Theorem 4.1 and Corollaries

---

#### Theorem 4.1: Criterion for $a^i = a^j$

**Statement**:
Let $G$ be a group, and let $a \in G$.

1. If $a$ has infinite order, then $a^i = a^j$ if and only if $i = j$.
2. If $a$ has finite order $n$, then $\langle a \rangle = \lbrace e, a, a^2, \dots, a^{n-1}\rbrace$ and $a^i = a^j$ if and only if $n$ divides $i - j$.

**Proof**:

1. **Case of Infinite Order**: If $a$ has infinite order, there is no nonzero integer $n$ such that $a^n = e$. Thus, if $a^i = a^j$, then $a^{i-j} = e$, implying $i - j = 0$ (as $a$ has infinite order). Therefore, $i = j$.

2. **Case of Finite Order**: Assume $\vert a \vert = n$.
   - To show $\langle a \rangle = \lbrace e, a, a^2, \dots, a^{n-1}\rbrace$, we note that $\lbrace e, a, a^2, \dots, a^{n-1}\rbrace \subset \langle a \rangle$.
   - For any integer $k$, by the Division Algorithm, $k = nq + r$ with $0 \leq r < n$, so $a^k = a^r$. Therefore, $\langle a \rangle = \lbrace e, a, a^2, \dots, a^{n-1}\rbrace$.
   - If $a^i = a^j$, then $a^{i-j} = e$. By the Division Algorithm, $i - j = nq$, so $n$ divides $i - j$.

---

#### Corollary 1: $\vert a \vert = |\langle a \rangle|$

**Statement**:
For any group element $a$, the order of $a$ (denoted $\vert a \vert$) equals the order of the cyclic group $\langle a \rangle$.

**Proof**:

1. By definition, the order of an element $a$ in a group $G$ is the smallest positive integer $n$ such that $a^n = e$, where $e$ is the identity element.
2. The order of the cyclic group $\langle a \rangle$ is defined as the number of distinct elements in $\langle a \rangle = \lbrace  e, a, a^2, \dots, a^{n-1} \rbrace$.
3. If $\vert a \vert = n$, then $\langle a \rangle$ consists exactly of $n$ distinct elements $\lbrace  e, a, a^2, \dots, a^{n-1} \rbrace$ because $a^n = e$ and no smaller power of $a$ equals $e$.
4. Therefore, $\vert a \vert = \vert\langle a \rangle\vert = n$.

This completes the proof of Corollary 1.

---

#### Corollary 2: $a^k = e$ if and only if $\vert a \vert$ divides $k$

**Statement**:
For any group element $a$, $a^k = e$ if and only if $\vert a \vert$ divides $k$.

**Proof**:

1. Suppose $\vert a \vert = n$. Then by definition, $a^n = e$, and $n$ is the smallest positive integer for which this is true.
2. **(If)** If $\vert a \vert$ divides $k$, then $k = n \cdot m$ for some integer $m$.
   - Then $a^k = a^{nm} = (a^n)^m = e^m = e$.
3. **(Only If)** Conversely, if $a^k = e$, we want to show that $n$ divides $k$.
   - Since $a^k = e$ and $n$ is the smallest positive integer for which $a^n = e$, it follows by the Division Algorithm that $k = nq + r$ for integers $q$ and $r$ with $0 \leq r < n$.
   - Therefore, $a^k = a^{nq + r} = (a^n)^q \cdot a^r = e \cdot a^r = a^r$.
   - Since $a^k = e$, this implies $a^r = e$. By the minimality of $n$, $r = 0$, so $n$ divides $k$.

This completes the proof of Corollary 2.

---

#### Corollary 3: $a^k = e$ if and only if $k$ is a multiple of $\vert a \vert$

**Statement**:
For any group element $a$, $a^k = e$ if and only if $k$ is a multiple of $\vert a \vert$.

**Proof**:

1. This corollary restates Corollary 2 in terms of multiples.
2. Since $\vert a \vert = n$ is the smallest positive integer such that $a^n = e$, then $a^k = e$ if and only if $k$ can be expressed as $k = n \cdot m$ for some integer $m$.
3. Therefore, $a^k = e$ if and only if $k$ is a multiple of $n = \vert a \vert$.

This completes the proof of Corollary 3.

---

#### Corollary 4: Relationship between $\vert ab \vert$ and $\vert a \vert \vert b \vert$

**Statement**:
If $a$ and $b$ belong to a finite group and $ab = ba$, then $\vert ab \vert$ divides $\vert a \vert \vert b \vert$.

**Proof**:
Let $\vert a \vert = m$ and $\vert b \vert = n$, so $a^m = e$ and $b^n = e$.

1. Since $a$ and $b$ commute ($ab = ba$), we have:
   $$
   (ab)^{mn} = a^{mn} b^{mn} = (a^m)^n (b^n)^m = e \cdot e = e
   $$
   implying that $(ab)^{mn} = e$.

2. By the definition of order, $\vert ab \vert$ must divide $mn$ since $(ab)^{mn} = e$.
3. Thus, $\vert ab \vert$ divides $\vert a \vert \vert b \vert = mn$, proving Corollary 4.

### Theorem 4.2 and Corollaries

---

#### Theorem 4.2: $\langle a^k \rangle = \langle a^{\gcd(n, k)} \rangle$ and $\vert a^k \vert = \frac{n}{\gcd(n, k)}$

**Statement**:
Let $a$ be an element of order $n$ in a group, and let $k$ be a positive integer.

1. $\langle a^k \rangle = \langle a^{\gcd(n, k)} \rangle$.
2. $\vert a^k \vert = \frac{n}{\gcd(n, k)}$.

**Proof**:

1. Let $d = \gcd(n, k)$ and write $k = dr$. Then $a^k = (a^d)^r$, so $\langle a^k \rangle \subseteq \langle a^d \rangle$.
   - By the properties of gcd, there exist integers $s$ and $t$ such that $d = ns + kt$. Thus, $a^d \in \langle a^k \rangle$, implying $\langle a^d \rangle \subseteq \langle a^k \rangle$.
   - Therefore, $\langle a^k \rangle = \langle a^{\gcd(n, k)} \rangle$.

2. To prove $\vert a^k \vert = \frac{n}{d}$:
   - Observe that $(a^d)^{n/d} = a^n = e$, so $\vert a^d \vert \leq \frac{n}{d}$.
   - If $i$ is a positive integer less than $\frac{n}{d}$, then $(a^d)^i \neq e$ by the minimality of $\vert a \vert = n$.
   - Therefore, $\vert a^d \vert = \frac{n}{d}$, and thus $\vert a^k \vert = \frac{n}{\gcd(n, k)}$.

### Corollaries for Theorem 4.2

---

#### Corollary 1: Orders of Elements in Finite Cyclic Groups

**Statement**:
In a finite cyclic group, the order of any element divides the order of the group.

**Proof**:
Let $G = \langle a \rangle$ be a cyclic group of order $n$. For any element $a^k \in G$, Theorem 4.2 tells us that the order of $a^k$, denoted $\vert a^k \vert$, is $\frac{n}{\gcd(n, k)}$.  
Since $\gcd(n, k)$ divides $n$, the quantity $\frac{n}{\gcd(n, k)}$ must also divide $n$. Therefore, the order of $a^k$ divides the order of $G$, proving Corollary 1.

---

#### Corollary 2: Criterion for $\langle a^i \rangle = \langle a^j \rangle$ and $\vert a^i \vert = \vert a^j \vert$

**Statement**:
Let $\vert a \vert = n$. Then:

1. $\langle a^i \rangle = \langle a^j \rangle$ if and only if $\gcd(n, i) = \gcd(n, j)$.
2. $\vert a^i \vert = \vert a^j \vert$ if and only if $\gcd(n, i) = \gcd(n, j)$.

**Proof**:

1. For the first part, by Theorem 4.2, we have $\langle a^i \rangle = \langle a^{\gcd(n, i)} \rangle$ and $\langle a^j \rangle = \langle a^{\gcd(n, j)} \rangle$.
   - Therefore, $\langle a^i \rangle = \langle a^j \rangle$ if and only if $\gcd(n, i) = \gcd(n, j)$.

2. For the second part, Theorem 4.2 tells us that $\vert a^i \vert = \frac{n}{\gcd(n, i)}$ and $\vert a^j \vert = \frac{n}{\gcd(n, j)}$.
   - Therefore, $\vert a^i \vert = \vert a^j \vert$ if and only if $\gcd(n, i) = \gcd(n, j)$, proving Corollary 2.

---

#### Corollary 3: Generators of Finite Cyclic Groups

**Statement**:
Let $\vert a \vert = n$. Then $\langle a \rangle = \langle a^j \rangle$ if and only if $\gcd(n, j) = 1$.

**Proof**:
The subgroup $\langle a^j \rangle$ equals $\langle a \rangle$ if and only if $a^j$ generates the entire group $G$, which has order $n$.

- By Theorem 4.2, the order of $a^j$ is $\frac{n}{\gcd(n, j)}$.
- Therefore, $a^j$ will generate the entire group $G$ (i.e., $\langle a^j \rangle = \langle a \rangle$) if and only if $\vert a^j \vert = n$, which happens if and only if $\gcd(n, j) = 1$.
This completes the proof of Corollary 3.

---

#### Corollary 4: Generators of $\mathbb{Z}_n$

**Statement**:
An integer $k$ in $\mathbb{Z}_n$ is a generator of $\mathbb{Z}_n$ if and only if $\gcd(n, k) = 1$.

**Proof**:
The group $\mathbb{Z}_n$ under addition modulo $n$ is cyclic with $1$ as a generator. Any integer $k \in \mathbb{Z}_n$ generates $\mathbb{Z}_n$ if and only if it is relatively prime to $n$.

- Specifically, if $\gcd(n, k) = 1$, then $k$ is relatively prime to $n$ and thus generates $\mathbb{Z}_n$.
- Conversely, if $k$ is a generator of $\mathbb{Z}_n$, then $\langle k \rangle = \mathbb{Z}_n$, which implies $\vert k \vert = n$.
  - By Theorem 4.2, $\vert k \vert = \frac{n}{\gcd(n, k)}$. Therefore, for $\vert k \vert = n$, it must be that $\gcd(n, k) = 1$.

This completes the proof of Corollary 4.

### Theorem 4.3 and Corollaries

---

#### Theorem 4.3: Fundamental Theorem of Cyclic Groups

**Statement**:
Every subgroup of a cyclic group is cyclic. Moreover, if $\vert \langle a \rangle \vert = n$, then:

1. The order of any subgroup of $\langle a \rangle$ is a divisor of $n$.
2. For each positive divisor $k$ of $n$, $\langle a \rangle$ has exactly one subgroup of order $k$, namely $\langle a^{n/k} \rangle$.

---

**Proof**:

1. **Cyclic Nature of Subgroups**:
   - Let $G = \langle a \rangle$ be a cyclic group of order $n$, and let $H$ be a subgroup of $G$.
   - Since $G$ is cyclic, every element of $H$ can be written as $a^m$ for some integer $m$.
   - Let $m$ be the smallest positive integer such that $a^m \in H$. Then $H = \langle a^m \rangle$, proving that $H$ is cyclic.

2. **Order of Subgroups**:
   - If $H = \langle a^m \rangle$, then the order of $H$ is $\frac{n}{\gcd(n, m)}$ (from Theorem 4.2).
   - Let $k$ be a positive divisor of $n$. Then $\langle a^{n/k} \rangle$ is a subgroup of $G$ with order $k$.
   - By the uniqueness of the cyclic subgroup generated by a given element in $G$, $\langle a^{n/k} \rangle$ is the unique subgroup of order $k$ in $G$.

---

#### Corollary: Subgroups of $\mathbb{Z}_n$

**Statement**:
For each positive divisor $k$ of $n$, the set $\langle n/k \rangle$ is the unique subgroup of $\mathbb{Z}_n$ of order $k$; moreover, these are the only subgroups of $\mathbb{Z}_n$.

**Proof**:
The group $\mathbb{Z}_n$ is cyclic with order $n$, generated by $1$.

- By Theorem 4.3, every subgroup of a cyclic group is cyclic, and the order of each subgroup divides $n$.
- For each divisor $k$ of $n$, the subgroup generated by $n/k$ in $\mathbb{Z}_n$ has order $k$, and there is exactly one such subgroup by Theorem 4.3.

Thus, the only subgroups of $\mathbb{Z}_n$ are the cyclic subgroups generated by $n/k$ for each divisor $k$ of $n$, proving the corollary.

### Theorem 4.4 and Corollaries

---

#### Theorem 4.4: Number of Elements of Each Order in a Cyclic Group

**Statement**:
If $d$ is a positive divisor of $n$, the number of elements of order $d$ in a cyclic group of order $n$ is $\varphi(d)$, where $\varphi$ is the Euler phi function.

---

**Proof**:
Let $G = \langle a \rangle$ be a cyclic group of order $n$, generated by $a$.

1. **Existence of Subgroups of Each Order**:
   - By Theorem 4.3, for each divisor $d$ of $n$, there exists a unique subgroup $H$ of $G$ with order $d$, specifically $H = \langle a^{n/d} \rangle$.

2. **Elements of Order $d$**:
   - An element $x$ in $G$ has order $d$ if and only if it generates the subgroup $H$ of order $d$.
   - The elements of $H$ are precisely the powers of $a^{n/d}$, which form the cyclic subgroup of order $d$. Thus, we need to find how many elements in $H$ generate it.

3. **Counting Generators Using the Euler Phi Function**:
   - The subgroup $H$ of order $d$ is generated by $a^{n/d}$.
   - Each generator of $H$ is of the form $(a^{n/d})^k = a^{(n/d) \cdot k}$, where $k$ is an integer relatively prime to $d$ (since $d$ is the order of $H$).
   - By definition, the number of integers $k$ less than $d$ and relatively prime to $d$ is given by $\varphi(d)$.

Therefore, there are $\varphi(d)$ elements in $G$ of order $d$, proving Theorem 4.4.

---

#### Corollary 4.1: Number of Elements of Order $d$ in a Finite Group

**Statement**:
In a finite group, the number of elements of order $d$ is a multiple of $\varphi(d)$.

**Proof**:
Let $G$ be a finite group. If $G$ has no elements of order $d$, the statement is trivially true since $\varphi(d)$ divides zero.

Suppose $G$ has elements of order $d$:

1. If $G$ has one subgroup $H$ of order $d$, then by Theorem 4.4, $H$ contains exactly $\varphi(d)$ elements of order $d$.
2. If $G$ has additional subgroups of order $d$, each must also contain $\varphi(d)$ distinct elements of order $d$, as these subgroups cannot share elements of order $d$ (otherwise, they would coincide by uniqueness of generators within a cyclic subgroup).

Thus, the total number of elements of order $d$ in $G$ is a multiple of $\varphi(d)$, completing the proof of Corollary 4.1.

### Examples Demonstrating Theorems on Cyclic Groups

---

#### Example 1: Cyclic Groups and Generators

**Statement**: The set of integers $\mathbb{Z}$ under addition is a cyclic group generated by 1 and -1.

- **Solution**: Since every integer can be written as a multiple of 1 (or -1), $\mathbb{Z} = \langle 1 \rangle = \langle -1 \rangle$.
- **Conclusion**: Both 1 and -1 generate $\mathbb{Z}$, illustrating a cyclic group with two generators.

---

#### Example 2: Generators of $\mathbb{Z}_n$

**Statement**: For $n = 8$, the group $\mathbb{Z}_8 = \lbrace 0, 1, 2, \dots, 7\rbrace$ under addition modulo 8 is cyclic. Determine its generators.

- **Solution**:
  - To find the generators, we identify elements $k$ such that $\gcd(n, k) = 1$ (per Corollary 4).
  - For $n = 8$, the integers less than 8 that are relatively prime to 8 are 1, 3, 5, and 7.
  - Thus, the generators of $\mathbb{Z}_8$ are 1, 3, 5, and 7.

- **Conclusion**: $\mathbb{Z}_8$ has multiple generators, demonstrating how the criterion $\gcd(n, k) = 1$ determines them.

---

#### Example 3: Applying Theorem 4.2

**Statement**: For an element $a$ with $\vert a \vert = 30$, find $\langle a^{26} \rangle$, $\langle a^{17} \rangle$, and $\langle a^{18} \rangle$ along with their orders.

- **Solution**: Using Theorem 4.2:
  - **$\langle a^{26} \rangle$**:
    - $\gcd(30, 26) = 2$, so $\langle a^{26} \rangle = \langle a^2 \rangle$, and $\vert a^{26} \vert = \frac{30}{2} = 15$.
  - **$\langle a^{17} \rangle$**:
    - $\gcd(30, 17) = 1$, so $\langle a^{17} \rangle = \langle a \rangle$, and $\vert a^{17} \vert = \frac{30}{1} = 30$.
  - **$\langle a^{18} \rangle$**:
    - $\gcd(30, 18) = 6$, so $\langle a^{18} \rangle = \langle a^6 \rangle$, and $\vert a^{18} \vert = \frac{30}{6} = 5$.

- **Conclusion**: The example illustrates how Theorem 4.2 allows us to determine the structure and order of subgroups generated by powers of $a$.

---

#### Example 4: Subgroups of $\mathbb{Z}_{30}$

**Statement**: List the subgroups of $\mathbb{Z}_{30}$ and identify their orders.

- **Solution**:
  - $\mathbb{Z}_{30}$ is generated by 1, with order 30. The divisors of 30 are $1, 2, 3, 5, 6, 10, 15,$ and $30$.
  - By Theorem 4.3, for each divisor $k$ of 30, there is a unique subgroup of order $k$ in $\mathbb{Z}_{30}$, generated by $\frac{30}{k}$.
  - The subgroups of $\mathbb{Z}_{30}$ are:
    - $\langle 1 \rangle = \mathbb{Z}_{30}$ (order 30),
    - $\langle 2 \rangle$ (order 15),
    - $\langle 3 \rangle$ (order 10),
    - $\langle 5 \rangle$ (order 6),
    - $\langle 6 \rangle$ (order 5),
    - $\langle 10 \rangle$ (order 3),
    - $\langle 15 \rangle$ (order 2),
    - $\langle 30 \rangle$ (order 1).

- **Conclusion**: This example illustrates the classification of subgroups for a cyclic group, showcasing Theorem 4.3.

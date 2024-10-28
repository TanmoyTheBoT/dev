---
title: "[WIP] Contemporary Abstract Algebra: Chapter 4"
description: My notes on chapter 4 of the book Contemporary Abstract Algebra (supported by AI) 
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
### Summary of Definitions and Terms in Previous Chapters

1. **Cyclic Group**:

   $$
   G \text{ is a cyclic group if there exists } a \in G \text{ such that } G = \langle a \rangle = \{ a^n \mid n \in \mathbb{Z} \}.
   $$

2. **Generator**:

   $$
   \text{If } G = \langle a \rangle, \text{ then } a \text{ is called a generator of } G.
   $$

3. **Order of an Element**:

   $$
   \vert a \vert = \min \{ n \in \mathbb{Z}^+ \mid a^n = e \}.
   $$

   If no such $n$ exists, then $\vert a \vert = \infty$.

4. **Order of a Group**:

   $$
   \vert G \vert = \text{the number of elements in } G.
   $$

   If $G$ is infinite, we write $\vert G \vert = \infty$.

5. **Subgroup**:

   $$
   H \leq G \iff H \subseteq G \text{ and } H \text{ is a group under the operation of } G.
   $$

6. **Euler's Phi Function** $ \varphi(n) $:

   $$
   \varphi(n) = \#\{ k \in \mathbb{Z}^+ \mid 1 \leq k \leq n \text{ and } \gcd(n, k) = 1 \}.
   $$

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

#### Corollaries for Theorem 4.1

---

##### Corollary 1: $\vert a \vert = |\langle a \rangle|$

**Statement**:  
For any group element $a$, the order of $a$ (denoted $\vert a \vert$) equals the order of the cyclic group $\langle a \rangle$.

**Proof**:

1. By definition, the order of an element $a$ in a group $G$ is the smallest positive integer $n$ such that $a^n = e$, where $e$ is the identity element.
2. The order of the cyclic group $\langle a \rangle$ is defined as the number of distinct elements in $\langle a \rangle = \lbrace  e, a, a^2, \dots, a^{n-1} \rbrace$.
3. If $\vert a \vert = n$, then $\langle a \rangle$ consists exactly of $n$ distinct elements $\lbrace  e, a, a^2, \dots, a^{n-1} \rbrace$ because $a^n = e$ and no smaller power of $a$ equals $e$.
4. Therefore, $\vert a \vert = \vert\langle a \rangle\vert = n$.

This completes the proof of Corollary 1.

---

##### Corollary 2: $a^k = e$ if and only if $\vert a \vert$ divides $k$

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

##### Corollary 3: $a^k = e$ if and only if $k$ is a multiple of $\vert a \vert$

**Statement**:  
For any group element $a$, $a^k = e$ if and only if $k$ is a multiple of $\vert a \vert$.

**Proof**:

1. This corollary restates Corollary 2 in terms of multiples.
2. Since $\vert a \vert = n$ is the smallest positive integer such that $a^n = e$, then $a^k = e$ if and only if $k$ can be expressed as $k = n \cdot m$ for some integer $m$.
3. Therefore, $a^k = e$ if and only if $k$ is a multiple of $n = \vert a \vert$.

This completes the proof of Corollary 3.

---

##### Corollary 4: Relationship between $\vert ab \vert$ and $\vert a \vert \vert b \vert$

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

#### Theorem 4.2: Powers and Orders in Cyclic Groups

---

##### Statement

Let $a$ be an element of order $n$ in a group, and let $k$ be a positive integer. Then:

1. $\langle a^k \rangle = \langle a^{\gcd(n,k)} \rangle$.
2. $\vert a^k\vert = \frac{n}{\gcd(n,k)}$.

##### Proof of Theorem 4.2

###### Proof of Part 1: $\langle a^k \rangle = \langle a^{\gcd(n,k)} \rangle$

**Step 1**: Prove $\langle a^d \rangle \subseteq \langle a^k \rangle$.

1. We know $d = \gcd(n,k)$, so there exist integers $s$ and $t$ such that:
   $$
   d = ns + kt
   $$  

2. Since $a^k \in \langle a^k \rangle$, every element of $\langle a^k \rangle$ can be written as $(a^k)^j = a^{kj}$ for some integer $j$.

3. Using the gcd equation $d = ns + kt$, we can rewrite $a^d$ as follows:  
   $$
   a^d = a^{ns + kt} = (a^n)^s \cdot (a^k)^t
   $$

4. Since $a^n = e$ (the identity element), we have $(a^n)^s = e$, which simplifies the above to:  
   $$
   a^d = e \cdot (a^k)^t = (a^k)^t
   $$  
   Thus, $a^d \in \langle a^k \rangle$, implying that any power of $a^d$ can be expressed as a power of $a^k$, so $\langle a^d \rangle \subseteq \langle a^k \rangle$.

---

**Step 2**: Prove $\langle a^k \rangle \subseteq \langle a^d \rangle$.

1. Since $a^k \in \langle a^k \rangle$, every element in $\langle a^k \rangle$ is of the form $a^{km}$ for some integer $m$.

2. We can express $k = dq$ for some integer $q$ (since $d = \gcd(n,k)$ divides $k$). Thus:
   $$
   a^{km} = a^{dqm} = (a^d)^{qm} \in \langle a^d \rangle
   $$

3. This shows that every element of $\langle a^k \rangle$ can be written as a power of $a^d$, so $\langle a^k \rangle \subseteq \langle a^d \rangle$.

**Conclusion**:
Since $\langle a^k \rangle \subseteq \langle a^d \rangle$ and $\langle a^d \rangle \subseteq \langle a^k \rangle$, we conclude that:
$$
\langle a^k \rangle = \langle a^d \rangle
$$
proving Part 1.

---

###### Proof of Part 2: $|a^k| = \frac{n}{\gcd(n,k)}$

**Step 1**: Set up the relationship for the order of $a^k$.

1. Let $d = \gcd(n,k)$.
2. Since $\langle a^k \rangle = \langle a^d \rangle$ (from Part 1), the orders $\vert a^k\vert$ and $\vert a^d\vert$ must be equal:
   $$
   \vert a^k\vert  = \vert a^d\vert
   $$

3. Therefore, to find $\vert a^k\vert$, it suffices to find $\vert a^d\vert$.

---

**Step 2**: Determine $\vert a^d\vert$ in terms of $n$ and $d$.

1. By definition, the order of $a^d$ is the smallest positive integer $m$ such that:
   $$
   (a^d)^m = e
   $$

2. Since $a$ has order $n$, we know $a^n = e$.
3. We can rewrite $(a^d)^m = e$ as $a^{dm} = e$. Therefore, $dm$ must be a multiple of $n$, say $dm = nq$ for some integer $q$.

4. Solving for $m$ gives:
   $$
   m = \frac{nq}{d}
   $$

5. To make $m$ the smallest positive integer, set $q = 1$:
   $$
   m = \frac{n}{d}
   $$

Thus, the order of $a^d$, and therefore $\vert a^k\vert$, is:  
$$
\vert a^k\vert = \vert a^d\vert = \frac{n}{d} = \frac{n}{\gcd(n,k)}
$$

This completes the proof of Theorem 4.2.

---

#### Corollaries for Theorem 4.2

---

##### Corollary 1: Orders of Elements in Finite Cyclic Groups

**Statement**:  
In a finite cyclic group, the order of any element divides the order of the group.

**Proof**:

Let $G = \langle a \rangle$ be a cyclic group of order $n$. For any element $a^k \in G$, Theorem 4.2 tells us that the order of $a^k$, denoted $\vert a^k \vert$, is $\frac{n}{\gcd(n, k)}$.  
Since $\gcd(n, k)$ divides $n$, the quantity $\frac{n}{\gcd(n, k)}$ must also divide $n$. Therefore, the order of $a^k$ divides the order of $G$, proving Corollary 1.

---

##### Corollary 2: Criterion for $\langle a^i \rangle = \langle a^j \rangle$ and $\vert a^i \vert = \vert a^j \vert$

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

##### Corollary 3: Generators of Finite Cyclic Groups

**Statement**:  
Let $\vert a \vert = n$. Then $\langle a \rangle = \langle a^j \rangle$ if and only if $\gcd(n, j) = 1$.

**Proof**:

The subgroup $\langle a^j \rangle$ equals $\langle a \rangle$ if and only if $a^j$ generates the entire group $G$, which has order $n$.

- By Theorem 4.2, the order of $a^j$ is $\frac{n}{\gcd(n, j)}$.
- Therefore, $a^j$ will generate the entire group $G$ (i.e., $\langle a^j \rangle = \langle a \rangle$) if and only if $\vert a^j \vert = n$, which happens if and only if $\gcd(n, j) = 1$.
This completes the proof of Corollary 3.

---

##### Corollary 4: Generators of $\mathbb{Z}_n$

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

Every subgroup of a cyclic group is cyclic. Moreover, if $\vert \langle a \rangle \vert = n$, then:

1. The order of any subgroup of $\langle a \rangle$ is a divisor of $n$.
2. For each positive divisor $k$ of $n$, the group $\langle a \rangle$ has exactly one subgroup of order $k$, namely $\langle a^{n/k} \rangle$.

##### Proof of Theorem 4.3

To prove each part of this theorem, we will approach it step-by-step:

---

###### Part 1: Every Subgroup of a Cyclic Group is Cyclic

Let $G = \langle a \rangle$ be a cyclic group generated by $a$ with order $n$. Let $H$ be a subgroup of $G$.

1. **Every Element in $H$ Can Be Written as a Power of $a$**:
   - Since $G = \langle a \rangle$, every element in $G$ (and thus every element in $H$) can be expressed in the form $a^m$ for some integer $m$.
   - Therefore, $H \subseteq G$ contains only powers of $a$.

2. **Existence of the Smallest Positive Power**:
   - If $H = \{e\}$, then $H$ is cyclic, generated by $e = a^0$.
   - Otherwise, there exists at least one positive integer $m$ such that $a^m \in H$ and $a^m \neq e$.
   - Let $t$ be the smallest positive integer such that $a^t \in H$.

3. **Subgroup Generated by $a^t$**:
   - Consider the cyclic subgroup $\langle a^t \rangle$ generated by $a^t$.
   - This subgroup consists of the elements $\{e, a^t, a^{2t}, \dots\}$, which are all in $H$ because $H$ is closed under the group operation.

4. **Equality of $H$ and $\langle a^t \rangle$**:
   - Now, take any $h \in H$. Since $h \in G = \langle a \rangle$, we can write $h = a^m$ for some integer $m$.
   - By the Division Algorithm, we can express $m = qt + r$, where $0 \leq r < t$.
   - Then:
     $$
     h = a^m = a^{qt + r} = (a^t)^q a^r
     $$
   - Since $a^t \in H$, $(a^t)^q \in H$. Also, $h = (a^t)^q a^r \in H$ implies $a^r \in H$.
   - By the minimality of $t$, $r$ must be zero; otherwise, $a^r$ would be a smaller positive power of $a$ in $H$, contradicting our choice of $t$.
   - Therefore, $m = qt$, so $h = (a^t)^q \in \langle a^t \rangle$.

5. **Conclusion**:
   - This shows that $H \subseteq \langle a^t \rangle$ and $\langle a^t \rangle \subseteq H$, hence $H = \langle a^t \rangle$.
   - Therefore, $H$ is cyclic, generated by $a^t$.

---

###### Part 2: Order of Subgroups Divides $n$

1. Since $H = \langle a^t \rangle$ and $a^t$ has the smallest positive power in $H$, the order of $H$ is the order of $a^t$.
2. The order of $a^t$ is given by $\frac{n}{\gcd(n,t)}$, which divides $n$ because $\gcd(n,t)$ is a divisor of $n$.

---

###### Part 3: For Each Positive Divisor $k$ of $n$, There Exists Exactly One Subgroup of Order $k$

Let $G = \langle a \rangle$ be a cyclic group of order $n$.

1. **Subgroup Generated by $a^{n/k}$**:
   - For each positive divisor $k$ of $n$, consider the element $a^{n/k}$.
   - The order of $a^{n/k}$ is $\frac{n}{\gcd(n,n/k)} = k$.
   - Therefore, the subgroup $\langle a^{n/k} \rangle$ has order $k$.

2. **Uniqueness of Subgroup of Order $k$**:
   - Suppose there exists another subgroup $H \subseteq G$ with order $k$.
   - By Part 1, $H$ must also be cyclic. Let $H = \langle a^m \rangle$ for some integer $m$.
   - Since $H$ has order $k$, the order of $a^m$ must be $k$, which implies that $m$ must satisfy $m = n/k$.
   - Therefore, $H = \langle a^{n/k} \rangle$, showing that $\langle a^{n/k} \rangle$ is the unique subgroup of $G$ with order $k$.

---

#### Corollaries for Theorem 4.3

##### Corollary: Subgroups of $\mathbb{Z}_n$

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

Let $G = \langle a \rangle$ be a cyclic group of order $n$. If $d$ is a positive divisor of $n$, then the number of elements of order $d$ in $G$ is given by $\varphi(d)$, where $\varphi$ is the Euler phi function.

---

##### Proof of Theorem 4.4

To prove this theorem, we will approach it step-by-step:

---

###### Step 1: Structure of Elements in a Cyclic Group

Let $G = \langle a \rangle$ be a cyclic group with $\vert G \vert = n$, where $n$ is finite.

1. Since $G$ is cyclic, each element of $G$ can be written in the form $a^k$ for some integer $k$.
2. The **order of an element** $a^k$ in $G$ is the smallest positive integer $m$ such that $(a^k)^m = e$, where $e$ is the identity element.

###### Step 2: Order of the Element $a^k$

1. The order of $a^k$, denoted $\vert a^k \vert$, divides $n$, the order of $G$, since $G$ is finite and all powers of $a$ ultimately repeat modulo $n$.
2. The order of $a^k$ can be determined by finding the smallest positive integer $m$ such that:
   $$
   (a^k)^m = a^{km} = e.
   $$
3. Since $\vert a \vert = n$, we know that $a^n = e$. Therefore, $a^{km} = e$ if and only if $n$ divides $km$. 

4. Let $d = \gcd(n, k)$. Then $\vert a^k \vert = \frac{n}{d}$, as established in Theorem 4.2.

###### Step 3: Counting Elements of Order $d$

Let $d$ be a positive divisor of $n$. We now want to count how many elements in $G$ have order exactly $d$.

1. For an element $a^k$ to have order $d$, it must satisfy:
   $$
   \vert a^k \vert = d.
   $$
2. From Theorem 4.2, we know that $\vert a^k \vert = \frac{n}{\gcd(n, k)}$.
   - Therefore, $\vert a^k \vert = d$ if and only if $\frac{n}{\gcd(n, k)} = d$, which implies $\gcd(n, k) = \frac{n}{d}$.

3. This condition on $\gcd(n, k)$ means that $k$ must be an integer such that:
   $$
   \gcd(n, k) = \frac{n}{d}.
   $$
   This ensures that $a^k$ has order exactly $d$.

4. The number of integers $k$ less than $n$ that satisfy $\gcd(n, k) = \frac{n}{d} \Leftrightarrow \gcd\left(\frac{n}{\frac{n}{d}}, \frac{k}{\frac{n}{d}}\right) = 1 \Leftrightarrow \gcd(d, k') = 1$ is given by $\varphi(d)$, the **Euler phi function**, because $\varphi(d)$ counts the number of integers up to $d$ that are coprime with $d$.

---

#### Corollaries for Theorem 4.4

##### Corollary 4.1: Number of Elements of Order $d$ in a Finite Group

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

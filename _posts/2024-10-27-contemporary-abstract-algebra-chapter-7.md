---
title: "[WIP] Contemporary Abstract Algebra: Chapter 7"
description: My notes on chapter 7 of the book Contemporary Abstract Algebra (supported by AI)  
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
published: false
---
### Properties of Cosets

This section begins by defining cosets and listing the fundamental properties of cosets in a group. Cosets help to partition the elements of a group $G$ when considering a subgroup $H$.

#### Coset Definitions
Let $G$ be a group, and $H$ a nonempty subset of $G$. For any element $a \in G$:
- The **left coset** of $H$ in $G$ containing $a$ is $aH = \lbrace ah \mid h \in H\rbrace$.
- The **right coset** is $Ha = \lbrace ha \mid h \in H\rbrace$.
- When $H$ is a subgroup, $aH$ or $Ha$ represents a coset of $H$ in $G$, with $a$ as the **coset representative**.
  
Let's go through the proof for each of the nine properties of cosets in Lemma 7.1. Let $H$ be a subgroup of $G$, and let $a, b \in G$.

---

### Property 1: $a \in aH$

**Proof**:
Since $H$ is a subgroup of $G$, it contains the identity element $e$. Thus, for any $a \in G$, $ae = a$, so $a \in aH$. This shows that each coset $aH$ contains its representative $a$.

---

### Property 2: $aH = H$ if and only if $a \in H$

**Proof**:
1. **($\Rightarrow$)** Suppose $aH = H$. Then $a \in aH = H$, so $a \in H$.

2. **($\Leftarrow$)** Conversely, assume $a \in H$. Then for any $h \in H$, we have $ah \in H$ by the closure of $H$ (since $H$ is a subgroup). Therefore, $aH \subseteq H$.

   Now, since $e \in H$, $h = a \cdot a^{-1}h$ for each $h \in H$, so $h \in aH$. Hence, $H \subseteq aH$.

Combining both inclusions, we conclude that $aH = H$.

---

### Property 3: $(ab)H = a(bH)$ and $H(ab) = (Ha)b$

**Proof**:
1. For any $h \in H$, we have $(ab)h = a(bh)$. Since this holds for all $h \in H$, we get $(ab)H = a(bH)$.

2. Similarly, for $h \in H$, we have $h(ab) = (ha)b$. Since this holds for all $h \in H$, we have $H(ab) = (Ha)b$.

---

### Property 4: $aH = bH$ if and only if $a \in bH$

**Proof**:
1. **($\Rightarrow$)** Suppose $aH = bH$. Then, since $b \in bH = aH$, we conclude that $b \in aH$.

2. **($\Leftarrow$)** Conversely, assume $a \in bH$. Then there exists $h \in H$ such that $a = bh$. For any element $x \in aH$, we can write $x = ah' = (bh)h' = b(hh')$, which implies $x \in bH$. Hence, $aH \subseteq bH$.

   Similarly, for any $x \in bH$, we can write $x = bh' = (ah^{-1})h' = a(h^{-1}h')$, which implies $x \in aH$. Thus, $bH \subseteq aH$.

Combining both inclusions, we get $aH = bH$.

---

### Property 5: $aH = bH$ or $aH \cap bH = \emptyset$

**Proof**:
Suppose $aH$ and $bH$ have a common element $x$. Then $x \in aH$ and $x \in bH$, so we can write $x = ah_1 = bh_2$ for some $h_1, h_2 \in H$. Rearranging, we have:
$$
a = b(h_2h_1^{-1})
$$
which means $a \in bH$. By Property 4, this implies $aH = bH$.

Therefore, if $aH$ and $bH$ are not equal, they must be disjoint, proving that $aH = bH$ or $aH \cap bH = \emptyset$.

---

### Property 6: $aH = bH$ if and only if $a^{-1}b \in H$

**Proof**:
1. **($\Rightarrow$)** Suppose $aH = bH$. Then $b \in aH$, so $b = ah$ for some $h \in H$. Rearranging, we have $a^{-1}b = h \in H$, so $a^{-1}b \in H$.

2. **($\Leftarrow$)** Conversely, if $a^{-1}b \in H$, say $a^{-1}b = h$ for some $h \in H$, then $b = ah$, which means $b \in aH$. By Property 4, we then have $aH = bH$.

---

### Property 7: $|aH| = |bH|$

**Proof**:
We define a map $f: aH \to bH$ by $f(ah) = bh$ for all $h \in H$. Since $f(ah) = f(ah')$ implies $bh = bh'$, which in turn implies $h = h'$ by the cancellation law in groups, $f$ is one-to-one.

Furthermore, for any $y \in bH$, there exists $h \in H$ such that $y = bh = f(ah)$. Thus, $f$ is onto.

Since $f$ is a bijection between $aH$ and $bH$, $|aH| = |bH|$.

---

### Property 8: $aH = Ha$ if and only if $H = aHa^{-1}$

**Proof**:
1. **($\Rightarrow$)** Suppose $aH = Ha$. Then for any $h \in H$, there exists $h' \in H$ such that $ah = h'a$. Rearranging, we find $h' = aha^{-1}$, so $aha^{-1} \in H$, meaning $aHa^{-1} \subseteq H$.

   Conversely, for any $h \in H$, $a^{-1}ha \in H$ by symmetry. Hence, $H = aHa^{-1}$.

2. **($\Leftarrow$)** Conversely, if $H = aHa^{-1}$, then for any $h \in H$, we can write $ah = h'a$ for some $h' \in H$, implying $aH \subseteq Ha$. Similarly, we find $Ha \subseteq aH$, so $aH = Ha$.

---

### Property 9: $aH$ is a subgroup of $G$ if and only if $a \in H$

**Proof**:
1. **($\Rightarrow$)** Suppose $aH$ is a subgroup of $G$. Then $aH$ contains the identity element $e$. Since $e \in aH$, there exists $h \in H$ such that $ah = e$. Thus, $a = h^{-1} \in H$.

2. **($\Leftarrow$)** Conversely, if $a \in H$, then $aH = H$ (by Property 2), which is a subgroup of $G$ by assumption.

---

This concludes the rigorous proof of each property in Lemma 7.1. Let me know if you'd like to proceed with additional examples or further sections.
### Examples of Coset Properties

These examples illustrate the coset properties outlined in Lemma 7.1, emphasizing the ways cosets organize elements within groups.

#### Example 1
Let $G = S_3$ (the symmetric group of degree 3), and $H = \lbrace (1), (13)\rbrace$. The left cosets of $H$ in $G$ are:

1. $(1)H = H = \lbrace (1), (13)\rbrace$.
2. $(12)H = \lbrace (12), (12)(13)\rbrace = \lbrace (12), (132)\rbrace = (132)H$.
3. $(13)H = \lbrace (13), (1)\rbrace = H$.
4. $(23)H = \lbrace (23), (23)(13)\rbrace = \lbrace (23), (123)\rbrace = (123)H$.

#### Example 2
Let $K = \lbrace R_0, R_{180}\rbrace$ in $D_4$ (the dihedral group of order 8). Then the left cosets of $K$ in $D_4$ are:

1. $R_0K = K = \lbrace R_0, R_{180}\rbrace$.
2. $R_{90}K = \lbrace R_{90}, R_{270}\rbrace = R_{270}K$.
3. $V K = \lbrace V, H\rbrace = H K$.
4. $D K = \lbrace D, D'\rbrace = D'K$.

#### Example 3
Consider $H = \lbrace 0, 3, 6\rbrace$ in $\mathbb{Z}_9$ (the integers modulo 9, under addition). Here, we denote cosets by $a + H$ due to the additive operation:

1. $0 + H = \lbrace 0, 3, 6\rbrace = 3 + H = 6 + H$.
2. $1 + H = \lbrace 1, 4, 7\rbrace = 4 + H = 7 + H$.
3. $2 + H = \lbrace 2, 5, 8\rbrace = 5 + H = 8 + H$.

---

### Observations from the Examples

1. **Cosets Are Not Necessarily Subgroups**: Generally, cosets such as $(12)H$ in Example 1 are not subgroups.
2. **Equivalence of Different Cosets**: It is possible for distinct elements to generate the same coset, as seen with $0 + H$ and $3 + H$ in Example 3.
3. **Non-Equality of Left and Right Cosets**: In Example 1, we observe that $(12)H \neq H(12)$, illustrating that left cosets and right cosets may differ.
### Section: Lagrange's Theorem and Consequences

Lagrange's Theorem is one of the foundational results in group theory, particularly for finite groups. It establishes a direct relationship between the order of a group and the order of its subgroups.

#### Theorem 7.1: Lagrange's Theorem
If $G$ is a finite group and $H$ is a subgroup of $G$, then $|H|$ divides $|G|$. Additionally, the number of distinct left (or right) cosets of $H$ in $G$ is $|G| / |H|$.

**Proof**:
1. Let $a_1H, a_2H, \dots, a_rH$ denote the distinct left cosets of $H$ in $G$. By definition, each $a \in G$ belongs to one of these cosets, so we can express $G$ as the union of all distinct cosets:
   $$
   G = a_1H \cup a_2H \cup \dots \cup a_rH
   $$
2. Since cosets are either identical or disjoint (Lemma 7.1, Property 5), this union is disjoint, and we have:
   $$
   |G| = |a_1H| + |a_2H| + \dots + |a_rH|
   $$
3. By Lemma 7.1, Property 7, all left cosets of $H$ have the same number of elements, so $|a_iH| = |H|$ for each $i$. Hence:
   $$
   |G| = r \cdot |H|
   $$
4. Since $r$ is the number of distinct left cosets of $H$ in $G$, we have $|G| = |H| \cdot r$, which implies $|H|$ divides $|G|$.

### Corollaries of Lagrange's Theorem

Lagrange's Theorem provides a framework for several important corollaries in group theory. Let's go through the proof of each corollary derived from Lagrange's Theorem.

---

### Corollary 1: Index of a Subgroup

**Statement**: The number of distinct left (or right) cosets of a subgroup $H$ in a finite group $G$ is called the **index** of $H$ in $G$, denoted by $|G : H|$. The index is given by:
$$
|G : H| = \frac{|G|}{|H|}
$$

**Proof**:
By Lagrange's Theorem, we know that the group $G$ can be partitioned into distinct cosets of $H$, each coset having exactly $|H|$ elements. If there are $r$ distinct left cosets, then:
$$
|G| = r \cdot |H|
$$
Rearranging, we find:
$$
r = \frac{|G|}{|H|}
$$
Thus, the number of distinct left cosets of $H$ in $G$, which is the index of $H$ in $G$, is given by $|G : H| = \frac{|G|}{|H|}$.

---

### Corollary 2: Order of Elements Divides Group Order

**Statement**: In a finite group $G$, the order of each element divides the order of the group.

**Proof**:
Let $a \in G$ be an element with order $k$. Then the cyclic subgroup generated by $a$, denoted $\langle a \rangle$, has $k$ elements. Since $\langle a \rangle$ is a subgroup of $G$, by Lagrange's Theorem, $|\langle a \rangle|$ divides $|G|$. Therefore, $k$ divides $|G|$, showing that the order of $a$ divides the order of $G$.

---

### Corollary 3: Groups of Prime Order Are Cyclic

**Statement**: Every group of prime order $p$ is isomorphic to $\mathbb{Z}_p$, the cyclic group of order $p$.

**Proof**:
Let $G$ be a group of prime order $p$. Let $a \in G$ be any element other than the identity $e$. Since the order of $a$ divides $|G| = p$ (by Corollary 2), the possible orders of $a$ are either $1$ or $p$. Since $a \neq e$, we conclude that $a$ has order $p$, which means $G = \langle a \rangle$. Thus, $G$ is cyclic, generated by $a$, and is isomorphic to $\mathbb{Z}_p$.

---

### Corollary 4: Powers of Elements in Finite Groups

**Statement**: If $G$ is a finite group and $a \in G$, then $a^{|G|} = e$, where $e$ is the identity element.

**Proof**:
Let $a \in G$ with order $k$. By Corollary 2, the order $k$ of $a$ divides $|G|$, so we can write $|G| = mk$ for some integer $m$. Then:
$$
a^{|G|} = a^{mk} = (a^k)^m = e^m = e
$$
Thus, $a^{|G|} = e$ for any $a \in G$, completing the proof.

---

### Corollary 5: Fermat's Little Theorem

**Statement**: For any integer $a$ and any prime $p$, we have:
$$
a^p \equiv a \pmod{p}
$$

**Proof**:
1. If $a \equiv 0 \pmod{p}$, then $a^p \equiv 0 \equiv a \pmod{p}$, and the theorem holds.

2. If $a \not\equiv 0 \pmod{p}$, then $a$ is in the group $U(p)$ of units modulo $p$, where $U(p)$ has $p-1$ elements under multiplication modulo $p$. By Corollary 4, we know $a^{|U(p)|} = a^{p-1} \equiv 1 \pmod{p}$ in this multiplicative group.

Therefore:
$$
a^p = a \cdot a^{p-1} \equiv a \cdot 1 = a \pmod{p}
$$

This completes the proof of Fermat's Little Theorem.

### Theorem 7.2: Product of Subgroups

**Statement**: Let $H$ and $K$ be finite subgroups of a group $G$. Define the set $HK = \lbrace hk \mid h \in H, k \in K\rbrace$, which contains all products of elements in $H$ and $K$. Then:
$$
|HK| = \frac{|H||K|}{|H \cap K|}
$$

This theorem provides the order of the set $HK$ by accounting for any overlap between the subgroups $H$ and $K$ through the intersection $H \cap K$.

---

### Proof of Theorem 7.2

1. **Counting Elements in $HK$**:
   - The set $HK$ is defined as all elements of the form $hk$, where $h \in H$ and $k \in K$. Since $H$ has $|H|$ elements and $K$ has $|K|$ elements, $H \times K$ consists of $|H| \cdot |K|$ ordered pairs $(h, k)$, each pair mapping to an element $hk$ in $HK$.

2. **Overlap in $HK$**:
   - Not all products $hk$ are necessarily distinct elements in $HK$; different pairs in $H \times K$ may map to the same element in $HK$.
   - Specifically, if $hk = h'k'$ for $h, h' \in H$ and $k, k' \in K$, then $h^{-1}h' = k(k')^{-1}$ must be an element common to both $H$ and $K$, i.e., $h^{-1}h' \in H \cap K$.
   - Therefore, for each element in $HK$, there are exactly $|H \cap K|$ pairs $(h, k)$ that produce it, as each element in $H \cap K$ acts as a "multiple representation factor" for elements in $HK$.

3. **Calculating the Size of $HK$**:
   - Since each element of $HK$ corresponds to $|H \cap K|$ pairs in $H \times K$, the total number of distinct elements in $HK$ is given by dividing $|H| \cdot |K|$ by $|H \cap K|$:
     $$
     |HK| = \frac{|H||K|}{|H \cap K|}
     $$

Thus, we have shown that:
$$
|HK| = \frac{|H||K|}{|H \cap K|}
$$

---

### Implications of Theorem 7.2

Theorem 7.2 provides insight into the structure of the product set $HK$. Notably:
- $HK$ is not necessarily a subgroup of $G$; it is only guaranteed to be a set containing all possible products of elements from $H$ and $K$.
- The formula $|HK| = \frac{|H||K|}{|H \cap K|}$ highlights that $|HK|$ is influenced by the overlap (intersection) of $H$ and $K$. The larger the intersection $H \cap K$, the smaller $|HK|$ will be relative to $|H| \cdot |K|$.

### Examples of Theorem 7.2's Applications

These examples illustrate how Theorem 7.2 helps determine subgroup constraints in groups.

#### Example 6: Subgroup Order Constraints in Groups of Order 75
A group of order 75 can have at most one subgroup of order 25.
- **Reasoning**: If $H$ and $K$ were two distinct subgroups of order 25, their product $HK$ would have order $\frac{|H||K|}{|H \cap K|}$, which could potentially exceed 75 if $|H \cap K|$ is too small.
- **Conclusion**: $H \cap K$ must equal $H$ or $K$, implying $H = K$, so only one subgroup of order 25 can exist.

#### Example 7: Subgroup Constraints in Abelian Groups of Order 42
An abelian group of order 42 can have at most one subgroup of order 6.
- **Reasoning**: Suppose $H$ and $K$ are subgroups of order 6. By Theorem 7.2, $|HK|$ would equal $\frac{|H||K|}{|H \cap K|}$, which cannot divide 42 unless $|HK|$ is 42.
- **Conclusion**: This reasoning restricts $H$ and $K$ to be the same subgroup, allowing at most one subgroup of order 6.

### Section: Permutation Groups and Cosets

In this section, we examine the application of cosets in permutation groups, particularly through the concepts of stabilizers and orbits. These concepts help in understanding how elements are organized under the action of group elements, leading to a key result known as the Orbit-Stabilizer Theorem.

#### Definitions: Stabilizer and Orbit

Let $G$ be a group of permutations acting on a set $S$.

1. **Stabilizer of a Point**: For each $i \in S$, the stabilizer of $i$ in $G$, denoted $\text{stab}_G(i)$, is the set of all elements in $G$ that leave $i$ fixed. Formally:
   $$
   \text{stab}_G(i) = \lbrace  \phi \in G \mid \phi(i) = i \rbrace
   $$
   The stabilizer is a subgroup of $G$.

2. **Orbit of a Point**: For each $i \in S$, the orbit of $i$ under $G$, denoted $\text{orb}_G(i)$, is the set of elements in $S$ that can be reached by applying elements of $G$ to $i$:
   $$
   \text{orb}_G(i) = \lbrace  \phi(i) \mid \phi \in G \rbrace
   $$

---

#### Example 8: Stabilizers and Orbits in a Permutation Group

Consider the subgroup $G \subset S_8$ given by:
$$
G = \lbrace (1), (132)(465)(78), (132)(465), (123)(456), (123)(456)(78), (78)\rbrace
$$

For this $G$, we calculate the stabilizers and orbits for specific elements:

1. **Orbit and Stabilizer of $1$**:
   - $\text{orb}_G(1) = \lbrace 1, 3, 2\rbrace$
   - $\text{stab}_G(1) = \lbrace (1), (78)\rbrace$

2. **Orbit and Stabilizer of $2$**:
   - $\text{orb}_G(2) = \lbrace 2, 1, 3\rbrace$
   - $\text{stab}_G(2) = \lbrace (1), (78)\rbrace$

3. **Orbit and Stabilizer of $4$**:
   - $\text{orb}_G(4) = \lbrace 4, 6, 5\rbrace$
   - $\text{stab}_G(4) = \lbrace (1), (78)\rbrace$

4. **Orbit and Stabilizer of $7$**:
   - $\text{orb}_G(7) = \lbrace 7, 8\rbrace$
   - $\text{stab}_G(7) = \lbrace (1), (132)(465), (123)(456)\rbrace$

---

### Theorem 7.4: Orbit-Stabilizer Theorem

The Orbit-Stabilizer Theorem is a counting theorem that connects the size of a group with the sizes of orbits and stabilizers.

For a finite group $G$ acting on a set $S$, and any $i \in S$:
$$
|G| = |\text{orb}_G(i)| \cdot |\text{stab}_G(i)|
$$

**Proof**:
1. By Lagrange's Theorem, the number of distinct left cosets of $\text{stab}_G(i)$ in $G$ is $|G| / |\text{stab}_G(i)|$.
2. Define a mapping $T$ from the cosets of $\text{stab}_G(i)$ to $\text{orb}_G(i)$ by $T(\phi \cdot \text{stab}_G(i)) = \phi(i)$.
3. This map is well-defined and one-to-one, establishing a bijective correspondence between the cosets of $\text{stab}_G(i)$ and the elements of $\text{orb}_G(i)$.
4. Thus, $|G| = |\text{orb}_G(i)| \cdot |\text{stab}_G(i)|$, proving the theorem.
### Applications of the Orbit-Stabilizer Theorem

The Orbit-Stabilizer Theorem is powerful for calculating the size of symmetry groups, as demonstrated by its application to the rotation group of a cube.

#### Example 10: Rotation Group of a Cube

Consider a cube with its six faces labeled from 1 to 6. We aim to determine the order of the rotation group of the cube, denoted $G$, which consists of all possible rotations that map the cube onto itself.

1. **Orbit of a Face**:  
   Since any face of the cube can be rotated to occupy any other face, the orbit of a face (say face 1) under the action of $G$ consists of all six faces. Therefore:
   $$
   |\text{orb}_G(1)| = 6
   $$

2. **Stabilizer of a Face**:  
   The stabilizer of face 1, $\text{stab}_G(1)$, includes all rotations that leave face 1 fixed. These rotations are limited to the four rotations about the axis perpendicular to face 1—namely, rotations by 0°, 90°, 180°, and 270°. Therefore:
   $$
   |\text{stab}_G(1)| = 4
   $$

3. **Applying the Orbit-Stabilizer Theorem**:
   By the Orbit-Stabilizer Theorem, the order of $G$ is given by:
   $$
   |G| = |\text{orb}_G(1)| \cdot |\text{stab}_G(1)| = 6 \times 4 = 24
   $$

Therefore, the rotation group of a cube has 24 elements, which coincides with the order of $S_4$, the symmetric group on four elements. This observation suggests that the rotation group of a cube is isomorphic to $S_4$.
#### Example 11: Rotation Group of a Soccer Ball

A traditional soccer ball, mathematically known as a **truncated icosahedron**, has 20 hexagonal faces and 12 pentagonal faces. We use the Orbit-Stabilizer Theorem to find the order of its rotation group.

1. **Choosing the Set $S$**:
   Let $S$ be the set of the 12 pentagonal faces on the soccer ball.

2. **Orbit of a Pentagonal Face**:
   Any pentagonal face can be rotated to occupy the position of any other pentagonal face. Thus, the orbit of any pentagonal face under the action of the rotation group $G$ includes all 12 pentagonal faces:
   $$
   |\text{orb}_G(\text{pentagon})| = 12
   $$

3. **Stabilizer of a Pentagonal Face**:
   For each pentagonal face, there are five possible rotations (0°, 72°, 144°, 216°, and 288°) about the axis passing through the center of the face. These rotations leave the face fixed while changing the orientation of the other faces. Thus:
   $$
   |\text{stab}_G(\text{pentagon})| = 5
   $$

4. **Applying the Orbit-Stabilizer Theorem**:
   Using the Orbit-Stabilizer Theorem, we calculate the order of $G$:
   $$
   |G| = |\text{orb}_G(\text{pentagon})| \cdot |\text{stab}_G(\text{pentagon})| = 12 \times 5 = 60
   $$

Hence, the rotation group of a soccer ball has 60 elements. This rotation group is isomorphic to $A_5$, the alternating group on five elements, which is the group of even permutations of five elements. This fact aligns with the high level of symmetry exhibited by the soccer ball.

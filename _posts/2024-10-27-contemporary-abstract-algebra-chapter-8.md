---
title: "[WIP] Contemporary Abstract Algebra: Chapter 8"
description: My notes on chapter 8 of the book Contemporary Abstract Algebra (supported by AI)  
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

### External Direct Product

The **external direct product** is a way of combining multiple groups into a single, larger group, where each element in this new group is composed of elements from the original groups, and the group operation is applied component-wise.

#### **Definition of External Direct Product**

Let $G_1, G_2, \dots, G_n$ be a finite collection of groups. The **external direct product** of $G_1, G_2, \dots, G_n$, written as $G_1 \oplus G_2 \oplus \cdots \oplus G_n$, is defined as the set of all ordered $n$-tuples $(g_1, g_2, \dots, g_n)$, where each $g_i$ belongs to $G_i$.

In mathematical notation:
$$
G_1 \oplus G_2 \oplus \cdots \oplus G_n = \lbrace  (g_1, g_2, \dots, g_n) \mid g_i \in G_i \text{ for each } i \rbrace
$$

The operation for combining two elements $(g_1, g_2, \dots, g_n)$ and $(h_1, h_2, \dots, h_n)$ in $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ is defined component-wise:
$$
(g_1, g_2, \dots, g_n) \cdot (h_1, h_2, \dots, h_n) = (g_1 h_1, g_2 h_2, \dots, g_n h_n)
$$
where the operation $g_i h_i$ is performed within each group $G_i$ according to that group's specific operation.

#### **Properties of the External Direct Product**

1. **Closure**: If each $G_i$ is closed under its operation, then $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ is closed under the component-wise operation.

2. **Associativity**: If each $G_i$ is associative, then the external direct product is also associative because the component-wise operations in each $G_i$ are associative.

3. **Identity Element**: The identity element in $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ is the tuple $(e_{G_1}, e_{G_2}, \dots, e_{G_n})$, where $e_{G_i}$ is the identity element in $G_i$.

4. **Inverses**: If each $G_i$ has an inverse for each of its elements, then each element $(g_1, g_2, \dots, g_n)$ in the external direct product has an inverse $(g_1^{-1}, g_2^{-1}, \dots, g_n^{-1})$, where $g_i^{-1}$ is the inverse of $g_i$ in $G_i$.

5. **Order of the Group**: If each $G_i$ is finite, then the order of $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ is the product of the orders of the $G_i$:
   $$
   |G_1 \oplus G_2 \oplus \cdots \oplus G_n| = |G_1| \cdot |G_2| \cdots |G_n|
   $$

#### **Example of an External Direct Product**

Consider the groups $U(8) = \lbrace 1, 3, 5, 7\rbrace$ and $U(10) = \lbrace 1, 3, 7, 9\rbrace$, where each group is taken under multiplication modulo its respective modulus. The external direct product $U(8) \oplus U(10)$ consists of all ordered pairs $(a, b)$ where $a \in U(8)$ and $b \in U(10)$. 

The elements of $U(8) \oplus U(10)$ are:
$$
U(8) \oplus U(10) = \lbrace  (1,1), (1,3), (1,7), (1,9), (3,1), (3,3), (3,7), (3,9), (5,1), (5,3), (5,7), (5,9), (7,1), (7,3), (7,7), (7,9) \rbrace
$$
Each element in $U(8) \oplus U(10)$ represents a unique combination of elements from $U(8)$ and $U(10)$, and their product is calculated by component-wise multiplication modulo 8 for the first component and modulo 10 for the second component.

The external direct product is a fundamental concept in group theory, allowing us to build larger groups from smaller ones while preserving structure through component-wise operations.

### Applications of External Direct Products

This section illustrates practical applications of external direct products in various fields, highlighting the broad utility of the concepts covered.

#### **1. Data Security**

Binary strings are often represented as elements of $\mathbb{Z}_2 \oplus \mathbb{Z}_2 \oplus \cdots \oplus \mathbb{Z}_2$, where each bit in the string corresponds to an element in the direct product. For example, the binary string $11000110$ can be viewed as the element $(1, 1, 0, 0, 0, 1, 1, 0)$ in $\mathbb{Z}_2 \oplus \mathbb{Z}_2 \oplus \cdots \oplus \mathbb{Z}_2$ (eight copies).

When two binary strings are added component-wise modulo 2, the resulting sum corresponds to bitwise addition (XOR). This is foundational for encryption techniques like the **One-Time Pad**, where a random binary key is used to encode a message. The security of this system comes from the fact that without the key, the encoded message appears random.

#### **2. Public Key Cryptography**

Public key cryptography, particularly the **RSA encryption scheme**, leverages the properties of modular arithmetic and the difficulty of factorizing large numbers. RSA requires selecting two large primes $p$ and $q$ and computing $n = pq$. Public keys are derived based on these values, and while the encryption method is public, only the private key holder can decode the message due to the computational difficulty of determining $p$ and $q$ from $n$.

For example, if Alice wants to send a secure message to Bob, she can encode her message as $M^e \mod n$ using Bob's public key. Only Bob can decode the message using his private key, even though the encryption method is known.

#### **3. Digital Signatures**

In financial transactions, digital signatures authenticate that a message originates from the claimed sender. Using external direct products in modular arithmetic allows the message to be encoded by the sender's private key. The receiver verifies it using the sender's public key, confirming authenticity and integrity.

#### **4. Genetics**

In genetics, nitrogen bases in DNA sequences (A, T, G, C) can be represented as elements in $\mathbb{Z}_4 \oplus \mathbb{Z}_4 \oplus \cdots \oplus \mathbb{Z}_4$ (one copy per nitrogen base). Each nitrogen base is mapped to an integer in $\mathbb{Z}_4$ (e.g., A = 0, T = 2, G = 1, C = 3), and DNA strands can be modeled as sequences in this external direct product. This representation aids in comparing genetic sequences and understanding complementary DNA structures.

#### **5. Electric Circuits**

Electrical systems with multiple switches controlling a single light can be analyzed using direct product structures. For instance, if two switches are represented by elements in $\mathbb{Z}_2 \oplus \mathbb{Z}_2$, then flipping a switch corresponds to adding 1 to its component. The light's state (on/off) is determined by the subgroup generated by specific configurations of the switches.

For example, if the light is on when both switches are up, this corresponds to $(0, 0)$. Each switch flip alters the light state, simulating a real-world circuit in group terms.

### **Theorem 8.1**: Order of an Element in a Direct Product

**Statement**:
The order of an element $(g_1, g_2, \dots, g_n)$ in the external direct product $G_1 \oplus G_2 \oplus \cdots \oplus G_n$, where each $G_i$ is a group, is the least common multiple (LCM) of the orders of its components.

In formal notation, if $|g_i|$ denotes the order of $g_i$ in $G_i$, then:  
$$
|(g_1, g_2, \dots, g_n)| = \text{lcm}(|g_1|, |g_2|, \dots, |g_n|)
$$

### **Proof of Theorem 8.1**

To prove this theorem, we need to show that the order of the element $(g_1, g_2, \dots, g_n)$ in $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ is exactly the least common multiple of the orders of each $g_i$.

#### **Step-by-Step Proof**

1. **Define the Orders of Each Component**:
   Let $|g_i|$ denote the order of $g_i$ in $G_i$, meaning that $g_i^{|g_i|} = e_i$, where $e_i$ is the identity element in $G_i$. Define:
   $$
   s = \text{lcm}(|g_1|, |g_2|, \dots, |g_n|)
   $$
   Let $t = |(g_1, g_2, \dots, g_n)|$, which is the order we aim to determine.

2. **Show that $(g_1, g_2, \dots, g_n)^s = (e_1, e_2, \dots, e_n)$**:
   Since $s$ is the least common multiple of the orders $|g_1|, |g_2|, \dots, |g_n|$, $s$ is a multiple of each $|g_i|$. Therefore, raising each component $g_i$ to the power $s$ yields the identity element in $G_i$, as follows:
   $$
   g_i^s = e_i \quad \text{for all } i = 1, 2, \dots, n
   $$
   Thus,
   $$
   (g_1, g_2, \dots, g_n)^s = (g_1^s, g_2^s, \dots, g_n^s) = (e_1, e_2, \dots, e_n)
   $$
   This implies that $t \leq s$ because raising $(g_1, g_2, \dots, g_n)$ to the $s$-th power results in the identity element in $G_1 \oplus G_2 \oplus \cdots \oplus G_n$.

3. **Show that $s \leq t$**:
   By the definition of $t$, we know that:
   $$
   (g_1, g_2, \dots, g_n)^t = (e_1, e_2, \dots, e_n)
   $$
   This implies that $g_i^t = e_i$ for each $i$, meaning that $t$ is a common multiple of $|g_1|, |g_2|, \dots, |g_n|$. Since $s$ is the least common multiple of these values, it follows that $s \leq t$.

4. **Conclusion**:
   Since both inequalities $t \leq s$ and $s \leq t$ hold, we conclude that $t = s$. Therefore,
   $$
   |(g_1, g_2, \dots, g_n)| = \text{lcm}(|g_1|, |g_2|, \dots, |g_n|)
   $$

This completes the proof, showing that the order of $(g_1, g_2, \dots, g_n)$ in $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ is indeed the least common multiple of the orders of each component $g_i$.

### **Corollary 1**: Cyclic Condition for $G_1 \oplus G_2 \oplus \cdots \oplus G_n$

**Statement**:
If $G_1, G_2, \dots, G_n$ are finite cyclic groups, then the external direct product $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ is cyclic if and only if the orders of $G_i$ and $G_j$ are relatively prime for all $i \neq j$.

#### **Proof of Corollary 1**

1. **If**: Assume that the orders $|G_i|$ and $|G_j|$ are relatively prime for all $i \neq j$. Let $|G_i| = m_i$ and let $g_i$ be a generator of $G_i$. The element $(g_1, g_2, \dots, g_n)$ in $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ has order equal to the least common multiple of $m_1, m_2, \dots, m_n$. Since the orders $m_i$ are relatively prime, we have:
   $$
   \text{lcm}(m_1, m_2, \dots, m_n) = m_1 \cdot m_2 \cdots m_n
   $$
   which is the order of $G_1 \oplus G_2 \oplus \cdots \oplus G_n$. Therefore, $(g_1, g_2, \dots, g_n)$ generates the entire group, so the direct product is cyclic.

2. **Only If**: Assume $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ is cyclic, generated by an element $(g_1, g_2, \dots, g_n)$. Let $|G_i| = m_i$. The order of $(g_1, g_2, \dots, g_n)$ is $\text{lcm}(m_1, m_2, \dots, m_n)$, which must equal the product $m_1 \cdot m_2 \cdots m_n$. This equality holds only if $m_i$ and $m_j$ are relatively prime for $i \neq j$.

Thus, $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ is cyclic if and only if the orders $|G_i|$ and $|G_j|$ are relatively prime for all $i \neq j$, completing the proof.

---

### **Corollary 2**: Isomorphism of $\mathbb{Z}_{n_1 n_2 \cdots n_k}$ and $\mathbb{Z}_{n_1} \oplus \mathbb{Z}_{n_2} \oplus \cdots \oplus \mathbb{Z}_{n_k}$

**Statement**:
Let $m = n_1 n_2 \cdots n_k$. Then $\mathbb{Z}_m$ is isomorphic to $\mathbb{Z}_{n_1} \oplus \mathbb{Z}_{n_2} \oplus \cdots \oplus \mathbb{Z}_{n_k}$ if and only if $n_i$ and $n_j$ are relatively prime for all $i \neq j$.

#### **Proof**:

1. **If**: Assume that $n_i$ and $n_j$ are relatively prime for all $i \neq j$. By the Chinese Remainder Theorem (CRT), there exists an isomorphism:
   $$
   \mathbb{Z}_m \approx \mathbb{Z}_{n_1} \oplus \mathbb{Z}_{n_2} \oplus \cdots \oplus \mathbb{Z}_{n_k}
   $$
   since the orders $n_1, n_2, \dots, n_k$ are pairwise relatively prime.

2. **Only If**: Suppose $\mathbb{Z}_m$ is isomorphic to $\mathbb{Z}_{n_1} \oplus \mathbb{Z}_{n_2} \oplus \cdots \oplus \mathbb{Z}_{n_k}$. Then, by Theorem 8.1, the order of any element in $\mathbb{Z}_{n_1} \oplus \mathbb{Z}_{n_2} \oplus \cdots \oplus \mathbb{Z}_{n_k}$ is the least common multiple of the orders of the components, which equals $n_1 n_2 \cdots n_k$ only if the $n_i$ are pairwise relatively prime.

Therefore, $\mathbb{Z}_m \approx \mathbb{Z}_{n_1} \oplus \mathbb{Z}_{n_2} \oplus \cdots \oplus \mathbb{Z}_{n_k}$ if and only if $n_i$ and $n_j$ are relatively prime for $i \neq j$, completing the proof.


### Theorem 8.2: Criterion for $G \oplus H$ to Be Cyclic

**Statement**:
Let $G$ and $H$ be finite cyclic groups. The direct product $G \oplus H$ is cyclic if and only if the orders of $G$ and $H$ are relatively prime.

### Proof of Theorem 8.2

1. **Assume $G \oplus H$ is Cyclic**:

   Let $|G| = m$ and $|H| = n$, so $|G \oplus H| = m \cdot n$. Assume that $G \oplus H$ is cyclic, which means there exists an element in $G \oplus H$ with order equal to $m \cdot n$.

   Suppose, for contradiction, that $\gcd(m, n) = d > 1$. Let $g$ be a generator of $G$ with $g^m = e_G$, where $e_G$ is the identity element in $G$. Similarly, let $h$ be a generator of $H$ with $h^n = e_H$.

   Since $\gcd(m, n) = d > 1$, any element $(g, h)$ would have an order that divides $\frac{m \cdot n}{d}$, which is less than $m \cdot n$. This would contradict our assumption that $G \oplus H$ is cyclic and has an element of order $m \cdot n$.

   Therefore, $\gcd(m, n) = 1$.

2. **Assume $\gcd(m, n) = 1$**:

   Let $G = \langle g \rangle$ and $H = \langle h \rangle$, where $g$ generates $G$ and $h$ generates $H$. Then the element $(g, h)$ in $G \oplus H$ has order equal to $\text{lcm}(m, n)$.

   Since $m$ and $n$ are relatively prime, their least common multiple is $m \cdot n$:
   $$
   \text{lcm}(m, n) = m \cdot n
   $$
   Therefore, $(g, h)$ has order $m \cdot n$, meaning it generates $G \oplus H$ and makes $G \oplus H$ cyclic.

### Conclusion

We have shown that $G \oplus H$ is cyclic if and only if the orders of $G$ and $H$ are relatively prime. This completes the proof of Theorem 8.2.

### **Corollary 1**: Criterion for $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ to Be Cyclic

**Statement**:
An external direct product $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ of a finite number of finite cyclic groups is cyclic if and only if the orders $|G_i|$ and $|G_j|$ are relatively prime for all $i \neq j$.

#### **Proof**:

1. **If**: Suppose the orders $|G_i|$ and $|G_j|$ are relatively prime for all $i \neq j$. Let $|G_i| = m_i$, and let $g_i$ be a generator of $G_i$. Consider the element $(g_1, g_2, \dots, g_n)$ in $G_1 \oplus G_2 \oplus \cdots \oplus G_n$.

   - The order of $(g_1, g_2, \dots, g_n)$ is the least common multiple of the orders $m_1, m_2, \dots, m_n$.
   - Since $m_i$ and $m_j$ are relatively prime for all $i \neq j$, we have:
 $$
 \text{lcm}(m_1, m_2, \dots, m_n) = m_1 \cdot m_2 \cdots m_n
 $$
 
   - Thus, $(g_1, g_2, \dots, g_n)$ has order $m_1 \cdot m_2 \cdots m_n$, which is the order of $G_1 \oplus G_2 \oplus \cdots \oplus G_n$. Therefore, $(g_1, g_2, \dots, g_n)$ generates the entire group, so $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ is cyclic.

2. **Only If**: Suppose $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ is cyclic, with generator $(g_1, g_2, \dots, g_n)$. Let $|G_i| = m_i$. By Theorem 8.1, the order of $(g_1, g_2, \dots, g_n)$ is $\text{lcm}(m_1, m_2, \dots, m_n)$, which must equal $m_1 \cdot m_2 \cdots m_n$.

   - This equality holds only if $m_i$ and $m_j$ are relatively prime for $i \neq j$.
   
Thus, $G_1 \oplus G_2 \oplus \cdots \oplus G_n$ is cyclic if and only if the orders $|G_i|$ and $|G_j|$ are relatively prime for all $i \neq j$, completing the proof of Corollary 1.

---

### **Corollary 2**: Isomorphism of $\mathbb{Z}_{n_1 n_2 \cdots n_k}$ and $\mathbb{Z}_{n_1} \oplus \mathbb{Z}_{n_2} \oplus \cdots \oplus \mathbb{Z}_{n_k}$

**Statement**:
Let $m = n_1 n_2 \cdots n_k$. Then $\mathbb{Z}_m$ is isomorphic to $\mathbb{Z}_{n_1} \oplus \mathbb{Z}_{n_2} \oplus \cdots \oplus \mathbb{Z}_{n_k}$ if and only if $n_i$ and $n_j$ are relatively prime for all $i \neq j$.

#### **Proof**:

1. **If**: Assume that $n_i$ and $n_j$ are relatively prime for all $i \neq j$. By the Chinese Remainder Theorem (CRT), there exists an isomorphism:
   $$
   \mathbb{Z}_m \approx \mathbb{Z}_{n_1} \oplus \mathbb{Z}_{n_2} \oplus \cdots \oplus \mathbb{Z}_{n_k}
   $$
   since the orders $n_1, n_2, \dots, n_k$ are pairwise relatively prime.

2. **Only If**: Suppose $\mathbb{Z}_m$ is isomorphic to $\mathbb{Z}_{n_1} \oplus \mathbb{Z}_{n_2} \oplus \cdots \oplus \mathbb{Z}_{n_k}$. Then, by Theorem 8.1, the order of any element in $\mathbb{Z}_{n_1} \oplus \mathbb{Z}_{n_2} \oplus \cdots \oplus \mathbb{Z}_{n_k}$ is the least common multiple of the orders of the components, which equals $n_1 n_2 \cdots n_k$ only if the $n_i$ are pairwise relatively prime.

Therefore, $\mathbb{Z}_m \approx \mathbb{Z}_{n_1} \oplus \mathbb{Z}_{n_2} \oplus \cdots \oplus \mathbb{Z}_{n_k}$ if and only if $n_i$ and $n_j$ are relatively prime for $i \neq j$, completing the proof of Corollary 2.
### Theorem 8.3: $U(n)$ as an External Direct Product

**Statement**:
If $s$ and $t$ are relatively prime, then the group of units modulo $st$, denoted $U(st)$, is isomorphic to the external direct product of $U(s)$ and $U(t)$.

In notation:
$$
U(st) \approx U(s) \oplus U(t)
$$
where $U(n)$ denotes the group of units modulo $n$ (i.e., the integers less than $n$ and coprime to $n$ under multiplication modulo $n$).

### Proof of Theorem 8.3

To prove this theorem, we will construct an explicit isomorphism between $U(st)$ and $U(s) \oplus U(t)$ using properties of modular arithmetic and the Chinese Remainder Theorem (CRT).

#### **Step-by-Step Proof**

1. **Define the Mapping**:
   Let $\phi: U(st) \rightarrow U(s) \oplus U(t)$ be defined by:
   $$
   \phi(x) = (x \bmod s, x \bmod t)
   $$
   This mapping takes each element $x \in U(st)$ and maps it to a pair $(x \bmod s, x \bmod t)$, where the first component is the residue of $x$ modulo $s$ and the second component is the residue modulo $t$.

2. **Well-Definedness of $\phi$**:
   Since $x \in U(st)$, $x$ is relatively prime to $st$. Thus, $x$ is also relatively prime to both $s$ and $t$ (since $s$ and $t$ are factors of $st$ and are relatively prime to each other). This guarantees that both $x \bmod s$ and $x \bmod t$ are elements of $U(s)$ and $U(t)$, respectively, making $\phi(x)$ well-defined.

3. **Homomorphism Property**:
   To verify that $\phi$ is a homomorphism, take any two elements $x, y \in U(st)$. Then:

$$
\begin{align*}
\phi(x \cdot y) &= ((x \cdot y) \bmod s, (x \cdot y) \bmod t) \\
&= ((x \bmod s)(y \bmod s), (x \bmod t)(y \bmod t)) \\
&= \phi(x) \cdot \phi(y)
\end{align*}
$$

   Thus, $\phi$ preserves the group operation (multiplication), so it is a homomorphism.

4. **Injectivity of $\phi$**:
   Suppose $\phi(x) = \phi(y)$. This implies that:
   
$$
x \equiv y \pmod{s} \quad \text{and} \quad x \equiv y \pmod{t}
$$
   
   Since $s$ and $t$ are relatively prime, the Chinese Remainder Theorem guarantees that $x \equiv y \pmod{st}$. Therefore, $x = y$ in $U(st)$, and $\phi$ is injective.

5. **Surjectivity of $\phi$**:
   For any pair $(a, b) \in U(s) \oplus U(t)$, where $a \in U(s)$ and $b \in U(t)$, the Chinese Remainder Theorem ensures the existence of an $x \in U(st)$ such that:
   $$
   x \equiv a \pmod{s} \quad \text{and} \quad x \equiv b \pmod{t}
   $$
   Therefore, $\phi(x) = (a, b)$, showing that $\phi$ is surjective.

6. **Conclusion**:
   Since $\phi$ is a bijective homomorphism, it is an isomorphism. Therefore, we conclude that:
   $$
   U(st) \approx U(s) \oplus U(t)
   $$

This completes the proof, demonstrating that $U(st)$ is isomorphic to $U(s) \oplus U(t)$ when $s$ and $t$ are relatively prime.

### **Corollary**: Generalization of Theorem 8.3 to Multiple Relatively Prime Factors

**Statement**:
If $m = n_1 n_2 \cdots n_k$, where $n_i$ and $n_j$ are relatively prime for all $i \neq j$, then:

$$
U(m) \approx U(n_1) \oplus U(n_2) \oplus \cdots \oplus U(n_k)
$$

This corollary allows us to express $U(m)$ as a direct product of the unit groups of each $n_i$, provided these factors are pairwise relatively prime.

#### **Proof**:

1. **Define the Mapping**:
   Let $\phi: U(m) \rightarrow U(n_1) \oplus U(n_2) \oplus \cdots \oplus U(n_k)$ by:
   
   $$
   \phi(x) = (x \bmod n_1, x \bmod n_2, \dots, x \bmod n_k)
   $$
   
   Here, $\phi(x)$ maps an element $x \in U(m)$ to its residues modulo each $n_i$.

2. **Well-Definedness of $\phi$**:
   Since $x \in U(m)$, $x$ is relatively prime to $m$. Because $m = n_1 n_2 \cdots n_k$ and each $n_i$ is a factor of $m$, $x$ is also relatively prime to each $n_i$. Therefore, $x \bmod n_i \in U(n_i)$, making $\phi(x)$ a well-defined element of $U(n_1) \oplus U(n_2) \oplus \cdots \oplus U(n_k)$.

3. **Homomorphism Property**:
   For any $x, y \in U(m)$, we have:

$$
\begin{align*}
\phi(x \cdot y) &= ((x \cdot y) \bmod n_1, (x \cdot y) \bmod n_2, \dots, (x \cdot y) \bmod n_k) \\
&= (x \bmod n_1 \cdot y \bmod n_1, \dots, x \bmod n_k \cdot y \bmod n_k) \\
&= \phi(x) \cdot \phi(y)
\end{align*}
$$

   This shows that $\phi(x \cdot y) = \phi(x) \cdot \phi(y)$, so $\phi$ preserves the group operation, making it a homomorphism.

4. **Injectivity of $\phi$**:
   Suppose $\phi(x) = \phi(y)$. This implies that:
   $$
   x \equiv y \pmod{n_i} \quad \text{for each } i = 1, 2, \dots, k
   $$
   Since $n_1, n_2, \dots, n_k$ are pairwise relatively prime, the Chinese Remainder Theorem guarantees that $x \equiv y \pmod{m}$. Thus, $x = y$ in $U(m)$, and $\phi$ is injective.

5. **Surjectivity of $\phi$**:
   For any $(a_1, a_2, \dots, a_k) \in U(n_1) \oplus U(n_2) \oplus \cdots \oplus U(n_k)$, where $a_i \in U(n_i)$ for each $i$, the Chinese Remainder Theorem ensures there exists an $x \in U(m)$ such that:
   $$
   x \equiv a_i \pmod{n_i} \quad \text{for each } i
   $$
   Therefore, $\phi(x) = (a_1, a_2, \dots, a_k)$, showing that $\phi$ is surjective.

6. **Conclusion**:
   Since $\phi$ is a bijective homomorphism, it is an isomorphism. Therefore:
   $$
   U(m) \approx U(n_1) \oplus U(n_2) \oplus U(n_3) \oplus \cdots \oplus U(n_k)
   $$
   when $m = n_1 n_2 \cdots n_k$ and the $n_i$ are pairwise relatively prime.

This completes the proof of the corollary, generalizing Theorem 8.3 to multiple relatively prime factors.

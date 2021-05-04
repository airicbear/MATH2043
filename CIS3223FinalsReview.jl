### A Pluto.jl notebook ###
# v0.14.4

using Markdown
using InteractiveUtils

# ╔═╡ 1ba17e2e-a9d2-11eb-3e83-bd0873b44b78
md"# Data Structures and Algorithms Final Exam Review

- CIS 3223 Section 002 (Spring 2021)

- Instructor: Yu Wang

- Temple University"

# ╔═╡ ed49dc2f-7845-456d-9c41-481996339d98
md"
### Format

- Close-book and close-notes
    - Allow 2 sheets (4 sides) of notes
    - Submit your notes to get credits
- In class, via Zoom + Canvas
    - Join **regular zoom meeting** for announcement & questions
    - Sign out after submission
- The final will be delivered as an assignment on canvas
    - Upload your solutions via the assignment in Canvas
- Please work on your own, do NOT discuss anything with your classmates
    - No messaging or group chatting allowed
"

# ╔═╡ fe320c90-5d5d-410f-8715-c1ef4c8ab9fb
md"
### Time & Submission

- Monday (May 3) 3:30-5:50pm
    - 120 minutes for exam and the remaining for downloading & uploading
- Make sure you have stable internet during the exam period
"

# ╔═╡ 92ce6a5e-0ad3-4905-9d40-f8048acc10af
md"
### Number of Problems and Grade

- 9 Problems total.
- Full mark is 120.
- Points will be deducted for difficult to read answers.
- 30% of your final score comes from your final exam.
"

# ╔═╡ ca1cc38c-da0e-4d64-8fe2-c195f46f88cc
md"
### Style: Quiz, Midterm, homework

- Calculation or run algorithm on examples
    - e.g. running DFS, Dijkstra, MST, Max-flow, calculating RSA or gcd(x,y)
- Design or analyze algorithms
    - e.g. design/analyze divide-and-conquer, greedy, DP algorithms
- Prove certain claims/lemmas or analyze certain functions
    - e.g. proving Big-O relation, proving using *induction* or *contradiction*, solving recursive function using Master theorem.
"

# ╔═╡ d8a8ee9c-b782-4413-b665-b344332216f2
md"
### Review material (Ch0-Ch7):

- Homework #1-#8 + Quiz #1-#3 + Midterm
- Lecture Notes
- Textbook
"

# ╔═╡ a6bbe6a3-145b-498f-ac53-bb9bdf2cd72b
md"## Important Topics

### 0 Prologue

- big-O notation
- enter Fibonacci

### 1 Algorithms with numbers

- modular arithmetic
- cryptography

### 2 Divide and conquer

- mergesort
- master theorem

### 3 Decompositions of graphs

- Depth-first search in undirected graphs
- Depth-first search in directed graphs
- Strongly connected components

### 5 Paths in graphs

- breadth-first search
- Dijkstsra's algorithm

### 5 Greedy algorithms

- minimum spanning trees
- Kruskal, Prim

### 6 Dynamic programming

- weighted interval scheduling
- knapsack
- independent sets in trees

### 7.2 Flows in networks

- max-flow and min-cut problems
- Ford-Fulkerson algorithm"

# ╔═╡ 4b240b0f-aeb2-43d4-8957-acc77bc1b044
md"# Algorithms"

# ╔═╡ 22507365-4ef7-4400-a9ba-7e93dc4a5203
# Exponential fibonacci algorithm
function fib1(n)
	if n == 0 return 0 end
	if n == 1 return 1 end
	return fib1(n - 1) + fib1(n - 2)
end;

# ╔═╡ c51f5256-a278-4ce3-b0cf-7274d174f454
# Polynomial fibonacci algorithm
function fib2(n)
	if n == 0 return 0 end
	f = zeros(Int, n+1)
	f[2] = 1
	for i = 3:n
		f[i] = f[i - 1] + f[i - 2]
	end
	return f[n]
end;

# ╔═╡ 2174fcff-76a9-47ab-99fd-662679baf33f
# Decimal to binary
function dec2bin(N)
	s = ""
	while N > 0
		s = "$(N % 2)$s"
		N >>= 1
	end
	return s
end;

# ╔═╡ 7b96f661-a77b-4a40-8269-d14ec887a46a
dec2bin(245)

# ╔═╡ 9db70690-4f7b-49a1-b259-a490c0f6787a
# Decimal to hexadecimal
function dec2hex(N)
	s = ""
	while N > 0
		d = let
			r = N % 16
			if r > 9
				'a' + r - 10
			else
				r
			end
		end
		s = "$d$s"
		N >>= 4
	end
	return s
end;

# ╔═╡ dc49581c-2e2d-48c2-85f4-3aeeddbae8f0
dec2hex(249231)

# ╔═╡ 103dcea9-522b-45e0-bbc4-851450a755aa
# Convert decimal to any base b < 10
function dec2base(N, b)
	s = ""
	while N > 0
		s = "$(N % b)$s"
		N = N ÷ b
	end
	return s
end;

# ╔═╡ dfdf2ab2-797d-4744-a2ee-379320e120a5
dec2base(245, 3)

# ╔═╡ 0c60b870-e122-4592-b42f-d5b64941d908
function dec2base_steps(N, b)
	s = [b N -1]
	while N > 0
		(q, r) = divrem(N, b)
		s = [s; [b q r]]
		N = N ÷ b
	end
	return s, join(reverse(s[2:end,3]))
end;

# ╔═╡ 37c60ab8-f2ef-41c3-8fdd-ecbf6189d625
dec2base_steps(245, 3)

# ╔═╡ 1754fc92-1036-4ce6-b209-f4f5bc75efba
# Euclid's gcd algorithm
function Euclid(a, b)
	if b == 0 return a end
	return Euclid(b, a % b)
end;

# ╔═╡ 4bc44e0c-b2e1-4866-86df-da59331a620e
# Extended Euclidean algorithm
function extEuclid(a, b)
	if b == 0 return (1, 0, a) end
	(x′, y′, d) = extEuclid(b, a % b)
	return (y′, x′ - a ÷ b * y′, d)
end

# ╔═╡ c311334c-eee4-4171-93e3-56aa6e822c9f
extEuclid(210, 588)

# ╔═╡ 5481ab40-7e2c-4f35-94a1-90df39e2558f
let
	# Prove that T(n) = n log₂n, assuming n is a power of 2
	function T(n)
		if n == 1
			return 0
		else
			return 2T(n ÷ 2) + n
		end
	end
	
	T(2^11), (n -> n * log2(n))(2^11)
end

# ╔═╡ da5b0b05-dc8c-4bca-8b8c-c50b89f0018c
md"# Homework Problems"

# ╔═╡ d097fbac-2ab5-4e44-b9cc-98a694c2a7fa
md"## 0 Prologue"

# ╔═╡ 3918986d-8fcf-41ff-91bc-52e5eb6346c0
md"### Problem 0.1

In each of the following situations, indicate whether $f = O(g)$, or $f = \Omega(g)$, or both (in which case $f = \Theta(g)$).

$
\begin{array}{cll}
   & f(n) & g(n) \\ 
	\mathbf{(a)} & n - 100 & n - 200 \\
	\mathbf{(b)} & n^{1/2} & n^{2/3} \\
	\mathbf{(c)} & 100n + \log{n} & n + (\log{n})^2 \\
	\mathbf{(d)} & n \log{n} & 10n \log{10n} \\
	\mathbf{(e)} & \log{2n} & \log{3n} \\
	\mathbf{(f)} & 10 \log{n} & \log{(n^2)} \\
	\mathbf{(g)} & n^{1.01} & n \log^2{n} \\
	\mathbf{(h)} & n^2 / \log{n} & n (\log{n})^2 \\
	\mathbf{(i)} & n^{0.1} & (\log{n})^{10} \\
	\mathbf{(j)} & (\log{n})^{\log{n}} & n / \log{n} \\
	\mathbf{(k)} & \sqrt{n} & (\log{n})^3 \\
	\mathbf{(l)} & n^{1/2} & 5^{\log_2{n}} \\
	\mathbf{(m)} & n2^n & 3^n \\
	\mathbf{(n)} & 2^n & 2^{n+1} \\
	\mathbf{(o)} & n! & 2^n \\
	\mathbf{(p)} & (\log{n})^{\log{n}} & 2^{(\log_2{n})^2} \\
	\mathbf{(q)} & \sum_{i=1}^n i^k & n^{k+1}
\end{array}$
"

# ╔═╡ f471306e-733c-421f-a243-1a0079989dfb
md"#### Part (a)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{n - 100}{n - 200} = \lim_{n \to \infty} \frac{1 - \frac{100}{n}}{1 - \frac{200}{n}} = 1 \implies f = \Theta(g)$"

# ╔═╡ 33a9b77b-2c02-40de-8072-1164b6614e25
md"#### Part (b)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{n^{1/2}}{n^{2/3}} = \frac{n^{1/2 - 2/3}}{1} = \lim_{n \to \infty} \frac{1}{n^{1/3}} = 0 \implies f = O(g)$"

# ╔═╡ be37a3a8-0a69-4b9c-93eb-d4025b2fccea
md"#### Part (c)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{100n + \log{n}}{n + (\log{n})^2} = \lim_{n \to \infty} \frac{100 + \frac{\log{n}}{n}}{1 + \frac{(\log{n})^2}{n}} = 100 \implies f = \Theta(g)$"

# ╔═╡ 4ee7fe91-2397-45af-865a-c252920bcf59
md"#### Part (d)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{n \log{n}}{10n \log{10n}} = \lim_{n \to \infty} \frac{1}{\frac{10n\log{10}}{n \log{n}} + \frac{10n\log{n}}{n \log{n}}} = \frac{1}{10} \implies f = \Theta(g)$
"

# ╔═╡ 02641c72-1bd8-4855-b169-1e67b7f840c8
md"#### Part (e)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{\log{2n}}{\log{3n}} = \lim_{n \to \infty} \frac{\log{2} + \log{n}}{\log{3} + \log{n}} = \lim_{n \to \infty} \frac{\frac{\log{2}}{\log{n}} + 1}{\frac{\log{3}}{\log{n}} + 1} = 1 \implies f = \Theta(g)$
"

# ╔═╡ e09e3174-4b62-4d48-8640-202d1da7fb3f
md"#### Part (f)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{10 \log{n}}{\log{(n^2)}} = \lim_{n \to \infty} \frac{10 \log{n}}{2 \log{n}} = 5 \implies f = \Theta(g)$"

# ╔═╡ 510a5fb5-e96b-44f7-9257-40fbfd4ea191
md"#### Part (g)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{n^{1.01}}{n \log^2{n}} = \lim_{n \to \infty} \frac{n^{0.01}}{\log^2{n}} = \infty \implies f = \Omega(g)$"

# ╔═╡ 5e4d7f29-974b-4d25-aa7b-8bf827ab1589
md"#### Part (h)

$\lim_{n \to \infty} \frac{\frac{n^2}{\log{n}}}{n (\log{n})^2} = \lim_{n \to \infty} \frac{n}{(\log{n})^3} = \infty \implies f = \Omega(g)$"

# ╔═╡ 5272ccd3-959d-4d29-8626-3d83cdb830a7
md"#### Part (i)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{n^{0.1}}{(\log{n})^{10}} = \infty \implies f = \Omega(g)$"

# ╔═╡ 93046ae6-acf3-46fe-b90f-b3731115030d
md"#### Part (j)

$\begin{align*}
\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{(\log{n})^{\log{n}}}{\frac{n}{\log{n}}} &= \lim_{n \to \infty} 10^{\log{\left(\frac{(\log{n})^{\log{n}}}{\frac{n}{\log{n}}}\right)}} \\
&= \lim_{n \to \infty} 10^{\left(\left(\log n\right)\log\left(\log\left(n\right)\right)-\log\left(n\right)+\log\left(\log n\right)\right)} \\
&= \lim_{n \to \infty} \frac{\left(10^{\log{n}}\right)^{\log{(\log{n})}} 10^{\log{(\log{n})}}}{10^{\log{n}}} \\
&= \lim_{n \to \infty} \frac{n^{\log\left(\log n\right)}\log n}{n} \\
&= \lim_{n \to \infty} n^{\log{(\log{n})} - 1} \log{n} \\
&= \infty \implies f = \Omega(g)
\end{align*}$"

# ╔═╡ f01338f8-23f0-4c81-9dbc-c1afc3c006f9
md"#### Part (k)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{\sqrt{n}}{(\log{n})^3} = \infty \implies f = \Omega(g)$"

# ╔═╡ 98bcd301-6c2c-4d0b-8ec3-ca891de91a05
md"#### Part (l)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{n^{1/2}}{5^{\log_2{n}}} = 0 \implies f = O(g)$"

# ╔═╡ 66de4f55-61ef-4ef1-bba0-c8733ad6f008
md"#### Part (m)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{n2^n}{3^n} = \lim_{n \to \infty} n \left(\frac{2}{3}\right)^n = 0 \implies f = O(g)$"

# ╔═╡ dd202daf-e918-4306-a38e-f263ea10a225
md"#### Part (n)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{2^n}{2^{n+1}} = \lim_{n \to \infty} \frac{2^n}{2^n \cdot 2} = \frac{1}{2} \implies f = \Theta(g)$"

# ╔═╡ 29a65c5a-479b-4e5b-8471-6d852b11d43b
md"#### Part (o)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{n!}{2^n} = \infty \implies f = \Omega(g)$"

# ╔═╡ 96745057-1360-4bc4-a4af-7fa6734aac26
md"#### Part (p)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{(\log{n})^{\log{n}}}{2^{(\log_2{n})^2}} = 0 \implies f = O(g)$"

# ╔═╡ 17d6abd2-3f11-4534-b031-8b934c59c583
md"#### Part (q)

$\lim_{n \to \infty} \frac{f(n)}{g(n)} = \lim_{n \to \infty} \frac{\sum_{i = 1}^n i^k}{n^{k + 1}} = \frac{n^k}{n^k \cdot n} = 0 \implies f = O(g)$"

# ╔═╡ 5db0b92d-e1dc-48ad-b434-14f359b58807
md"### Problem 0.2

Show that, if $c$ is a positive real number, then $g(n) = 1 + c + c^2 + \cdots + c^n$ is:

(a) $\Theta(1)$ if $c < 1$.

(b) $\Theta(n)$ if $c = 1$.

(c) $\Theta(c^n)$ if $c > 1$.

The moral: in big-Θ terms, the sum of a geometric series is simply the first term if the series is strictly decreasing, the last term if the series is strictly increasing, or the number of terms if the series is unchanging."

# ╔═╡ e434304a-88f6-4ad8-b41a-d44fe38094d3
md"#### Part (a)

$g(n) = 1 + c + c^2 + \cdots + c^n = \frac{1}{1 - c}$

$\lim_{n \to \infty} \frac{\frac{1}{1 - c}}{1} = \frac{1}{1 - c} \implies g = \Theta(1)$"

# ╔═╡ b78ef83e-f960-463f-8981-ef57a10906a0
md"#### Part (b)

$g(n) = 1 + c + c^2 + \cdots + c^n = 1 + 1 + 1 + \cdots + 1 = 1 + n$

$\lim_{n \to \infty} \frac{1+n}{n} = 1 \implies g = \Theta(n)$
"

# ╔═╡ 07038e25-aa70-4426-95e8-150868d10c30
md"#### Part (c)

$g(n) = 1 + c + c^2 + \cdots + c^n = \frac{1}{c - 1}$

Each term $c^i$ is dominated by $c^n$ for $i < n$, so $g(n) = \Theta(c^n)$.

**Source:** [https://web.cs.dal.ca/~nauzerk/csci3110/Assignments/a1\_solution\_f12.pdf](https://web.cs.dal.ca/~nauzerk/csci3110/Assignments/a1_solution_f12.pdf)
"

# ╔═╡ 5e48f296-0fe9-40b0-a238-420907425765
md"## 1 Algorithms with numbers"

# ╔═╡ 6be04797-3732-4034-9a21-bc3cb79ebcde
md"### Problem 1.2

Show that any binary integer is at most four times as long as the corresponding decimal integer.
For very large numbers, what is the ratio of these two lengths, approximately?"

# ╔═╡ 3bce9942-38c0-431c-be82-93ddead7b0c7
md"**Answer:**
An the size of an integer $N$ in base $a$ is the same as its size in base $b$, times a constant factor $\log_a{b}$.

Then the size of an integer $N$ represented in binary form is at most $\log_{2}{10} \approx 3.32$ times as long as its decimal representation.
For very large numbers, the ratio of these two lengths is approximately $\log_{2}{10} \approx 3.32$"

# ╔═╡ ca3fd00f-e17a-47d7-920b-df6fde825c90
log(2, 10)

# ╔═╡ 69227b69-01d5-47ba-84cb-50871aa7b056
md"### Problem 1.7

How long does the recursive multiplication algorithm (page 25) take to multiply an $n$-bit number by an $m$-bit number? Justify your answer."

# ╔═╡ da1776df-0827-483f-b5cf-dc77b279ea0e
function multiply(x, y)
	if y == 0 return 0 end
	z = multiply(x, y >> 1)
	if iseven(y)
		return z << 1
	else
		return x + (z << 1)
	end
end;

# ╔═╡ b79687ef-ad98-4e1f-880a-86b72349f423
md"**Answer:** The recursive multiplication algorithm takes $O(mn)$. It takes $m$ recursive calls since for each call $m$ is shifted to the right. Then it takes $O(n)$ bit operations for each call."

# ╔═╡ de5c451d-5af3-4b83-bb1d-7cc1c3b98048
md"### Problem 1.8

Justify the correctness of the recursive division algorithm given in page 26, and show that it takes time $O(n^2)$ on $n$-bit inputs."

# ╔═╡ f34b3872-9825-4bad-bdca-7da97906a212
function divide(x, y)
	if x == 0 return (q, r) = (0, 0) end
	(q, r) = divide(x >> 1, y)
	q = q << 1
	r = r << 1
	if isodd(x)
		r += 1
	end
	if r >= y
		r -= y
		q += 1
	end
	return (q, r)
end;

# ╔═╡ ea58b610-804b-4c4b-af04-c5411b52c350
md"**Answer:** The recursive division algorithm takes $n$ recursive calls since x is shifted to the right for each call and each call takes $O(n)$ bit operations, thus the algorithm takes $O(n^2)$ time.

We can justify its correctness using induction.

- Base case: $n = 2$, $x = 0$

- Inductive step: $n > 2$, $x > 1$, $x = yq + r$

- Case 1: $x$ is even, $q = 2q$, $r = 2r$

- Case 2: $x$ is odd, $q = 2q$, $r = 2r + 1$"

# ╔═╡ 9dbd6d07-870c-423d-90e0-63214ed1beb9
md"### Problem 1.18

Compute $\gcd(210, 588)$ two different ways: by finding the factorization of each number, and by using Euclid's algorithm.
"

# ╔═╡ d686c4e1-e9ba-4a34-8eca-03fd531a2cc0
md"#### Factorization

$\begin{align*}
210 &= 2 \cdot 105 = 2 \cdot 5 \cdot 21 = 2 \cdot 5 \cdot 3 \cdot 7 \\
588 &= 2 \cdot 294 = 2 \cdot 2 \cdot 147 = 2^2 \cdot 7 \cdot 21 = 2^2 \cdot 3 \cdot 7^2
\end{align*}$

$\gcd(210, 588) = 2 \cdot 3 \cdot 7 = 42$
"

# ╔═╡ f64a5f44-0db6-45f2-91ea-f95035bc0149
md"#### Euclid's algorithm
$\begin{align*}
\gcd(210, 588) &= \text{Euclid}(588, 210) \\
&= \text{Euclid}(210, 168) \\
&= \text{Euclid}(168, 42) \\
&= \text{Euclid}(42, 0) \\
&= 42
\end{align*}$"

# ╔═╡ 5318005b-e739-4617-abbf-88e4b69a4428
let
	function Euclid(a, b)
		if b == 0 return a end
		return Euclid(b, a % b)
	end
	
	Euclid(210, 588)
end

# ╔═╡ bf530c92-b3ea-4c70-9f08-2c8bc9aca846
md"### Problem 1.27

Consider an RSA key set with $p = 17$, $q = 23$, $N = 391$, and $e = 3$ (as in Figure 1.9).
What value of $d$ should be used for the secret key?
What is the encryption of the message $M = 41$?"

# ╔═╡ 462047c0-8891-438b-beda-900f7f25dbc5
md"**Answer:** First, verify that $e$ and $(p - 1)(q - 1)$ are relatively prime, i.e., $\gcd(e, (p - 1)(q - 1)) = 1$."

# ╔═╡ 442dab3f-9e22-49c1-a5d3-1c2f7fd592fd
let
	(p, q, e) = 17, 23, 3
	gcd(e, (p - 1) * (q - 1))
end

# ╔═╡ ddd61960-90a8-4d90-b151-eba80ce79569
md"The value of $d$ is the inverse of $e$ modulo $(p - 1)(q - 1)$"

# ╔═╡ cb0740b1-d802-47b5-92b0-c12a79c53026
let
	(p, q, e) = 17, 23, 3
	invmod(e, (p - 1) * (q - 1))
end

# ╔═╡ 653860b7-79aa-4802-994c-3eb0cdc3b672
md"The encryption of the message $M$ is

$M^e \bmod N$"

# ╔═╡ 5434c444-a214-410a-8b01-e31c1a5765a6
let
	(e, N, M) = 3, 391, 41
	powermod(M, e, N)
end

# ╔═╡ 0c775540-e00a-460a-9d7d-04f2b783981a
md"So $d = 235$ and the encryption of the message $M$ is 105."

# ╔═╡ 3cf4dc67-0d27-4198-97bd-0d50d73b7b19
md"## 2 Divide and conquer"

# ╔═╡ af2a2fa0-5ecd-4fab-8651-9ea8c6fa5fb4
md"### Problem 2.3

Section 2.2 describes a method for solving recurrence relationship which is based on analyzing the recursion tree and deriving a formula for the work done at each level.
Another (closely related) method is to expand out the recurrence a few times, until a pattern emerges.
For instance, let's start with the familiar $T(n) = 2T(n/2) + O(n)$.
Think of $O(n)$ as being $\leq cn$ for some constant $c$, so $T(n) \leq 2T(n/2) + cn$.
By repeatedly applying this rule, we can bound $T(n)$ in terms of $T(n/2)$, then $T(n/4)$, then $T(n/8)$, and so on, at each step getting closer to the value of $T(\cdot)$ we do know, namely $T(1) = O(1)$.

$\begin{align*}
T(n) &\leq 2T(n/2) + cn \\
&\leq 2[2T(n/4) + cn/2] + cn = 4T(n/4) + 2cn \\
&\leq 4[2T(n/8) + cn/4] + 2cn = 8T(n/8) + 3cn \\
&\leq 8[2T(n/16) + cn/8] + 3cn = 16T(n/16) + 4cn \\
&\vdots
\end{align*}$

A pattern is emerging... the general term is

$T(n) \leq 2^k T(n/2^k) + kcn.$

Plugging in $k = \log_2{n}$, we get $T(n) \leq nT(1) + cn \log_2{n} = O(n \log{n})$.

(a) Do the same thing for the recurrence $T(n) = 3T(n/2) + O(n)$.
    What is the general $k$th term in this case?
    And what value of $k$ should be plugged in to get the answer?

(b) Now try the recurrence $T(n) = T(n - 1) + O(1)$, a case which is not covered by the master theorem.
    Can you solve this too?
"

# ╔═╡ b750fc45-9547-467f-b37c-fcae7a78aacf
md"#### Part (a)

$\begin{align*}
T(n) &\leq 3T(n/2) + cn \\
&\leq 3[3T(n/4) + cn/2] + cn = 9T(n/4) + 3cn/2 \\
&\leq 9[3T(n/8) + cn/4] + 3cn/2 = 27T(n/8) + 7cn/4 \\
&\leq 27[3T(n/16) + cn/8] + 7cn/4 = 81T(n/16) + 15cn/8
\end{align*}$"

# ╔═╡ b279c66e-92d6-4453-82f1-cfb9acd306c1
md"### Problem 2.5

Solve the following recurrence relations and give a $\Theta$ bound for each of them.

$\begin{array}{ll}
\mathbf{(a)} & T(n) = 2T(n/3) + 1 \\
\mathbf{(b)} & T(n) = 5T(n/4) + n \\
\mathbf{(c)} & T(n) = 7T(n/7) + n \\
\mathbf{(d)} & T(n) = 9T(n/3) + n^2 \\
\mathbf{(e)} & T(n) = 8T(n/2) + n^3 \\
\mathbf{(f)} & T(n) = 49T(n/25) + n^{3/2} \log{n} \\
\mathbf{(g)} & T(n) = T(n-1) + 2 \\
\mathbf{(h)} & T(n) = T(n-1) + n^c, \text{ where } c \geq 1 \text{ is a constant } \\
\mathbf{(i)} & T(n) = T(n-1) + c^n, \text{ where } c > 1 \text{ is some constant } \\
\mathbf{(j)} & T(n) = 2T(n-1) + 1 \\
\mathbf{(k)} & T(n) = T(\sqrt{n}) + 1
\end{array}$"

# ╔═╡ 4db102db-2b38-478a-89b1-80afce55c78b
md"Master theorem. Suppose that $T(n)$ is a function on the nonnegative integers that satisfies the recurrence

$T(n) = aT\left(\frac{n}{b}\right) + f(n)$ where $n/b$ is integer division. Let $k = \log_b{a}$. Then,

- Case 1: If $f(n) = O(n^{k - \epsilon})$ for some constant $\epsilon > 0$, then $T(n) = \Theta(n^k)$.

- Case 2: If $f(n) = \Theta(n^k \log^p{n})$ for some constant $p \geq 0$, then $T(n) = \Theta(n^k \log^{p + 1} n$).

- Case 3: If $f(n) = \Omega(n^{k + \epsilon})$ for some constant $\epsilon > 0$, then $T(n) = \Theta(f(n))$."

# ╔═╡ f51e4978-db41-43c1-abc5-635f91b8d618
md"#### Part (a)

$\begin{gather*}
T(n) = 2T(n/3) + 1 \\
k = \log_b{a} = \log_3{2} \\
\text{Case 1} \quad f(n) = O(n^{\log_3{2} - \epsilon}) \\
T(n) = \Theta(n^{\log_3{2}})
\end{gather*}$
"

# ╔═╡ 5147b4b4-6445-4623-a049-7dc69e5c5779
md"#### Part (b)

$\begin{gather*}
T(n) = 5T(n/4) + n \\
k = \log_b{a} = \log_4{5} \\
\text{Case 1} \quad f(n) = O(n^{\log_4{5} - \epsilon}) \\
T(n) = \Theta(n^{\log_4{5}})
\end{gather*}$"

# ╔═╡ 79a6bcd6-fc17-49c0-b8bb-d4c262d2006a
md"#### Part (c)

$\begin{gather*}
T(n) = 7T(n/7) + n \\
k = \log_b{a} = \log_7{7} = 1 \\
\text{Case 1} \quad f(n) \neq O(n^{1 - \epsilon}) \\
\text{Case 2} \quad f(n) = \Theta(n \log^p{n}) \\
T(n) = \Theta(n \log{n})
\end{gather*}$"

# ╔═╡ 51e514c2-c633-4c11-95a4-f918fcdb0993
md"#### Part (d)

$\begin{gather*}
T(n) = 9T(n/3) + n^2 \\
k = \log_b{a} = \log_3{9} = 2 \\
\text{Case 1} \quad f(n) \neq O(n^{2 - \epsilon}) \\
\text{Case 2} \quad f(n) = \Theta(n^{2} \log^p{n}) \\
T(n) = \Theta(n^2 \log{n})
\end{gather*}$"

# ╔═╡ d55157cb-8476-452c-9766-2e50f1694b7b
md"#### Part (e)

$\begin{gather*}
T(n) = 8T(n/2) + n^3 \\
k = \log_b{a} = \log_2{8} = 3 \\
\text{Case 1} \quad f(n) \neq O(n^{3 - \epsilon}) \\
\text{Case 2} \quad f(n) = \Theta(n^{3 \log^p{n}}) \\
T(n) = \Theta(n^3 \log{n})
\end{gather*}$
"

# ╔═╡ 5e80011f-c44e-4a62-b905-3cc81b1fc1c7
md"#### Part (f)

$\begin{gather*}
T(n) = 49T(n/25) + n^{3/2} \log{n} \\
k = \log_{25}{49} \\
\text{Case 1} \quad f(n) \neq O(n^{\log_{25}{49} - \epsilon}) \\
\text{Case 2} \quad f(n) \neq \Theta(n^{\log_{25}{49}} \log^p{n}) \\
\text{Case 3} \quad f(n) = \Omega(n^{\log_{25}{49} + \epsilon}) \\
T(n) = \Theta(n^{3/2} \log{n})
\end{gather*}$"

# ╔═╡ 1d7d37a2-62f5-4433-a8cc-63e3a392bf99
md"#### Part (g)

$\begin{gather*}
T(n) = T(n - 1) + 2 \\
T(n - 1) = \Theta(n) \text{ dominates } 2 = \Theta(1) \\
T(n) = \Theta(n)
\end{gather*}$"

# ╔═╡ 47f5d93b-afb5-484f-91ff-736072cf8166
md"#### Part (h)

$\begin{gather*}
T(n) = T(n - 1) + n^c, \text{ where } c \geq 1 \text{ is a constant} \\
n^c = \Theta(n^c) \text{ dominates } T(n - 1) = \Theta(n) \\
T(n) = \Theta(n^{c+1})
\end{gather*}$"

# ╔═╡ ac43746a-c516-48b5-915c-05df5443c6ac
md"#### Part (i)

$\begin{gather*}
T(n) = T(n - 1) + c^n, \text{ where } c > 1 \text{ is some constant} \\
c^n = \Theta(c^n) \text{ dominates } T(n - 1) = \Theta(n) \\
T(n) = \Theta(c^n)
\end{gather*}$"

# ╔═╡ 88e903d1-e6e2-4527-b2b1-596c52de9428
md"#### Part (j)

$\begin{gather*}
T(n) = 2T(n - 1) + 1 \\
2T(n - 1) = \Theta(2^n) \text{ dominates } 1 = \Theta(1) \\
T(n) = \Theta(2^n)
\end{gather*}$"

# ╔═╡ e4c7a6f5-5fc9-4647-a56f-6aee6bd82783
md"#### Part (k)

$\begin{gather*}
T(n) = T(\sqrt{n}) + 1 \\
T(n) = \Theta(\log{(\log{n})})
\end{gather*}$"

# ╔═╡ dc597861-e2fc-4744-8c00-624cdad2cc2e
md"
$n^{(\log{n})^{10}}= 10^{\log{\left(n^{(\log{n})^{10}}\right)}} = 10^{(\log{n})^{11}} = n^{11} \implies T(n) = \Theta(n^{(\log{n})^{10}})$
"

# ╔═╡ 1b632b7e-97ea-4f81-9c37-b2915c026295
md"### Problem 2.12

How many lines, as a function of $n$ (in $\Theta(\cdot)$ form), does the following program print?
Write a recurrence and solve it.
You may assume $n$ is a power of 2."

# ╔═╡ c9faa850-9381-4f28-aff5-87e47ce03f16
function f(n)
	if n > 1
		println("still going")
		f(n/2)
		f(n/2)
	end
end;

# ╔═╡ 9da50846-fb1a-4b0a-b215-f0eba1274249
md"**Answer:**

$\begin{gather*}
T(n) = 2T(n/2) + 1\\
k = \log_2{2} = 1\\
T(n) = \Theta(n)
\end{gather*}$
"

# ╔═╡ Cell order:
# ╟─1ba17e2e-a9d2-11eb-3e83-bd0873b44b78
# ╟─ed49dc2f-7845-456d-9c41-481996339d98
# ╟─fe320c90-5d5d-410f-8715-c1ef4c8ab9fb
# ╟─92ce6a5e-0ad3-4905-9d40-f8048acc10af
# ╟─ca1cc38c-da0e-4d64-8fe2-c195f46f88cc
# ╟─d8a8ee9c-b782-4413-b665-b344332216f2
# ╟─a6bbe6a3-145b-498f-ac53-bb9bdf2cd72b
# ╟─4b240b0f-aeb2-43d4-8957-acc77bc1b044
# ╠═22507365-4ef7-4400-a9ba-7e93dc4a5203
# ╠═c51f5256-a278-4ce3-b0cf-7274d174f454
# ╠═2174fcff-76a9-47ab-99fd-662679baf33f
# ╠═7b96f661-a77b-4a40-8269-d14ec887a46a
# ╠═9db70690-4f7b-49a1-b259-a490c0f6787a
# ╠═dc49581c-2e2d-48c2-85f4-3aeeddbae8f0
# ╠═103dcea9-522b-45e0-bbc4-851450a755aa
# ╠═dfdf2ab2-797d-4744-a2ee-379320e120a5
# ╠═0c60b870-e122-4592-b42f-d5b64941d908
# ╠═37c60ab8-f2ef-41c3-8fdd-ecbf6189d625
# ╠═1754fc92-1036-4ce6-b209-f4f5bc75efba
# ╠═4bc44e0c-b2e1-4866-86df-da59331a620e
# ╠═c311334c-eee4-4171-93e3-56aa6e822c9f
# ╠═5481ab40-7e2c-4f35-94a1-90df39e2558f
# ╟─da5b0b05-dc8c-4bca-8b8c-c50b89f0018c
# ╟─d097fbac-2ab5-4e44-b9cc-98a694c2a7fa
# ╟─3918986d-8fcf-41ff-91bc-52e5eb6346c0
# ╟─f471306e-733c-421f-a243-1a0079989dfb
# ╟─33a9b77b-2c02-40de-8072-1164b6614e25
# ╟─be37a3a8-0a69-4b9c-93eb-d4025b2fccea
# ╟─4ee7fe91-2397-45af-865a-c252920bcf59
# ╟─02641c72-1bd8-4855-b169-1e67b7f840c8
# ╟─e09e3174-4b62-4d48-8640-202d1da7fb3f
# ╟─510a5fb5-e96b-44f7-9257-40fbfd4ea191
# ╟─5e4d7f29-974b-4d25-aa7b-8bf827ab1589
# ╟─5272ccd3-959d-4d29-8626-3d83cdb830a7
# ╟─93046ae6-acf3-46fe-b90f-b3731115030d
# ╟─f01338f8-23f0-4c81-9dbc-c1afc3c006f9
# ╟─98bcd301-6c2c-4d0b-8ec3-ca891de91a05
# ╟─66de4f55-61ef-4ef1-bba0-c8733ad6f008
# ╟─dd202daf-e918-4306-a38e-f263ea10a225
# ╟─29a65c5a-479b-4e5b-8471-6d852b11d43b
# ╟─96745057-1360-4bc4-a4af-7fa6734aac26
# ╟─17d6abd2-3f11-4534-b031-8b934c59c583
# ╟─5db0b92d-e1dc-48ad-b434-14f359b58807
# ╟─e434304a-88f6-4ad8-b41a-d44fe38094d3
# ╟─b78ef83e-f960-463f-8981-ef57a10906a0
# ╟─07038e25-aa70-4426-95e8-150868d10c30
# ╟─5e48f296-0fe9-40b0-a238-420907425765
# ╟─6be04797-3732-4034-9a21-bc3cb79ebcde
# ╟─3bce9942-38c0-431c-be82-93ddead7b0c7
# ╠═ca3fd00f-e17a-47d7-920b-df6fde825c90
# ╟─69227b69-01d5-47ba-84cb-50871aa7b056
# ╠═da1776df-0827-483f-b5cf-dc77b279ea0e
# ╟─b79687ef-ad98-4e1f-880a-86b72349f423
# ╟─de5c451d-5af3-4b83-bb1d-7cc1c3b98048
# ╠═f34b3872-9825-4bad-bdca-7da97906a212
# ╟─ea58b610-804b-4c4b-af04-c5411b52c350
# ╟─9dbd6d07-870c-423d-90e0-63214ed1beb9
# ╟─d686c4e1-e9ba-4a34-8eca-03fd531a2cc0
# ╟─f64a5f44-0db6-45f2-91ea-f95035bc0149
# ╠═5318005b-e739-4617-abbf-88e4b69a4428
# ╟─bf530c92-b3ea-4c70-9f08-2c8bc9aca846
# ╟─462047c0-8891-438b-beda-900f7f25dbc5
# ╠═442dab3f-9e22-49c1-a5d3-1c2f7fd592fd
# ╟─ddd61960-90a8-4d90-b151-eba80ce79569
# ╠═cb0740b1-d802-47b5-92b0-c12a79c53026
# ╟─653860b7-79aa-4802-994c-3eb0cdc3b672
# ╠═5434c444-a214-410a-8b01-e31c1a5765a6
# ╟─0c775540-e00a-460a-9d7d-04f2b783981a
# ╟─3cf4dc67-0d27-4198-97bd-0d50d73b7b19
# ╟─af2a2fa0-5ecd-4fab-8651-9ea8c6fa5fb4
# ╟─b750fc45-9547-467f-b37c-fcae7a78aacf
# ╟─b279c66e-92d6-4453-82f1-cfb9acd306c1
# ╟─4db102db-2b38-478a-89b1-80afce55c78b
# ╟─f51e4978-db41-43c1-abc5-635f91b8d618
# ╟─5147b4b4-6445-4623-a049-7dc69e5c5779
# ╟─79a6bcd6-fc17-49c0-b8bb-d4c262d2006a
# ╟─51e514c2-c633-4c11-95a4-f918fcdb0993
# ╟─d55157cb-8476-452c-9766-2e50f1694b7b
# ╟─5e80011f-c44e-4a62-b905-3cc81b1fc1c7
# ╟─1d7d37a2-62f5-4433-a8cc-63e3a392bf99
# ╟─47f5d93b-afb5-484f-91ff-736072cf8166
# ╟─ac43746a-c516-48b5-915c-05df5443c6ac
# ╟─88e903d1-e6e2-4527-b2b1-596c52de9428
# ╟─e4c7a6f5-5fc9-4647-a56f-6aee6bd82783
# ╟─dc597861-e2fc-4744-8c00-624cdad2cc2e
# ╟─1b632b7e-97ea-4f81-9c37-b2915c026295
# ╠═c9faa850-9381-4f28-aff5-87e47ce03f16
# ╟─9da50846-fb1a-4b0a-b215-f0eba1274249

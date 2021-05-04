### A Pluto.jl notebook ###
# v0.14.4

using Markdown
using InteractiveUtils

# ╔═╡ 14ee6589-289a-44b7-ac1d-03691d46cedd
begin
    import Pkg
    # activate a clean environment
    Pkg.activate(mktempdir())

    Pkg.add([
        Pkg.PackageSpec(name="Plots"),
        # ... keep adding your packages
    ])

    using Plots
	using LinearAlgebra
end

# ╔═╡ 5f6c2288-b320-4fd4-9b52-f1c7ef78f980
md"# Calculus III Final Exam Review

This notebook contains a set of review problem solutions for the Temple University's Calculus III final exam using the textbook *Calculus: Early Transcendentals, 8th Edition* by James Stewart.

The following chapters are covered in the finals:

- 12: Vectors and the Geometry of Space
- 13: Vector Functions
- 14: Partial Derivatives
- 15: Multiple Integrals
- 16: Vector Calculus

The sections covered in the finals follow this order:
- 12.2 Vectors
- 12.3 The Dot Product
- 12.4 The Cross Product
- 12.5 Equations of Lines and Planes
- 13.3 Arc Length and Curvature
- 16.2 Line Integrals
- 14.6 Directional Derivatives and the Gradient Vector
- 15.2 Double Integrals over General Regions
- 15.3 Double Integrals in Polar Coordinates
- 15.7 Triple Integrals in Cylindrical Coordinates
- 15.8 Triple Integrals in Spherical Coordinates
- 16.3 The Fundamental Theorem for Line Integrals
- 16.4 Green's Theorem
- 16.5 Curl and Divergence
- 16.7 Surface Integral
- 16.8 Stoke's Theorem"

# ╔═╡ f7e71fd5-ffa6-4568-96b8-31c253f8f472
md"## 12.2 Vectors"

# ╔═╡ 9f50fd28-ff2f-4a59-84f7-0486c66d0cce
md"### Problem 12.2 #4

Write each combination of vectors as a single vector.

a. $\overrightarrow{AB} + \overrightarrow{BC}$

b. $\overrightarrow{CD} + \overrightarrow{DB}$

c. $\overrightarrow{DB} - \overrightarrow{AB}$

d. $\overrightarrow{DC} + \overrightarrow{CA} + \overrightarrow{AB}$
"

# ╔═╡ 2dd37e1d-4456-495e-8795-afc166161881
md"
a. $\overrightarrow{AB} + \overrightarrow{BC} = \overrightarrow{AC}$

b. $\overrightarrow{CD} + \overrightarrow{DB} = \overrightarrow{CB}$

c. $\overrightarrow{DB} - \overrightarrow{AB} = \overrightarrow{DA}$

d. $\overrightarrow{DC} + \overrightarrow{CA} + \overrightarrow{AB} = \overrightarrow{DB}$
"

# ╔═╡ 238a97bf-4f22-4a4a-8e82-adf98027f98a
md"### Problem 12.2 #25
Find a unit vector that has the same direction as the given vector.

$$8\mathbf{i} - \mathbf{j} + 4\mathbf{k}$$
"

# ╔═╡ 093bbbab-17ac-4f9e-86f0-6bab0249e303
md"
$$\begin{align*}
\mathbf{u} &= \mathbf{v} \cdot \frac{1}{\sqrt{\sum_{i=1} (\mathbf{v}_i)^2}} \\
&= \frac{8\mathbf{i} - \mathbf{j} + 4\mathbf{k}}{\sqrt{(8)^2 + (-1)^2 + (4)^2}} \\
&= \frac{8\mathbf{i} - \mathbf{j} + 4\mathbf{k}}{\sqrt{64 + 1 + 16}} \\
&= \frac{8\mathbf{i} - \mathbf{j} + 4\mathbf{k}}{\sqrt{81}} \\
&= \frac{8\mathbf{i} - \mathbf{j} + 4\mathbf{k}}{9} \\
&= \frac{8}{9}\mathbf{i} - \frac{1}{9}\mathbf{j} + \frac{4}{9}\mathbf{k}
\end{align*}$$
"

# ╔═╡ 4fb5101c-eaf3-412e-a768-06d81f645ac4
let
	v = [8, -1, 4]
	u = v // Int(sqrt(sum(v .^ 2)))
end

# ╔═╡ 66603ad8-a94f-4c6d-9cb3-7d09c301d2c8
md"### Problem 12.2 #26

Find the vector that has the same direction as $\langle 6, 2, -3\rangle$ but has length 4.
"

# ╔═╡ 68112941-d05d-404c-abad-10518444eabb
md"
$$\begin{align*}
\vec{u} &= \mathbf{v} \cdot \frac{1}{\sqrt{\sum_{i=1} (v_i)^2}} \\
&= \frac{6\mathbf{i} + 2\mathbf{j} - 3\mathbf{k}}{\sqrt{(6)^2 + (2)^2 + (-3)^2}} \\
&= \frac{6\mathbf{i} + 2\mathbf{j} - 3\mathbf{k}}{\sqrt{36 + 4 + 9}} \\
&= \frac{6\mathbf{i} + 2\mathbf{j} - 3\mathbf{k}}{\sqrt{49}} \\
&= \frac{6\mathbf{i} + 2\mathbf{j} - 3\mathbf{k}}{7} \\
&= \frac{6}{7}\mathbf{i} + \frac{2}{7}\mathbf{j} - \frac{3}{7}\mathbf{k}
\end{align*}$$

$$4\vec{u} = \frac{24}{7}\mathbf{i} + \frac{8}{7}\mathbf{j} - \frac{12}{7}\mathbf{k}$$"

# ╔═╡ a6bc4af6-4888-4aaa-88c0-2b0a261e47c8
let
	v = [6, 2, -3]
	u = v // Int(sqrt(sum(v .^2 )))
	
	4u
end

# ╔═╡ e731447f-9f13-4af7-aba8-70aa163d62f5
md"## 12.3 The Dot Product"

# ╔═╡ cd4c10da-dfb5-4f95-b316-8712ce23dd0c
md"### Problem 12.3 #5

Find $\mathbf{a} \cdot \mathbf{b}$.

$$\mathbf{a} = \left\langle 4, 1, \frac{1}{4} \right\rangle, \quad \mathbf{b} = \langle 6, -3, -8 \rangle$$

$$\begin{align*}
\mathbf{a} \cdot \mathbf{b} &= (4)(6) + (1)(-3) + \left(\frac{1}{4}\right)(-8) \\
&= 24 - 3 - 2 \\
&= 19
\end{align*}$$
"

# ╔═╡ 1f71abb4-1032-41d4-9799-90d5bdb95a28
let
	a = [4, 1, 1//4]
	b = [6, -3, -8]
	
	dot(a, b)
end

# ╔═╡ 2b9fa050-5baa-4206-bda9-2acb4a60b3fd
md"### Problem 12.3 #9

Find $\mathbf{a} \cdot \mathbf{b}$.

$$|\mathbf{a}| = 7, \quad |\mathbf{b}| = 4, \quad \text{the angle between } \mathbf{a} \text{ and } \mathbf{b} \text{ is } 30^{\circ}.$$

$$\begin{align*}
\mathbf{a} \cdot \mathbf{b} &= |\mathbf{a}||\mathbf{b}| \cos{\theta} \\
&= (7)(4) \cos{30^{\circ}} \\
&= 28 \cdot \frac{\sqrt{3}}{2} \\
&= 14 \sqrt{3}
\end{align*}$$
"

# ╔═╡ 4cc5f9d3-951f-4186-afa9-3c7ab4926049
let
	a = 7
	b = 4
	θ = 30
	
	a * b * cosd(θ)
end

# ╔═╡ 1bf47f6c-bb25-4dcf-baf1-c8a6c3d84e11
md"### Problem 12.3 #64

Show that if $\mathbf{u} + \mathbf{v}$ and $\mathbf{u} - \mathbf{v}$ are orthogonal, then the vectors $\mathbf{u}$ and $\mathbf{v}$ must have the same length.

$$\begin{align*}
(\mathbf{u} + \mathbf{v}) \cdot (\mathbf{u} - \mathbf{v}) &= 0 \\
\mathbf{u} = \pm \mathbf{v} &\implies |\mathbf{u}| = |\mathbf{v}|
\end{align*}$$
"

# ╔═╡ 62600947-7eef-4654-8216-5c1610a8a986
md"## 12.4 The Cross Product"

# ╔═╡ 75bf76f9-e3b3-44c2-af0b-1cf3871ed196
md"### Problem 12.4 #5

Find the cross product $\mathbf{a} \times \mathbf{b}$ and verify that it is orthogonal to both $\mathbf{a}$ and $\mathbf{b}$.

$$\mathbf{a} = \frac{1}{2} \mathbf{i} + \frac{1}{3} \mathbf{j} + \frac{1}{4} \mathbf{k}, \quad \mathbf{b} = \mathbf{i} + 2\mathbf{j} - 3\mathbf{k}$$
"

# ╔═╡ 4c6612cd-7409-450c-9823-619a005f1a8c
md"
$$\begin{align*}
\mathbf{a} \times \mathbf{b} &= \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ \frac{1}{2} & \frac{1}{3} & \frac{1}{4} \\ 1 & 2 & -3 \end{vmatrix} \\
&= \mathbf{i} \begin{vmatrix} \frac{1}{3} & \frac{1}{4} \\ 2 & -3 \end{vmatrix} - \mathbf{j} \begin{vmatrix} \frac{1}{2} & \frac{1}{4} \\ 1 & -3 \end{vmatrix} + \mathbf{k} \begin{vmatrix} \frac{1}{2} & \frac{1}{3} \\ 1 & 2 \end{vmatrix} \\
&= \left[\left(\frac{1}{3}\right)(-3) - \left(\frac{1}{4}\right)(2)\right] \mathbf{i} - \left[\left(\frac{1}{2}\right)(-3) - \left(\frac{1}{4}\right)(1)\right] \mathbf{j} + \left[\left(\frac{1}{2}\right)(2) - \left(\frac{1}{3}\right)(1)\right] \mathbf{k} \\
&= \left(-1 - \frac{1}{2}\right) \mathbf{i} - \left(-\frac{3}{2} - \frac{1}{4}\right) \mathbf{j} + \left(1 - \frac{1}{3}\right) \mathbf{k} \\
&= -\frac{3}{2} \mathbf{i} + \frac{7}{4} \mathbf{j} + \frac{2}{3} \mathbf{k}
\end{align*}$$

$$\begin{align*}
(\mathbf{a} \times \mathbf{b}) \cdot \mathbf{a} &= \left(-\frac{3}{2}\right)\left(\frac{1}{2}\right) + \left(\frac{7}{4}\right)\left(\frac{1}{3}\right) + \left(\frac{2}{3}\right)\left(\frac{1}{4}\right) \\
&= -\frac{9}{12} + \frac{7}{12} + \frac{2}{12} \\
&= 0
\end{align*}$$

$$\begin{align*}
(\mathbf{a} \times \mathbf{b}) \cdot \mathbf{b} &= \left(-\frac{3}{2}\right)(1) + \left(\frac{7}{4}\right)(2) + \left(\frac{2}{3}\right)(-3) \\
&= -\frac{3}{2} + \frac{7}{2} - 2 \\
&= 0
\end{align*}$$
"

# ╔═╡ 2a2851c9-6f75-4593-a18b-95bf03b0ce32
let
	a = [1//2, 1//3, 1//4]
	b = [1, 2, -3]
	
	n = cross(a, b)
	n, dot(n, a), dot(n, b)
end

# ╔═╡ cde8ecb5-1030-4ec2-beb5-c1534d4204de
md"### Problem 12.4 #11

Find the vector, not with determinants, but by using properties of cross products.

$$(\mathbf{j} - \mathbf{k}) \times (\mathbf{k} - \mathbf{i})$$
"

# ╔═╡ f969c661-2d88-4a3c-aedd-d828ba8b43da
md"
$$\begin{align*}
\mathbf{i} \times \mathbf{j} &= \mathbf{k} \\
\mathbf{j} \times \mathbf{k} &= \mathbf{i} \\
\mathbf{k} \times \mathbf{i} &= \mathbf{j}
\end{align*}$$

$$\begin{align*}
(\mathbf{j} - \mathbf{k}) \times (\mathbf{k} - \mathbf{i}) &= \mathbf{j} \times \mathbf{k} - \mathbf{j} \times \mathbf{i} - \mathbf{k} \times \mathbf{k} + \mathbf{k} \times \mathbf{i} \\
&= \mathbf{i} + \mathbf{k} - \mathbf{0} + \mathbf{j} \\
&= \mathbf{i} + \mathbf{j} + \mathbf{k}
\end{align*}$$
"

# ╔═╡ 0838ea68-9acb-4d42-8480-59480ac7ef64
let
	a = [0, 1, 0] - [0, 0, 1]
	b = [0, 0, 1] - [1, 0, 0]
	
	cross(a, b)
end

# ╔═╡ 8db6595d-9c05-49fe-8f49-e4c075c5f2bf
md"### Problem 12.4 #14

Find $|\mathbf{u} \times \mathbf{v}|$ and determine whether $|\mathbf{u} \times \mathbf{v}|$ is directed into the page or out of the page.
"

# ╔═╡ ceb806dc-2105-4449-9dc9-c88ebb6158d4
md"
$$|\mathbf{u}| = 4, \quad |\mathbf{v}| = 5, \quad \theta = 45^{\circ}$$

$$\begin{align*}
|\mathbf{u} \times \mathbf{v}| &= |\mathbf{u}||\mathbf{v}| \sin{\theta} \\
&= (4)(5) \sin{45^{\circ}} \\
&= 20 \cdot \frac{\sqrt{2}}{2} \\
&= 10 \sqrt{2} \quad \text{(Out of the page)}
\end{align*}$$
"

# ╔═╡ a40f3b0a-9ccd-48be-8330-7a1d60c7eb13
let
	u = 4
	v = 5
	θ = 45
	
	v * u * sind(θ)
end

# ╔═╡ c7370c22-bee4-4641-a8b6-d62a08de3627
md"### Problem 12.4 #15

Find $|\mathbf{u} \times \mathbf{v}|$ and determine whether $|\mathbf{u} \times \mathbf{v}|$ is directed into the page or out of the page.

$$|\mathbf{u}| = 12, \quad |\mathbf{v}| = 16, \quad \theta = 120^{\circ}$$
"

# ╔═╡ 7caf8973-2a2f-4c4d-b6a0-ab7b17053495
md"
$$\begin{align*}
|\mathbf{u} \times \mathbf{v}| &= |\mathbf{u}||\mathbf{v}|\sin{\theta} \\
&= (12)(16) \sin{120^{\circ}} \\
&= 192 \cdot \frac{\sqrt{3}}{2} \\
&= 96 \sqrt{3} \quad \text{(Into the page)}
\end{align*}$$
"

# ╔═╡ 8d6918c6-f76c-45fe-9219-33d0d4360c07
let
	u = 12
	v = 16
	θ = 120
	
	u * v * sind(θ)
end

# ╔═╡ 5b8adf14-640e-46f8-a757-f952db4c08fc
md"### Problem 12.4 #29

a. Find a nonzero vector orthogonal to the plane through points $P$, $Q$, and $R$, and

b. find the area of triangle $PQR$.

$$P(1,0,1), \quad Q(-2,1,3), \quad R(4,2,5)$$
"

# ╔═╡ d0495207-af73-41ba-9518-56774c606418
let
	P = (1,0,1)
	Q = (-2,1,3)
	R = (4,2,5)
	Δ = [P,Q,R,P]
	plot(Δ, color = :black, lw = 2, legend = false, size = (300,300))
	scatter!(Δ, color = :black, xticks=[1,-2,4], yticks=[0,1,2], zticks=[1,3,5])
end

# ╔═╡ bc30141d-9798-411a-a1bf-6acd951603b4
md"
$$\begin{align*}
\overrightarrow{PQ} &= Q - P = (-2, 1, 3) - (1, 0, 1) = \langle -3, 1, 2 \rangle \\
\overrightarrow{PR} &= R - P = (4, 2, 5) - (1, 0, 1) = \langle 3, 2, 4 \rangle
\end{align*}$$
"

# ╔═╡ 6201b777-8a0b-474d-895b-52fb0d52a917
md"
#### Part (a)

$$\begin{align*}
\mathbf{n} &= \overrightarrow{PQ} \times \overrightarrow{PR} \\
&= \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ -3 & 1 & 2 \\ 3 & 2 & 4 \end{vmatrix} \\
&= ((1)(4) - (2)(2)) \mathbf{i} + ((2)(3) - (-3)(4)) \mathbf{j} + ((-3)(2) - (1)(3)) \mathbf{k} \\
&= (4 - 4) \mathbf{i} + (6 + 12) \mathbf{j} + (-6 - 3) \mathbf{k} \\
&= 18 \mathbf{j} - 9 \mathbf{k}
\end{align*}$$
"

# ╔═╡ 6672cacf-8f19-4f64-b58a-94cde4a17b60
md"
#### Part (b)

$$\begin{align*}
\text{Area } PQR = \frac{1}{2} \|\mathbf{n}\| &= \frac{1}{2} \sqrt{(18)^2 + (9)^2} \\
&= \frac{1}{2} \sqrt{324 + 81} \\
&= \frac{1}{2} \sqrt{405} \\
&= \frac{1}{2} \sqrt{81 \cdot 5} \\
&= \frac{9}{2} \sqrt{5}
\end{align*}$$
"

# ╔═╡ f9098bcd-24bb-4369-8e51-47baa3f31d2b
let
	P = [1, 0, 1]
	Q = [-2, 1, 3]
	R = [4, 2, 5]
	PQ = Q - P
	PR = R - P
	
	n = cross(PQ, PR)
	A = 1/2 * sqrt(sum(n .^2))
	
	n, A
end

# ╔═╡ 8faba606-3883-4daf-8482-14bde8f8ff81
md"### Problem 12.4 #31

a. Find a nonzero vector orthogonal to the plane through points $P$, $Q$, and $R$, and

b. find the area of triangle $PQR$.

$$P(0,-2,0), \quad Q(4,1,-2), \quad R(5,3,1)$$
"

# ╔═╡ 4a3c0bf7-a947-4868-9886-a2a5ba0f21af
let
	P = (0,-2,0)
	Q = (4,1,-2)
	R = (5,3,1)
	Δ = [P,Q,R,P]
	
	plot(Δ, color = :black, lw = 2, legend = false, size = (300, 300))
	scatter!(Δ, color = :black, xticks=[0,4,5], yticks=[-2,1,3], zticks=[0,-2,1])
end

# ╔═╡ ba19efea-42ab-4c2c-b40c-d9a50503e9f6
md"
$$\begin{align*}
\overrightarrow{PQ} &= Q - P = (4, 1, -2) - (0, -2, 0) = \langle 4, 3, -2 \rangle \\
\overrightarrow{PR} &= R - P = (5, 3, 1) - (0, -2, 0) = \langle 5, 5, 1 \rangle
\end{align*}$$
"

# ╔═╡ e4cbd3cb-117b-4a93-bc62-0d16ad842a30
md"
#### Part (a)

$$\begin{align*}
\mathbf{n} &= \overrightarrow{PQ} \times \overrightarrow{PR} \\
&= \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ 4 & 3 & -2 \\ 5 & 5 & 1 \end{vmatrix} \\
&= ((3)(1) - (-2)(5)) \mathbf{i} + ((-2)(5) - (4)(1)) \mathbf{j} + ((4)(5) - (3)(5)) \mathbf{k} \\
&= (3 + 10) \mathbf{i} + (-10 - 4) \mathbf{j} + (20 - 15) \mathbf{k} \\
&= 13 \mathbf{i} - 14 \mathbf{j} + 5 \mathbf{k}
\end{align*}$$
"

# ╔═╡ 58a898eb-f5dc-4f63-a335-06de60ede3b1
md"
#### Part (b)

$$\begin{align*}
\text{Area } PQR = \frac{1}{2} \|\mathbf{n}\| &= \frac{1}{2} \sqrt{(13)^2 + (-14)^2 + (5)^2} \\
&= \frac{1}{2} \sqrt{169 + 196 + 25} \\
&= \frac{1}{2} \sqrt{390}
\end{align*}$$
"

# ╔═╡ f67d06c4-3c7a-4087-864f-7e51c226eb14
let
	P = [0, -2, 0]
	Q = [4, 1, -2]
	R = [5, 3, 1]
	PQ = Q - P
	PR = R - P
	
	n = cross(PQ, PR)
	A = 1/2 * sqrt(sum(n .^ 2))
	
	n, A
end

# ╔═╡ e26ac061-5bb8-438b-a06d-378b2c9389ac
md"## 12.5 Equations of Lines and Planes"

# ╔═╡ e5a9edfd-1256-4a77-814e-0d90c86a616a
md"### Problem 12.5 #11

Find the parametric equations and symmetric equations for the line through $(-6, 2, 3)$ and parallel to the line $\frac{1}{2} x = \frac{1}{3} y = z + 1$.
"

# ╔═╡ 2e39de76-3bc2-4807-bcfa-70d7bee662f0
md"
$$\begin{align*}
\frac{1}{2} x = t &\implies x = 2t \\
\frac{1}{3} y = t &\implies y = 3t \\
z + 1 = t &\implies z = t - 1 \\
\mathbf{v} = \langle a, b, c \rangle &= \langle 2, 3, 1 \rangle
\end{align*}$$

#### Parametric equations

$$\begin{align*}
x &= -6 + 2t \\
y &= 2 + 3t \\
z &= 3 + t
\end{align*}$$

#### Symmetric equations

$$\frac{x + 6}{2} = \frac{y - 2}{3} = z - 3$$
"

# ╔═╡ 7d89ee9b-e1d7-4859-a671-35c3f16603a7
md"### Problem 12.5 #16

a. Find parametric equations for the line through $(2, 4, 6)$ that is perpendicular to the plane $x - y + 3z = 7$.

b. In what points does this line intersect the coordinate planes?
"

# ╔═╡ 8e3ed165-62ee-47f5-a5f8-a56820ef63b2
let
	N = 100
		
	t = range(-2, 4, length = N)
	
	# Line
	x = @. 2 + t
	y = @. 4 - t
	z = @. 6 + 3t
	
	# Plane
	f(x, y) = (7 - x + y) / 3
	
	gr()
	plot(legend=false,xticks=[x[1],0,x[end]], yticks=[y[1],0,y[end]], zticks=floor.([z[1],0,z[end]]), size=(400,400))
	
	plot!(x, y, z, color = :black, lw = 2, legend=false)
	# surface!(x, y, f, color = :grays)

	t = range(-2, 4, length = N)
	x = @. 2 + t
	y = @. 4 - t
	z = @. 6 + 3t
	
	plot!(x, y, z, color = :black, lw = 2)
	P = [
		(0, 6, 0)
		(6, 0, 18)
		]
	scatter!(P, color = :black)
end

# ╔═╡ 193b5afd-4db6-43e8-b658-bdfb2c4d933d
md"
#### Part (a)

$$\begin{align*}
x &= 2 + t \\
y &= 4 - t \\
z &= 6 + 3t
\end{align*}$$
"

# ╔═╡ 29444c84-28a0-4a19-9f44-4e747e012343
md"
#### Part (b)

$$\begin{align*}
x = 0 &= 2 + t \implies t = -2 \\
x &= 2 + (-2) = 0 \\
y &= 4 - (-2) = 6 \\
z &= 6 + 3(-2) = 0
\end{align*}$$

$$\begin{align*}
y = 0 &= 4 - t \implies t = 4 \\
x &= 2 + (4) = 6 \\
y &= 4 - (4) = 0 \\
z &= 6 + 3(4) = 18
\end{align*}$$

$$z = 0 = 6 + 3t \implies t = -2$$

The line intersects the coordinate planes at the points $(0, 6, 0)$ and $(6, 0, 18)$.
"

# ╔═╡ e8464c0f-f7cf-4d00-8197-a0aeda6872d9
let
	P = [2, 4, 6]
	v = [1, -1, 3]
	x(t) = P[1] + v[1] * t
	y(t) = P[2] + v[2] * t
	z(t) = P[3] + v[3] * t
	
	t1 = -2
	t2 = 4
	p1 = [x(t1), y(t1), z(t1)]
	p2 = [x(t2), y(t2), z(t2)]
	p1, p2
end

# ╔═╡ c2567bc8-01e4-498f-93ee-3a10fcaa52ff
md"### Problem 12.5 #26

Find an equation of the plane through the point $(2, 0, 1)$ and perpendicular to the line $x = 3t$, $y = 2 - t$, $z = 3 + 4t$.

$$\begin{align*}
p &= (x_0, y_0, z_0) = (2, 0, 1) \\
\mathbf{v} &= \langle a, b, c \rangle = \langle 3, -1, 4 \rangle \\
0 &= a(x - x_0) + b(y - y_0) + c(z - z_0) \\
0 &= (3)(x - 2) + (-1)(y - 0) + (4)(z - 1) \\
0 &= 3x - 6 - y + 4z - 4 \\
10 &= 3x - y + 4z
\end{align*}$$
"

# ╔═╡ 297b9b83-0870-4276-aebf-a70ffb8cf27b
md"### Problem 12.5 #31

Find an equation of the plane through the points $(0, 1, 1)$, $(1, 0, 1)$, and $(1, 1, 0)$.
"

# ╔═╡ 2b764b0f-2202-4c2c-bfdc-4d7b26cf9ed5
md"
$$\begin{align*}
\mathbf{u} &= (1, 0, 1) - (0, 1, 1) = \langle 1, -1, 0 \rangle \\
\mathbf{v} &= (1, 1, 0) - (0, 1, 1) = \langle 1, 0, -1 \rangle \\
\mathbf{n} &= \mathbf{u} \times \mathbf{v} = ((-1)(-1) - (0)(0)) \mathbf{i} + ((0)(1) - (1)(-1)) \mathbf{j} + ((1)(0) - (-1)(1)) \mathbf{k} \\
\mathbf{n} &= \mathbf{u} \times \mathbf{v} = \mathbf{i} + \mathbf{j} + \mathbf{k}
\end{align*}$$

$$\begin{align*}
(x - 0) + (y - 1) + (z - 1) &= 0 \\
x + y + z &= 2
\end{align*}$$
"

# ╔═╡ 7c01afa2-baf7-43c5-b28a-1b6d5308ddbc
md"### Problem 12.5 #45

Find the point at which the line intersects the given plane.

$$x = 2 - 2t, \quad y = 3t, \quad z = 1 + t; \quad x + 2y - z = 7$$
"

# ╔═╡ abb03e4f-0370-4a06-9fda-587a44464a14
md"
$$\begin{align*}
x + 2y - z &= 7 \\
(2 - 2t) + 2(3t) - (1 + t) &= 7 \\
2 - 2t + 6t - 1 - t &= 7 \\
3t &= 6 \\
t &= 2
\end{align*}$$

$$\begin{align*}
x &= 2 - 2(2) = 2 - 4 = -2 \\
y &= 3(2) = 6 \\
z &= 1 + (2) = 3
\end{align*}$$

The line intersects the plane at the point $(-2, 6, 3)$.
"

# ╔═╡ 4f5fa3c4-847f-4035-ab1d-5b2557394578
md"### Problem 12.5 #46
Find the point at which the line intersects the given plane.

$$x = t - 1, \quad y = 1 + 2t, \quad z = 3 - t; \quad 3x - y + 2z = 5$$
"

# ╔═╡ 38ee4f3c-c96b-4185-8b9d-5e7d730ddb1f
let
	N = 100
		
	t = range(-6, 0, length = N)
	
	# Line
	x = @. t - 1
	y = @. 1 + 2t
	z = @. 3 - t
	
	# Plane
	f(x, y) = (5 - 3x + y) / 2
	
	plot(legend=false,xticks=[x[1],x[end]], yticks=[y[1],y[end]], zticks=[z[1],z[end]], size=(400,400))
	
	plot!(x, y, z, color = :black, lw = 2, legend=false)
	surface!(x, y, f, color = :grays)

	t = range(-6, -3, length = N)
	x = @. t - 1
	y = @. 1 + 2t
	z = @. 3 - t
	
	plot!(x, y, z, color = :black, lw = 2)
	scatter!([-4], [-5], [6], color = :black)
end

# ╔═╡ 7c12c192-add9-425d-a7ee-d1a7bba3d46c
md"
$$\begin{align*}
3x - y + 2z &= 5 \\
3(t - 1) - (1 + 2t) + 2(3 - t) &= 5 \\
3t - 3 - 1 - 2t + 6 - 2t &= 5 \\
-t + 2 &= 5 \\
t &= -3
\end{align*}$$

$$\begin{align*}
x &= (-3) - 1 = -4 \\
y &= 1 + 2(-3) = -5 \\
z &= 3 - (-3) = 6
\end{align*}$$

The line intersects the plane at the point $(-4, -5, 6)$.
"

# ╔═╡ ca141cff-259c-4b1d-b57a-25237176e20c
md"## 13.3 Arc Length and Curvature"

# ╔═╡ f2c4989b-f81a-4db4-9f5b-2fd9d0d69c96
md"### Problem 13.3 #3

Find the length of the curve.

$$\mathbf{r}(t) = \sqrt{2} t \mathbf{i} + e^t \mathbf{j} + e^{-t} \mathbf{k}, \quad 0 \leq t \leq 1$$
"

# ╔═╡ 9ae97aa3-7bc3-438b-8dfe-a77a7b7d0ec6
let
	N = 100
	t = range(0, 1, length = N)
	x = sqrt(2) .* t
	y = exp.(t)
	z = exp.(-t)
	
	plot(x, y, z, color = :black, lw = 2, xticks = [floor(x[1]), floor(x[end])], yticks = [floor(y[1]), floor(y[end])], zticks = [floor(z[1]), floor(z[end])], legend = false, size = (300,300))
end

# ╔═╡ 6b904629-f36c-4bc2-9ab0-e7e31a80e0e9
md"
$$L = \int_a^b |\mathbf{r}'(t)| \;dt$$

$$\mathbf{r}'(t) = \sqrt{2} \mathbf{i} + e^t \mathbf{j} - e^{-t} \mathbf{k}$$

$$\begin{align*}
|\mathbf{r}'(t)| &= \sqrt{(\sqrt{2})^2 + (e^t)^2 + (-e^{-t})^2} \\
&= \sqrt{2 + e^{2t} + e^{-2t}} \\
&= \sqrt{(e^t + e^{-t})^2} \\
&= e^t + e^{-t}
\end{align*}$$

$$\begin{align*}
L &= \int_0^1 e^t + e^{-t} \;dt \\
&= e^t - e^{-t} \Big|_0^1 \\
&= (e^{(1)} - e^{-(1)}) - (e^{(0)} - e^{-(0)}) \\
&= e - \frac{1}{e}
\end{align*}$$
"

# ╔═╡ a0483473-3183-4319-b318-786db82fa4c2
md"### Problem 13.3 #14

Find the arc length function for the curve measured from the point $P$ in the direction of increasing $t$ and then reparameterize the curve with respect to arc length starting from $P$.

$$\mathbf{r}(t) = e^t \sin{t} \mathbf{i} + e^t \cos{t} \mathbf{j} + \sqrt{2} e^t \mathbf{k}, \; P(0, 1, \sqrt{2})$$
"

# ╔═╡ 4d29a175-1197-432c-b977-b2f18b63e9de
md"
$$s(t) = \int_a^t |\mathbf{r}'(u)| \;du$$

$$e^t \sin{t} = 0 \implies t = 0 \implies a = 0$$

$$\begin{align*}
\mathbf{r}'(t) &= (e^t \cos{t} + e^t \sin{t}) \mathbf{i} + (-e^t \sin{t} + e^t \cos{t}) \mathbf{j} + \sqrt{2} e^t \mathbf{k} \\
&= e^t (\sin{t} + \cos{t}) \mathbf{i} + e^t (\cos{t} - \sin{t}) \mathbf{j} + \sqrt{2} e^t \mathbf{k} \\
|\mathbf{r}'(t)| &= \sqrt{e^{2t} (\sin{t} + \cos{t})^2 + e^{2t} (\cos{t} - \sin{t})^2 + 2e^{2t}} \\
&= e^t \sqrt{(\sin{t} + \cos{t})(\sin{t} + \cos{t}) + (\cos{t} - \sin{t})(\cos{t} - \sin{t}) + 2} \\
&= e^t \sqrt{\sin^2{t} + 2 \sin{t} \cos{t} + \cos^2{t} + \cos^2{t} - 2 \sin{t} \cos{t} + \sin^2{t} + 2} \\
&= e^t \sqrt{4} \\
&= 2e^t
\end{align*}$$

$$\begin{align*}
s = s(t) &= \int_0^t 2e^u \;du \\
&= 2e^u \Big|_0^t \\
&= 2(e^t - 1)
\end{align*}$$

$$\begin{align*}
s &= 2(e^t - 1) \\
\frac{s}{2} &= e^t - 1 \\
e^t &= \frac{s}{2} + 1 \\
t &= \ln{\left(\frac{s}{2} + 1\right)} \\
\mathbf{r}(t(s)) &= \left(\frac{s}{2} + 1\right) \sin{\left[\ln{\left(\frac{s}{2} + 1\right)}\right]} \mathbf{i} + \left(\frac{s}{2} + 1\right) \cos{\left[\ln{\left(\frac{s}{2} + 1\right)}\right]} \mathbf{j} + \sqrt{2} \left(\frac{s}{2} + 1\right) \mathbf{k}
\end{align*}$$
"

# ╔═╡ 949a99f5-75e1-4af1-9235-d09b614dad40
md"## 16.2 Line Integrals"

# ╔═╡ d40cb6cc-962e-4f8f-b45c-bab2a0ec142d
md"### Problem 16.2 #9

Evaluate the line integral, where $C$ is the given curve.

$$\int_C x^2 y \;ds, \quad C: \; x = \cos{t}, \; y = \sin{t}, \; z = t, \; 0 \leq t \leq \pi / 2$$
"

# ╔═╡ 0f6cf9a2-6f9c-4d90-a6e8-84d6bfce5021
md"
$$\frac{dx}{dt} = -\sin{t}, \; \frac{dy}{dt} = \cos{t}, \; \frac{dz}{dt} = 1$$

$$\begin{align*}
\int_C x^2 y \;ds &= \int_a^b f(x(t), y(t), z(t)) \sqrt{\left(\frac{dx}{dt}\right)^2 + \left(\frac{dy}{dt}\right)^2 + \left(\frac{dz}{dt}\right)^2} \\
&= \int_0^{\pi / 2} \cos^2{t} \sin{t} \sqrt{(-\sin{t})^2 + (\cos{t})^2 + (1)^2} \\
&= \int_0^{\pi / 2} \cos^2{t} \sin{t} \sqrt{\sin^2{t} + \cos^2{t} + 1} \\
&= \sqrt{2} \int_0^{\pi / 2} \cos^2{t} \sin{t}
\end{align*}$$

$$\begin{align*}
u &= \cos{t} \\
du &= -\sin{t} \;dt \\
\int_0^{\pi / 2} &\to \int_1^0 = -\int_0^1
\end{align*}$$

$$\begin{align*}
\int_C x^2 y \;ds &= \sqrt{2} \int_0^1 u^2 \;du \\
&= \sqrt{2} \left[\frac{1}{3} u^3\right]_0^1 \\
&= \frac{\sqrt{2}}{3}
\end{align*}$$
"

# ╔═╡ af668f6a-d01e-4a5c-a95a-159aa65c181e
md"### Problem 16.2 #12

Evaluate the line integral, where $C$ is the given curve.

$$\int_C (x^2 + y^2 + z^2) \;ds, \; C: \; x = t, \; y = \cos{2t}, \; z = \sin{2t}, \; 0 \leq t \leq 2\pi$$
"

# ╔═╡ ffe2bb96-00d8-4345-bb8a-5997eef309b5
md"
$$\frac{dx}{dt} = 1, \; \frac{dy}{dt} = -2 \sin{2t}, \; \frac{dz}{dt} = 2 \cos{2t}$$

$$\begin{align*}
\int_C (x^2 + y^2 + z^2) \;ds &= \int_0^{2\pi} f(x(t), y(t), z(t)) \sqrt{\left(\frac{dx}{dt}\right)^2 + \left(\frac{dy}{dt}\right)^2 + \left(\frac{dz}{dt}\right)} \;dt \\
&= \int_0^{2\pi} (t^2 + \cos^2{2t} + \sin^2{2t}) \sqrt{(1)^2 + (-2\sin{2t})^2 + (2\cos{2t})^2} \;dt \\
&= \int_0^{2\pi} (t^2 + 1) \sqrt{1 + 4 \sin^2{2t} + 4 \cos^2{2t}} \;dt \\
&= \int_0^{2\pi} (t^2 + 1) \sqrt{5} \;dt \\
&= \sqrt{5} \left[\frac{1}{3} t^3 + t\right]_0^{2\pi} \\
&= \sqrt{5} \left[\frac{1}{3} (2\pi)^3 + (2\pi)\right] \\
&= \sqrt{5} \left(\frac{8\pi^3}{3} + 2\pi\right)
\end{align*}$$
"

# ╔═╡ 6c62b3c4-fe35-493b-a035-4bae3e102c0d
md"## 14.6 Directional Derivatives and the Gradient Vector"

# ╔═╡ f62c5833-183e-4489-8b72-f6ca737379cb
md"### Problem 14.6 #7

a. Find the gradient of $f$.

b. Evaluate the gradient at the point $P$.

c. Find the rate of change of $f$ at $P$ in the direction of the vector $\mathbf{u}$.

$$f(x, y) = x / y, \; P(2, 1), \; \mathbf{u} = \frac{3}{5} \mathbf{i} + \frac{4}{5} \mathbf{j}$$"

# ╔═╡ beaaec6a-b969-4ee4-aef8-e4d7216f76b3
md"
$$\begin{align*}
\frac{\partial f}{\partial x} &= \frac{\partial}{\partial x} (x / y) = \frac{1}{y} \\
\frac{\partial f}{\partial y} &= \frac{\partial}{\partial y} (x / y) = -\frac{x}{y^2}
\end{align*}$$
"

# ╔═╡ 2cb45bab-a780-4950-bc7e-32806f458196
md"#### Part (a)
$$\nabla f = \left\langle \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y} \right\rangle = \left\langle \frac{1}{y}, -\frac{x}{y^2} \right\rangle$$
"

# ╔═╡ a9d9bd65-e122-4671-a3c7-f8a4963286a9
md"#### Part (b)
$$\nabla f(P) = \nabla f(2, 1) = \left\langle \frac{1}{(1)}, -\frac{(2)}{(1)^2} \right\rangle = \langle 1, -2 \rangle$$
"

# ╔═╡ dac6411b-c8d8-4786-a08b-764c6a610d75
md"#### Part (c)

$$\begin{align*}
\nabla f(P) \cdot \mathbf{u} &= (\mathbf{i} - 2 \mathbf{j}) \cdot \left(\frac{3}{5} \mathbf{i} + \frac{4}{5} \mathbf{j}\right) \\
&= (1)\left(\frac{3}{5}\right) + (-2)\left(\frac{4}{5}\right) \\
&= \frac{3}{5} - \frac{8}{5} \\
&= -\frac{5}{5} \\
&= -1
\end{align*}$$

"

# ╔═╡ 8681facc-e9cc-4592-9714-faa3dc185506
md"### Problem 14.6 #10

a. Find the gradient of $f$.

b. Evaluate the gradient at the point $P$.

c. Find the rate of change of $f$ at $P$ in the direction of the vector $\mathbf{u}$.

$$f(x, y, z) = y^2 e^{xyz}, \; P(0, 1, -1), \; \mathbf{u} = \left\langle \frac{3}{13}, \frac{4}{13}, \frac{12}{13}\right\rangle$$"

# ╔═╡ f5583501-3856-4d37-86b4-0abb2ef1800c
md"
$$\begin{align*}
\frac{\partial f}{\partial x} &= \frac{\partial}{\partial x} (y^2 e^{xyz}) = y^3 z e^{xyz} \\
\frac{\partial f}{\partial y} &= \frac{\partial}{\partial y} (y^2 e^{xyz}) = 2y e^{xyz} + xy^2z e^{xyz} \\
\frac{\partial f}{\partial z} &= \frac{\partial}{\partial z} (y^2 e^{xyz}) = xy^3 e^{xyz}
\end{align*}$$
"

# ╔═╡ 3491511b-dad6-454d-9b0a-3d18792172a2
md"#### Part (a)
$$\nabla f = \left\langle \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}, \frac{\partial f}{\partial z}\right\rangle = \left\langle y^3 ze^{xyz}, 2y e^{xyz} + xy^2z e^{xyz}, xy^3 e^{xyz}\right\rangle$$"

# ╔═╡ 5d4c1c59-e133-47c8-95ff-776ccc900c02
md"#### Part (b)
$$\nabla f(P) = \nabla f(0, 1, -1) = \left\langle (1)^3 (-1)e^{0}, 2(1) e^0 + 0, 0\right\rangle = \langle -1, 2, 0 \rangle$$
"

# ╔═╡ 4aff4637-e266-4d71-a8c8-593f177dd940
md"#### Part (c)

$$\begin{align*}
\nabla f(P) \cdot \mathbf{u} &= \langle -1, 2, 0 \rangle \cdot \left\langle \frac{3}{13}, \frac{4}{13}, \frac{12}{13} \right\rangle \\
&= (-1)\left(\frac{3}{13}\right) + (2)\left(\frac{4}{13}\right) + 0 \\
&= -\frac{3}{13} + \frac{8}{13} \\
&= \frac{5}{13}
\end{align*}$$

"

# ╔═╡ 5330f3a5-5480-4bdb-98ec-69d8df67a24e
md"### Problem 14.6 #11

Find the directional derivative of the function at the given point in the direction of the vector $\mathbf{v}$.

$$f(x, y) = e^x \sin{y}, \; (0, \pi / 3), \mathbf{v} = \langle -6, 8 \rangle$$"

# ╔═╡ 366fa26c-38db-4e6a-b16e-0b75decc7947
md"
$$\begin{align*}
\frac{\partial f}{\partial x} &= \frac{\partial}{\partial x} (e^x \sin{y}) = e^x \sin{y} \\
\frac{\partial f}{\partial y} &= \frac{\partial}{\partial y} (e^x \sin{y}) = e^x \cos{y}
\end{align*}$$"

# ╔═╡ 2a298693-c589-4be0-89dc-d8158593a2c6
md"
$$\nabla f = \left\langle \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y} \right\rangle = \left\langle e^x \sin{y}, e^x \cos{y} \right\rangle$$"

# ╔═╡ 8311a1ea-0b15-41df-9d06-ab7c19ea4bef
md"$$\nabla f(P) = \nabla f(0, \pi/3) = \left\langle e^0 \sin{\frac{\pi}{3}}, e^0 \cos{\frac{\pi}{3}} \right\rangle = \left\langle \frac{\sqrt{3}}{2}, \frac{1}{2} \right\rangle$$"

# ╔═╡ 504fad0d-0d3a-4b05-a086-9fc99afc37d2
md"
$$\begin{align*}
\mathbf{u} &= \frac{\mathbf{v}}{|\mathbf{v}|} \\
&= \langle -6, 8 \rangle \cdot \frac{1}{\sqrt{(-6)^2 + (8)^2}} \\
&= \langle -6, 8 \rangle \cdot \frac{1}{\sqrt{36 + 64}} \\
&= \langle -6, 8 \rangle \cdot \frac{1}{10} \\
&= \left\langle -\frac{3}{5}, \frac{4}{5} \right\rangle
\end{align*}$$"

# ╔═╡ adc78d96-9ff9-4948-8524-0782f1c9d9da
md"
$$\begin{align*}
D_{\mathbf{u}} f = \nabla f(P) \cdot \mathbf{u} &= \left\langle \frac{1}{2}, \frac{\sqrt{3}}{2} \right\rangle \cdot \left\langle -\frac{3}{5}, \frac{4}{5} \right\rangle \\
&= \left(\frac{\sqrt{3}}{2}\right)\left(-\frac{3}{5}\right) + \left(\frac{1}{2}\right)\left(\frac{4}{5}\right) \\
&= -\frac{3 \sqrt{3}}{10} + \frac{4}{10} \\
&= \frac{4 - 3\sqrt{3}}{10}
\end{align*}$$
"

# ╔═╡ d6d510ec-e550-4827-b56d-8e19c4603293
md"### Problem 14.6 #15

Find the directional derivative of the function at the given point in the direction of the vector $\mathbf{v}$.

$$f(x, y, z) = x^2 y + y^2 z, \; (1, 2, 3), \; \mathbf{v} = \langle 2, -1, 2 \rangle$$"

# ╔═╡ cea72f05-da81-46ef-9b31-eae19ef1a6b0
md"

$$\begin{align*}
\frac{\partial f}{\partial x} &= \frac{\partial}{\partial x} (x^2 y + y^2 z) = 2xy \\
\frac{\partial f}{\partial y} &= \frac{\partial}{\partial y} (x^2 y + y^2 z) = x^2 + 2yz \\
\frac{\partial f}{\partial z} &= \frac{\partial}{\partial z} (x^2 y + y^2 z) = y^2 \\
\end{align*}$$
"

# ╔═╡ 6bea4869-f315-4e13-8657-eb099c6c6a1b
md"
$$\nabla f = \left\langle \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}, \frac{\partial f}{\partial z} \right\rangle = \langle 2xy, x^2 + 2yz, y^2 \rangle$$
"

# ╔═╡ 1ad4523e-3f9d-4e98-aaa5-47297f0dcf39
md"
$$\nabla f(P) = \nabla f(1, 2, 3) = \langle 2(1)(2), (1)^2 + 2(2)(3), (2)^2 \rangle = \langle 4, 13, 4 \rangle$$
"

# ╔═╡ b3eba3d7-2182-4dc1-afa2-809859aa550e
md"
$$\begin{align*}
\mathbf{u} &= \frac{\mathbf{v}}{|\mathbf{v}|} \\
&= \langle 2, -1, 2 \rangle \cdot \frac{1}{\sqrt{(2)^2 + (-1)^2 + (2)^2}} \\
&= \langle 2, -1, 2 \rangle \cdot \frac{1}{\sqrt{4 + 1 + 4}} \\
&= \langle 2, -1, 2 \rangle \cdot \frac{1}{3} \\
&= \left\langle \frac{2}{3}, -\frac{1}{3}, \frac{2}{3} \right\rangle
\end{align*}$$"

# ╔═╡ 422b1089-bd4b-48ea-b0e3-f035632266de
md"
$$\begin{align*}
D_{\mathbf{u}} f = \nabla f(P) \cdot \mathbf{u} &= \langle 4, 13, 4 \rangle \cdot \left\langle \frac{2}{3}, -\frac{1}{3}, \frac{2}{3} \right\rangle \\
&= (4) \left(\frac{2}{3}\right) + (13) \left(-\frac{1}{3}\right) + (4) \left(\frac{2}{3}\right) \\
&= \frac{8}{3} - \frac{13}{3} + \frac{8}{3} \\
&= 1
\end{align*}$$"

# ╔═╡ b5766d94-2e38-4041-9a9c-9f8b894a43cf
md"### Problem 14.6 #21
Find the maximum rate of change of $f$ at the given point and the direction in which it occurs.

$$f(x, y) = 4y \sqrt{x}, \; (4, 1)$$
"

# ╔═╡ 46f71335-f7a4-4944-84c4-c46d9507d146
md"
$$\begin{align*}
\frac{\partial f}{\partial x} &= \frac{\partial}{\partial x} (4y \sqrt{x}) = -\frac{2y}{\sqrt{x}} \\
\frac{\partial f}{\partial y} &= \frac{\partial}{\partial y} (4y \sqrt{x}) = 4 \sqrt{x}
\end{align*}$$
"

# ╔═╡ fc8c8929-0681-4805-bd76-91cff4d9ff9a
md"
$$\nabla f = \left\langle \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y} \right\rangle = \left\langle \frac{2y}{\sqrt{x}}, 4 \sqrt{x} \right\rangle$$
"

# ╔═╡ 6887b153-36b9-45ec-97f5-b1368ffe1888
md"
$$\nabla f(P) = \nabla f(4, 1) = \left\langle \frac{2(1)}{\sqrt{4}}, 4 \sqrt{4} \right\rangle = \langle 1, 8 \rangle$$"

# ╔═╡ d2c93e37-5d8e-492e-ad07-be09a935ce32
md"
$$|\nabla f(P)| = \sqrt{(1)^2 + (8)^2} = \sqrt{1 + 64} = \sqrt{65}$$
"

# ╔═╡ b228d614-19ff-4672-af9c-e4c343135b59
md"### Problem 14.6 #22

Find the maximum rate of change of $f$ at the given point and the direction in which it occurs.

$$f(s, t) = te^{st}, \; (0, 2)$$"

# ╔═╡ db09f3c6-00f7-40c2-9b6c-71e6d8ebd485
md"
$$\begin{align*}
\frac{\partial f}{\partial s} &= \frac{\partial}{\partial s} (te^{st}) = t^2 e^{st} \\
\frac{\partial f}{\partial s} &= \frac{\partial}{\partial t} (te^{st}) = ste^{st} + e^{st} = e^{st} (st + 1) \\
\end{align*}$$
"

# ╔═╡ 8efcb85c-c95d-436e-9e34-477eb910be94
md"
$$\nabla f = \left\langle \frac{\partial f}{\partial s}, \frac{\partial f}{\partial t} \right\rangle = \left\langle t^2 e^{st}, e^{st} (st + 1) \right\rangle$$"

# ╔═╡ cb30058f-b8d6-4ddb-bf9b-47cbfc2de5ee
md"
$$\nabla f(P) = \nabla f(0, 2) = \left\langle (2)^2 e^0, e^0 (0 + 1) \right\rangle = \langle 4, 1 \rangle$$
"

# ╔═╡ 3981e101-0e09-4ab6-8a5c-22ee21f112e5
md"
$$|\nabla f(P)| = \sqrt{(4)^2 + (1)^2} = \sqrt{16 + 1} = \sqrt{17}$$
"

# ╔═╡ f9e97e85-1f24-449f-bd68-e745fc5ab4a8
md"### Problem 14.6 #25

Find the maximum rate of change of $f$ at the given point and the direction in which it occurs.

$$f(x, y, z) = x/(y + z), \; (8, 1, 3)$$"

# ╔═╡ 6a79e8f3-6795-45ac-a2fb-2f192c1df21a
md"
$$\begin{align*}
\frac{\partial f}{\partial x} &= \frac{\partial}{\partial x} (x / (y + z)) = \frac{1}{y + z} \\
\frac{\partial f}{\partial y} &= \frac{\partial}{\partial y} (x / (y + z)) = x \ln{(y + z)} \\
\frac{\partial f}{\partial z} &= \frac{\partial}{\partial z} (x / (y + z)) = x \ln{(y + z)}
\end{align*}$$"

# ╔═╡ e3325220-7a82-4550-81df-41adaab2b91a
md"
$$\nabla f = \left\langle \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}, \frac{\partial f}{\partial z} \right\rangle = \left\langle \frac{1}{y + z}, -\frac{x}{(y + z)^2}, -\frac{x}{(y + z)^2}\right\rangle$$
"

# ╔═╡ a78016bb-5e9e-4626-91fb-9c28dcb55f37
md"
$$\nabla f(P) = \nabla f(8, 1, 3) = \left\langle \frac{1}{1 + 3}, -\frac{8}{(1 + 3)^2}, -\frac{8}{(1 + 3)^2} \right\rangle = \left\langle \frac{1}{4}, -\frac{1}{2}, -\frac{1}{2} \right\rangle$$

$$4 \nabla f(P) = \langle 1, -2, -2 \rangle$$"

# ╔═╡ 753ed5d8-c089-43f5-8ea5-d9bba11652d2
md"
$$\frac{1}{4} |4\nabla f(P)| = \frac{1}{4} \sqrt{(1)^2 + (2)^2 + (2)^2} = \frac{1}{4} \sqrt{9} = \frac{3}{4}$$"

# ╔═╡ 3dd84cc6-c2d8-48ca-93c4-3a4af48ebe97
md"## Chapter 14 Review"

# ╔═╡ 3c7b58e8-3759-4763-9257-80d5f8007be4
md"### Problem 14 #43

Find the gradient of the function $f(x, y, z) = x^2 e^{yz^2}$."

# ╔═╡ 12238250-d6aa-448a-b978-0e7d94bae3b7
md"
$$\begin{align*}
\frac{\partial f}{\partial x} &= \frac{\partial}{\partial x} (x^2 e^{yz^2}) = 2xe^{yz^2} \\
\frac{\partial f}{\partial y} &= \frac{\partial}{\partial y} (x^2 e^{yz^2}) = x^2 z^2 e^{yz^2} \\
\frac{\partial f}{\partial z} &= \frac{\partial}{\partial z} (x^2 e^{yz^2}) = 2x^2 yz e^{yz^2}
\end{align*}$$
"

# ╔═╡ 71d8834f-6b81-433e-be26-8e7bbd24b335
md"
$$\nabla f = \left\langle \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}, \frac{\partial f}{\partial z} \right\rangle = \left\langle 2xe^{yz^2}, x^2 z^2 e^{yz^2}, 2x^2 yz e^{yz^2} \right\rangle$$"

# ╔═╡ 127b887e-e454-40de-a7e6-d7815166bef2
md"### Problem 14 #44

a. When is the directional derivative of $f$ a maximum?

b. When is it a minimum?

c. When is it 0?

d. When is it half of its maximum value?
"

# ╔═╡ 634783aa-a4cf-4505-ab2b-ea193a49d57c
md"
a. $D_{\mathbf{u}} f(P)$ is a maximum when $\mathbf{u}$ has the same direction as $\nabla f(P)$, i.e., when $\theta = 0$ (where $\theta$ is the angle between $\mathbf{u}$ and $\nabla f(P)$).

b. $D_{\mathbf{u}} f(P)$ is a minimum when $\mathbf{u}$ has the direction opposite to $\nabla f(P)$, i.e., when $\theta = \pi$.

c. $D_{\mathbf{u}} f(P) = 0$ when $\mathbf{u}$ is perpendicular to $\nabla f(P)$, i.e., when $\theta = \frac{\pi}{2}$.

d. $D_{\mathbf{u}} f(P)$ is half of its maximum value when $\theta = \frac{\pi}{3}$.
"

# ╔═╡ 997dfde7-512c-4950-8c91-fecc22e7256e
md"### Problem 14 #46

Find the directional derivative of $f$ at the given point in the indicated direction.

$$f(x, y, z) = x^2 y + x \sqrt{1 + z}, \; (1, 2, 3), \; \text{in the direction of } \; \mathbf{v} = 2 \mathbf{i} + \mathbf{j} - 2 \mathbf{k}$$"

# ╔═╡ 2699b7d9-d3c8-4fe8-861f-f2cecce2492c
md"
$$\begin{align*}
\frac{\partial f}{\partial x} &= \frac{\partial}{\partial x} (x^2 y + x \sqrt{1 + x}) = 2xy + \sqrt{1 + z} \\
\frac{\partial f}{\partial x} &= \frac{\partial}{\partial x} (x^2 y + x \sqrt{1 + x}) = x^2 \\
\frac{\partial f}{\partial x} &= \frac{\partial}{\partial x} (x^2 y + x \sqrt{1 + x}) = \frac{x}{2 \sqrt{1 + z}}
\end{align*}$$"

# ╔═╡ c4dcad14-ca1f-4c16-827c-c01b5e5dbbe6
md"
$$\nabla f = \left\langle \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}, \frac{\partial f}{\partial z} \right\rangle = \left\langle 2xy + \sqrt{1 + z}, x^2, \frac{x}{2 \sqrt{1 + z}} \right\rangle$$"

# ╔═╡ 6e5ce2b4-ee79-4a81-a842-06b1ca3d67da
md"
$$\nabla f(P) = \nabla f(1, 2, 3) = \left\langle 2(1)(2) + \sqrt{1 + 3}, (1)^2, \frac{1}{2 \sqrt{1 + 3}} \right\rangle = \left\langle 6, 1, \frac{1}{4} \right\rangle$$"

# ╔═╡ 339b18f8-c96e-4fb6-a823-d17b005f6d9a
md"
$$\begin{align*}
\mathbf{u} &= \frac{\mathbf{v}}{|\mathbf{v}|} \\
&= \frac{2 \mathbf{i} + \mathbf{j} - 2 \mathbf{k}}{\sqrt{(2)^2 + (1)^2 + (-2)^2}} \\
&= \frac{2 \mathbf{i} + \mathbf{j} - 2 \mathbf{k}}{\sqrt{9}} \\
&= \frac{2 \mathbf{i} + \mathbf{j} - 2 \mathbf{k}}{3} \\
&= \frac{2}{3} \mathbf{i} + \frac{1}{3} \mathbf{j} - \frac{2}{3} \mathbf{k}
\end{align*}$$"

# ╔═╡ ec0d1bdf-a92b-4640-9a3c-8edfc9e86905
md"
$$\begin{align*}
D_{\mathbf{u}} f &= \nabla f(P) \cdot \mathbf{u} \\
&= \left\langle 6, 1, \frac{1}{4} \right\rangle \cdot \left\langle \frac{2}{3}, \frac{1}{3}, -\frac{2}{3} \right\rangle \\
&= (6) \left(\frac{2}{3}\right) + (1) \left(\frac{1}{3}\right) + \left(\frac{1}{4}\right) \left(-\frac{2}{3}\right) \\
&= 4 + \frac{1}{3} - \frac{1}{6} \\
&= 4 + \frac{1}{6} \\
&= \frac{25}{6}
\end{align*}$$"

# ╔═╡ 244b05fd-9bf7-4d6e-95dc-ec75be72594b
md"## 15.2 Double Integrals over General Regions"

# ╔═╡ c97c513f-2fe8-4bea-80e4-a78532b49705
md"### Problem 15.2 #10
Evaluate the double integral.

$$\iint\limits_D y \sqrt{x^2 - y^2} \;dA, \quad D = \{(x, y) \mid 0 \leq x \leq 2, 0 \leq y \leq x\}$$"

# ╔═╡ b3fa43c9-42f1-443b-959d-75586f265de4
md"
$$\iint\limits_D y \sqrt{x^2 - y^2} \;dA = \int_0^2 \int_0^x y \sqrt{x^2 - y^2} \;dy \;dx$$
"

# ╔═╡ 88b29f97-87c0-4526-a62a-974b16a503ff
md"
$$\begin{align*}
u &= x^2 - y^2 \\
du &= -2y \;dy \\
\int_0^x &\to \int_{x^2}^{0} \to -\int_0^{x^2}
\end{align*}$$

$$\begin{align*}
\int_0^x y \sqrt{x^2 - y^2} \;dy &= \frac{1}{2} \int_0^{x^2} \sqrt{u} \;du \\
&= \frac{1}{2} \left[\frac{2}{3} u^{3/2}\right]_0^{x^2} \\
&= \frac{1}{3} x^3
\end{align*}$$
"

# ╔═╡ cdf6cbdc-14e5-48f5-96f2-2fa9867699a8
md"
$$\begin{align*}
\iint\limits_D y \sqrt{x^2 - y^2} \;dA &= \int_0^2 \left(\frac{1}{3} x^3\right) \;dx
 \\
&= \left.\frac{1}{12} x^4\;\right|_0^2 \\
&= \frac{4}{3}
\end{align*}$$"

# ╔═╡ df6c485f-8007-4985-9282-5e8a30fbea47
md"### Problem 15.2 #46

Sketch the region of integration and change the order of integration.

$$\int_0^2 \int_{x^2}^4 f(x, y) \;dy \;dx$$
"

# ╔═╡ 662f4552-3c2d-422b-9eef-adbedafdf6e9
let
	x = 0:0.1:2
	plot(x, [x -> 4, x .^ 2], color = :black, lw = 2, fill = (x -> x^2, 0.5, :gray), legend = false, size = (300, 300), framestyle = :origin, xticks = [2], yticks = [0, 4], xlims = [-0.5, 3.5], ylims = [-0.5, 4.5])
end

# ╔═╡ 338e4f56-582f-42b9-b66f-d8724bd06f18
md"
$$\int_0^2 \int_{x^2}^4 f(x, y) \;dy \;dx = \int_0^4 \int_0^{\sqrt{y}} f(x, y) \;dx \;dy$$"

# ╔═╡ 71c270ca-58aa-449a-a4ce-25a404b56e4e
md"### Problem 15.2 #48

Sketch the region of integration and change the order of integration.

$$\int_{-2}^2 \int_0^{\sqrt{4 - y^2}} f(x, y) \;dx \;dy$$"

# ╔═╡ a4516b16-4a3b-49bc-9efe-4778f2660626
let
	y = -2:0.01:2
	
	plot([y -> 0, sqrt.(4 .- y.^2)], y, color = :black, lw = 2, fill = (0, 0.5, :gray), size = (300, 300), legend = false, xlim = [-1, 3], ylim = [-2.5, 2.5], framestyle = :origin, xticks = [2], yticks = [-2, 2])
end

# ╔═╡ d9d010b7-1698-4b9f-ad38-de5533109f7f
md"
$$\int_{-2}^2 \int_0^{\sqrt{4 - y^2}} f(x, y) \;dx \;dy = \int_0^2 \int_{-\sqrt{4 - x^2}}^{\sqrt{4 - x^2}} f(x, y) \;dy \;dx$$
"

# ╔═╡ f1d3478a-fffa-473d-82fd-20da0880a0e1
md"### Problem 15.2 #53
Evaluate the integral by reversing the order of integration.

$$\int_0^1 \int_{\sqrt{x}}^1 \sqrt{y^3 + 1} \;dy \;dx$$
"

# ╔═╡ 46183f97-e5b7-4b10-aad9-682930904166
let
	x = 0:0.01:1
	plot(x, [sqrt.(x), x -> 1], color = :black, lw = 2, fill = (x -> sqrt(x), 0.5, :gray), size = (300, 300), xticks = [1], yticks = [1], framestyle = :origin, legend = false)
end

# ╔═╡ dc6e5946-53e3-4ff1-ad53-6547a8a63106
md"
$$\begin{align*}
\int_0^1 \int_{\sqrt{x}}^1 \sqrt{y^3 + 1} \;dy \;dx &= \int_0^1 \int_0^{y^2} \sqrt{y^3 + 1} \;dx \;dy \\
&= \int_0^1 \left[x \sqrt{y^3 + 1}\right]_0^{y^2} \;dy \\
&= \int_0^1 y^2 \sqrt{y^3 + 1} \;dy
\end{align*}$$"

# ╔═╡ 4f702e00-a6f9-4d80-a2da-7444de8a2f32
md"
$$\begin{align*}
u &= y^3 + 1 \\
du &= 3y^2 \;dy \\
\int_0^1 &\to \int_1^2
\end{align*}$$

$$\begin{align*}
\int_0^1 y^2 \sqrt{y^3 + 1} \;dy &= \frac{1}{3} \int_1^2 \sqrt{u} \;du \\
&= \frac{1}{3} \left[\frac{2}{3} u^{3/2}\right]_1^2 \\
&= \frac{1}{3} \left[\frac{2}{3} (2)^{3/2} - \frac{2}{3} (1)^{3/2}\right] \\
&= \frac{2}{9} \left(2 \sqrt{2} - 1\right) \\
\end{align*}$$"

# ╔═╡ 4d512c99-39a6-4b0e-ab34-f5e81a006ff2
md"
$$\int_0^1 \int_{\sqrt{x}}^1 \sqrt{y^3 + 1} \;dy \;dx = \frac{2}{9} \left(2 \sqrt{2} - 1\right)$$"

# ╔═╡ 80d56b65-4f5e-419a-a2f8-4d18b3afd29f
md"## 15.3 Double Integrals over General Regions"

# ╔═╡ c7d2b32d-7615-4f3c-9840-f7b49de5c596
md"### Problem 15.3 #7

Evaluate the given integral by changing to polar coordinates.

$\iint_D x^2 y \;dA$ where $D$ is the top half of the disk with center the origin and radius $5$
"

# ╔═╡ 2f479228-7acd-49db-98ca-02cea5c87faa
let
	θ = 0:π/64:π
	r = 5
	plot(r * cos.(θ), r * sin.(θ), color = :black, lw = 2, fill = (0, 0.5, :gray), legend = false, size = (300, 300), xticks = [-r, r], yticks = [-r, r], framestyle = :origin, ylims = [-r, r])
end

# ╔═╡ 5faadca0-1e85-483c-8583-184f89f76a4a
md"
$$\begin{align*}
\iint_D x^2 y \;dA &= \int_0^{\pi} \int_0^5 (r \cos{\theta})^2 (r \sin{\theta}) r \;dr \;d\theta \\
&= \int_0^{\pi} \int_0^5 r^4 \cos^2{\theta} \sin{\theta} \;dr \;d\theta \\
&= \int_0^{\pi} \cos^2{\theta} \sin{\theta} \;d\theta \int_0^5 r^4 \;dr
\end{align*}$$"

# ╔═╡ 1bed805d-767f-49ac-8692-fbc1de1aec20
md"
$$\begin{align*}
u &= \cos{\theta} \\
du &= -\sin{\theta} \;d\theta \\
\int_0^{\pi} &\to \int_1^{-1} \to -\int_{-1}^1
\end{align*}$$

$$\begin{align*}
\int_0^{\pi} \cos^2{\theta} \cos^2{\theta} \sin{\theta} \;d\theta &= \int_{-1}^1 u^2 \;du \\
&= \left[\frac{1}{3} u^3\right]_{-1}^1 \\
&= \frac{1}{3} (1)^3 - \frac{1}{3} (-1)^3 \\
&= \frac{1}{3} + \frac{1}{3} \\
&= \frac{2}{3}
\end{align*}$$
"

# ╔═╡ a41da262-824f-475b-abf4-29aa8625dba4
md"
$$\begin{align*}
\int_0^5 r^4 \;dr &= \left[\frac{1}{5} r^5\right]_0^5 \\
&= \frac{1}{5} (5)^5 \\
&= 625
\end{align*}$$"

# ╔═╡ e1c4f2fe-0567-42a8-be46-d596c564b211
md"
$$\iint_D x^2 y \;dA = \left(\frac{2}{3}\right) (625) = \frac{1250}{3}$$"

# ╔═╡ a3fea1c4-14a6-462b-a5ce-1534fb5fbb39
md"### Problem 15.3 #8

Evaluate the given integral by changing to polar coordinates.

$\iint_R (2x - y) \;dA$ where $R$ is the region in the first quadrant enclosed by the circle $x^2 + y^2 = 4$ and the lines $x = 0$ and $y = x$
"

# ╔═╡ 3049d9f5-a1e1-4e25-b265-6375e68edbff
let
	N = 100
	θ = range(0, π/4, length = N)
	r = 2
	x = @. r * cos(θ)
	y = @. r * sin(θ)

	plot(x, y, color = :black, lw = 2, legend = false, xticks = [-r, r], yticks = [-r, r], framestyle = :origin, xlims = [-r, r], ylims = [-r, r], size = (300, 300), fill=(0,:lightgray))
	
	x = range(0, r * cos(π/4), length = N)
	plot!(x, x->x, color=:black, lw=4)
	
	x = range(0, r, length = N)
	plot!(x, x->0, color=:black, lw=2, fill=(x->x<r*cos(π/4) ? x : 0, :lightgray))
end

# ╔═╡ 5f17ef77-7b57-43ab-8bd1-3359620f8758
md"
$$\begin{align*}
\iint_R (2x - y) \;dA &= \int_0^{\pi/4} \int_0^2 (2r\cos{\theta} - r \sin{\theta}) r \;dr \;d\theta \\
&= \int_0^{\pi/4} \int_0^2 2r^2 - r^2 \sin{\theta} \;dr \;d\theta \\
&= \int_0^{\pi/4} \left[\frac{2}{3} r^3 \sin{\theta} + \frac{1}{3} r^3 \cos{\theta}\right]_{r=0}^{r=2} \;d\theta \\
&= \int_0^{\pi/4} \left[\frac{2}{3} (2)^3 \sin{\theta} + \frac{1}{3} (2)^3 \cos{\theta}\right] d\theta \\
&= \int_0^{\pi/4} \left[\frac{16}{3} \sin{\theta} + \frac{8}{3} \cos{\theta}\right] d\theta \\
&= \left.-\frac{16}{3} \cos{\theta} + \frac{8}{3} \sin{\theta}\;\right|_{0}^{\pi / 4} \\
&= -\frac{16}{3} \cos{\left(\frac{\pi}{4}\right)} + \frac{8}{3} \sin{\left(\frac{\pi}{4}\right)} + \frac{16}{3} \cos{(0)} \\
&= -\frac{16}{3} \frac{\sqrt{2}}{2} + \frac{8}{3} \frac{\sqrt{2}}{2} + \frac{16}{3} \\
&= -\frac{8}{3} \sqrt{2} + \frac{4}{3} \sqrt{2} + \frac{16}{3} \\
&= \frac{16}{3} - 4 \sqrt{2}
\end{align*}$$"

# ╔═╡ 442999cb-41b8-4a07-92f3-0052d4662700
md"### Problem 15.3 #13

Evaluate the given integral by changing to polar coordinates.

$\iint_R \arctan{(y/x)} \;dA$ where $R = \{(x, y) \mid 1 \leq x^2 + y^2 \leq 4, \; 0 \leq y \leq x\}$
"

# ╔═╡ 1bf6a598-cf21-487f-ad58-476c8b34aeb6
md"
$$\begin{gather*}
1 \leq x^2 + y^2 \leq 4 \\
1 \leq r^2 \leq 4 \\
1 \leq r \leq 2
\end{gather*}$$

$$\begin{gather*}
0 \leq y \leq x \\
0 \leq r \sin{\theta} \leq r \cos{\theta} \\
0 \leq \tan{\theta} \leq 1 \\
0 \leq \theta \leq \frac{\pi}{4}
\end{gather*}$$
"

# ╔═╡ cb0c68e1-3f3b-4ee3-8d34-db6008055fa7
let
	N = 100
	θ = range(0, π/4, length = N)
	r1 = 1
	r2 = 2
	x = cos.(θ)
	y = sin.(θ)
	
	ticks = [-r2, -r1, 0, r1, r2]
	lims = [0, r2+0.5]
	plot(r1*x, r1*y, color=:black, lw=2, xticks=ticks, yticks=ticks, xlims=lims, ylims=lims, size=(300,300), legend=false, fill=(x->x,:lightgray))
	plot!(r2*x, r2*y, color=:black, lw=2, fill=(0,:lightgray))
	
	x = range(1, 2, length = N)
	plot!(x, x->0, color=:black, lw=2, fill=(x->x < r2*cos(π/4) ? x : 0,:lightgray))
	
	x = range(r1*cos(π/4),r2*cos(π/4),length=N)
	plot!(x, x->x, color=:black, lw=2)
end

# ╔═╡ d85c9f6c-492d-4e1f-8717-97b25ab8319f
md"
$$\begin{align*}
\iint_R \arctan{(y/x)} \;dA &= \int_0^{\pi / 4} \int_1^2 \arctan{\left(\frac{r \sin{\theta}}{r \cos{\theta}}\right)} r \;dr \;d\theta \\
&= \int_0^{\pi / 4} \int_1^2 \arctan{(\tan{\theta})} \; r \;dr \;d\theta \\
&= \int_0^{\pi / 4} \theta \;d\theta \int_1^2 r \;dr \\
&= \left[\frac{1}{2} \theta^2\right]_0^{\pi / 4} \left[\frac{1}{2} r^2\right]_1^2 \\
&= \left[\frac{1}{2} \left(\frac{\pi}{4}\right)^2\right] \left[\frac{1}{2} (2)^2 - \frac{1}{2} (1)^2\right] \\
&= \frac{\pi^2}{32} \left(2 - \frac{1}{2}\right) \\
&= \frac{\pi^2}{32} \frac{3}{2} \\
&= \frac{3}{64} \pi^2
\end{align*}$$
"

# ╔═╡ 337759c9-40b1-4060-ad3f-dddfa7e7ce08
md"### Problem 15.3 #21
Use polar coordinates to find the volume of the given solid.

Below the plane $2x + y + z = 4$ and above the disk $x^2 + y^2 \leq 1$
"

# ╔═╡ 0374d8b8-ad7e-478a-806b-e685d914e9da
md"
$$\begin{align*}
z &= 4 - 2x - y \\
\iint_R f(x, y) \;dA &= \int_0^{2\pi} \int_0^1 (4 - 2r \cos{\theta} - r \sin{\theta}) r \;dr \;d\theta \\
&= \int_0^{2\pi} \int_0^1 (4r - 2r^2 \cos{\theta} - r^2 \sin{\theta}) \;dr \;d\theta \\
&= \int_0^{2\pi} \left[2r^2 - \frac{2}{3} r^3 \cos{\theta} - \frac{1}{3} r^3 \sin{\theta})\right]_{r = 0}^{r = 1} \;d\theta \\
&= \int_0^{2\pi} \left(2 - \frac{2}{3} \cos{\theta} - \frac{1}{3} \sin{\theta}\right) d\theta \\
&= \left[2\theta - \frac{2}{3} \sin{\theta} + \frac{1}{3} \cos{\theta}\right]_0^{2\pi} \\
&= 2(2\pi) - \frac{2}{3} \sin{(2\pi)} + \frac{1}{3} \cos{(2\pi)} - \frac{1}{3} \cos{(0)} \\
&= 4\pi - 0 + \frac{1}{3} - \frac{1}{3} \\
&= 4\pi
\end{align*}$$"

# ╔═╡ 6025bb6f-4df0-4b3c-9293-a406157916f3
md"### Problem 15.3 #29

Evaluate the iterated integral by converting to polar coordinates.

$$\int_0^2 \int_0^{\sqrt{4 - x^2}} e^{-x^2 - y^2} \;dy \;dx$$
"

# ╔═╡ eba0ecd0-373f-42a8-b74b-f02bca925a06
let
	N = 100
	θ = range(0, π/2, length = N)
	r = 2
	x = @. r * cos(θ)
	y = @. r * sin(θ)
	
	plot(x, y, color = :black, lw = 2, fill = (0,0.5,:gray), xticks=[-r,0,r], yticks=[-r,0,r], legend = false, framestyle = :origin, xlims=[-r-0.5,r+0.5], ylims=[-r-0.5,r+0.5], size=(300,300))
end

# ╔═╡ 3b77b1e5-7dad-479b-b1cf-bbda7c1db2f4
md"
$$\int_0^2 \int_0^{\sqrt{4 - x^2}} e^{-x^2 - y^2} \;dy \;dx = \int_0^{\pi / 2} \int_0^2 re^{-r^2} \;dr \;d\theta$$"

# ╔═╡ 9f501d3d-2c2f-4b66-9a6c-9bfd5d216b62
md"
$$\begin{align*}
u &= -r^2 \\
du &= -2r \;dr \\
\int_0^2 &\to \int_0^{-4} \to -\int_{-4}^0
\end{align*}$$

$$\begin{align*}
\int_0^2 re^{-r^2} \;dr &= \frac{1}{2} \int_{-4}^0 e^u \;du \\
&= \frac{1}{2} e^u\;\Big|_{-4}^0 \\
&= \frac{1}{2} \left(1 - \frac{1}{e^4}\right)
\end{align*}$$"

# ╔═╡ ff6dd84b-b78f-46c0-8f67-2ed7ed34ac15
md"
$$\begin{align*}
\int_0^2 \int_0^{\sqrt{4 - x^2}} e^{-x^2 - y^2} \;dy \;dx &= \frac{\pi}{2} \frac{1}{2} \left(\frac{1}{e^4} - 1\right) \\
&= \frac{\pi}{4} \left(1 - \frac{1}{e^4}\right)
\end{align*}$$"

# ╔═╡ 4ec7a75f-0c0c-4210-ae46-b0cbed041679
md"## 15.7 Triple Integrals in Cylindrical Coordinates" 

# ╔═╡ d07aaa71-d722-424f-be86-c9aae118bb3a
md"### Problem 15.7 #29

Evaluate the integral by changing to cylindrical coordinates.

$$\int_{-2}^2 \int_{-\sqrt{4 - y^2}}^{\sqrt{4 - y^2}} \int_{\sqrt{x^2 + y^2}}^2 xz \;dz \;dx \;dy$$
"

# ╔═╡ 892ddb07-2e05-4d4e-b993-72b70c899779
let
	N = 100
	θ = range(0, 2π, length = N)
	r = 2
	x = @. r * cos(θ)
	y = @. r * sin(θ)
	
	plot(x, y, color = :black, lw = 2, legend = false, size = (300, 300), xlims=[-r-0.5,r+0.5], ylims=[-r-0.5,r+0.5], fill=(0,0.5,:gray), framestyle=:origin, xticks=[-r,0,r], yticks=[-r,0,r])
end

# ╔═╡ d1709376-8c8c-4b43-9310-849650010c23
md"
$$\begin{align*}
\int_{-2}^2 \int_{-\sqrt{4 - y^2}}^{\sqrt{4 - y^2}} \int_{\sqrt{x^2 + y^2}}^2 xz \;dz \;dx \;dy &= \int_0^{2\pi} \int_0^2 \int_r^2 zr^2 \cos{\theta} \;dz \;dr \;d\theta \\
&= \int_0^{2\pi} \int_0^2 \left[\frac{1}{2} z^2 r^2 \cos{\theta}\right]_{z = r}^{z = 2} \;dr \;d\theta \\
&= \int_0^{2\pi} \int_0^2 \left[\frac{1}{2} (2)^2 r^2 \cos{\theta} - \frac{1}{2} (r)^2 r^2 \cos{\theta}\right] dr \;d\theta \\
&= \int_0^{2\pi} \int_0^2 \left(2r^2 \cos{\theta} - \frac{1}{2} r^4 \cos{\theta}\right) dr \;d\theta \\
&= \int_0^{2\pi} \left[\frac{2}{3} r^3 \cos{\theta} - \frac{1}{10} r^5 \cos{\theta}\right]_{r = 0}^{r = 2} \;d\theta \\
&= \int_0^{2\pi} \left(\frac{16}{3} \cos{\theta} - \frac{16}{5} \cos{\theta}\right) d\theta \\
&= \left[\frac{16}{3} \sin{\theta} - \frac{16}{5} \sin{\theta}\right]_0^{2\pi} \\
&= 0
\end{align*}$$"

# ╔═╡ 07ba3405-0b67-4532-9df9-633cb8e46e0b
md"### Problem 15.7 #30

Evaluate the integral by changing to cylindrical coordinates.

$$\int_{-3}^3 \int_0^{\sqrt{9 - x^2}} \int_0^{9 - x^2 - y^2} \sqrt{x^2 + y^2} \;dz \;dy \;dx$$
"

# ╔═╡ 22e496e8-bb70-4a86-b015-6996f19dee9a
let
	N = 100
	θ = range(0, π, length = N)
	r = 3
	x = @. r * cos(θ)
	y = @. r * sin(θ)
	
	plot(x, y, color = :black, lw = 2, legend = false, size = (300, 300), xlims=[-r-0.5,r+0.5], ylims=[-r-0.5,r+0.5], fill=(0,0.5,:gray), framestyle=:origin, xticks=[-r,0,r], yticks=[-r,0,r])
end

# ╔═╡ b33d40af-171e-4aa8-b53a-072fed6ceda7
md"
$$\begin{align*}
\int_{-3}^3 \int_0^{\sqrt{9 - x^2}} \int_0^{9 - x^2 - y^2} \sqrt{x^2 + y^2} \;dz \;dy \;dx &= \int_0^{\pi} \int_0^3 \int_0^{9 - r^2} r^2 \;dz \;dr \;d\theta \\
&= \int_0^{\pi} \int_0^3 \left[zr^2\right]_{z = 0}^{z = 9 - r^2} \;dr \;d\theta \\
&= \int_0^{\pi} \int_0^3 (9 - r^2) r^2 \;dr \;d\theta \\
&= \int_0^{\pi} \int_0^3 (9r^2 - r^4) \;dr \;d\theta \\
&= \pi \left[3r^3 - \frac{1}{5} r^5\right]_0^3 \\
&= \pi \left[3(3)^3 - \frac{1}{5} (3)^5\right] \\
&= \pi \left(81 - \frac{243}{5}\right) \\
&= \frac{162}{5} \pi
\end{align*}$$
"

# ╔═╡ 4c38e7e1-658d-4237-947e-a84e9a23f7de
md"## 15.8 Triple Integrals in Spherical Coordinates"

# ╔═╡ e82d8c13-1d93-468e-b59b-5e7148cbbef5
md"### Problem 15.8 #23

Evaluate $\displaystyle\iiint_E (x^2 + y^2) \;dV$, where $E$ lies between the spheres $x^2 + y^2 + z^2 = 4$ and $x^2 + y^2 + z^2 = 9$.
"

# ╔═╡ 1644491c-fa5c-48ea-85fa-770dc4f5bc47
let
	N = 100
	ϕ = range(0, π, length = N)
	θ = range(0, 2π, length = N)
	ρ1 = 2
	ρ2 = 3
	x = [sin(ϕ) * cos(θ) for θ ∈ θ for ϕ ∈ ϕ]
	y = [sin(ϕ) * sin(θ) for θ ∈ θ for ϕ ∈ ϕ]
	z = [cos(ϕ) for θ ∈ θ for ϕ ∈ ϕ]
	
	ticks = [-ρ2, -ρ1, 0, ρ1, ρ2]
	plot(ρ1*x, ρ1*y, ρ1*z, legend = false, size = (400, 300), color = :black, xticks = ticks, yticks = ticks, zticks = ticks)
	plot!(ρ2*x, ρ2*y, ρ2*z, color = :black)
end

# ╔═╡ ff89559c-1eaa-4787-ac35-4b0bd216df71
md"
$$\int_0^{\pi} \int_0^{2\pi} \int_2^3 (\rho^2 \sin^2{\phi} \cos^2{\theta} + \rho^2 \sin^2{\phi} \sin^2{\theta}) (\rho^2 \sin{\phi}) \;d\rho \;d\theta \;d\phi$$

$$\begin{align*}
&= \int_0^{\pi} \int_0^{2\pi} \int_2^3 \rho^4 \sin^3{\phi} \;d\rho \;d\theta \;d\phi \\
&= \int_0^{\pi} \int_0^{2\pi} \left[\frac{1}{5} \rho^5 \sin^3{\phi}\right]_{\rho = 2}^{\rho = 3} \;d\theta \;d\phi \\
&= \int_0^{\pi} \int_0^{2\pi} \left[\frac{1}{5} (3)^5 \sin^3{\phi} - \frac{1}{5} (2)^5 \sin^3{\phi}\right] d\theta \;d\phi \\
&= \int_0^{\pi} \int_0^{2\pi} \left(\frac{243}{5} - \frac{32}{5}\right) \sin^3{\phi} \;d\theta \;d\phi \\
&= \frac{422}{5} \pi \int_0^{\pi} \sin^3{\phi} \;d\phi
\end{align*}$$"

# ╔═╡ a47c7d8b-8804-4002-a8e1-f65258befee4
md"
$$\begin{align*}
\int_0^{\pi} \sin^3{\phi} \;d\phi &= \int_0^{\pi} \sin^2{\phi} \sin{\phi} \;d\phi \\
&= \int_0^{\pi} (1 - \cos^2{\phi}) \sin{\phi} \;d\phi
\end{align*}$$

$$\begin{align*}
u &= \cos{\phi} \\
du &= -\sin{\phi} \;d\phi \\
\int_0^{\pi} &\to \int_1^{-1} \to -\int_{-1}^1
\end{align*}$$

$$\begin{align*}
\int_0^{\pi} (1 - \cos^2{\phi}) \sin{\phi} \;d\phi &= \int_{-1}^1 (1 - u^2) \;du \\
&= \left[u - \frac{1}{3} u^3\right]_{-1}^1 \\
&= 1 - \frac{1}{3} + 1 - \frac{1}{3} \\
&= \frac{4}{3}
\end{align*}$$"

# ╔═╡ 69e33e0e-b774-4dd3-99a2-c674ee1edd67
md"
$$\iiint_E (x^2 + y^2) \;dV = \frac{422}{5} \pi \cdot \frac{4}{3} = \frac{1688}{15} \pi$$"

# ╔═╡ 2f00a4f8-8c09-4fc9-ad84-4149442c65eb
md"### Problem 15.8 #25

Evaluate $\displaystyle\iiint_E xe^{x^2 + y^2 + z^2} \;dV$, where $E$ is the portion of the unit ball $x^2 + y^2 + z^2 \leq 1$ that lies in the first octant.
"

# ╔═╡ 5714999c-8e8f-420c-826d-874945e1d2e2
let
	N = 100
	ϕ = range(0, π/2, length = N)
	θ = range(0, π/2, length = N)
	ρ = 1
	x = [sin(ϕ) * cos(θ) for θ ∈ θ for ϕ ∈ ϕ]
	y = [sin(ϕ) * sin(θ) for θ ∈ θ for ϕ ∈ ϕ]
	z = [ϕ < cos(π/2) ? 0 : cos(ϕ) for θ ∈ θ for ϕ ∈ ϕ]
	
	ticks = [-ρ, 0, ρ]
	plot(ρ*x, ρ*y, ρ*z, legend = false, size = (400, 300), color = :black, xticks = ticks, yticks = ticks, zticks = ticks)
end

# ╔═╡ dbe0359a-7710-4b26-97a6-7b3268e2948d
md"
$$\begin{align*}
\iiint_E xe^{x^2 + y^2 + z^2} \;dV &= \int_0^{\pi/2} \int_0^{\pi/2} \int_0^1 \rho \sin{\phi} \cos{\theta} \; e^{\rho^2} \rho^2 \sin{\phi} \;d\rho \;d\theta \;d\phi \\
&= \int_0^{\pi/2} \sin^2{\phi} \;d\phi \int_0^{\pi/2} \cos{\theta} \;d\theta \int_0^1 \rho^3 \; e^{\rho^2} \;d\rho
\end{align*}$$"

# ╔═╡ 4b6fbf67-372e-4cd8-8dca-53486feff369
md"
$$\begin{align*}
\int_0^{\pi/2} \sin^2{\phi} \;d\phi &= \frac{1}{2} \int_0^{\pi/2} (1 - \cos{2\phi}) \;d\phi \\
&= \frac{1}{2} \left[\phi - \frac{1}{2} \cos{2\phi}\right]_0^{\pi/2} \\
&= \frac{1}{2} \left(\frac{\pi}{2} - \frac{1}{2} \cos{\pi} - 0 + \frac{1}{2} \cos{0}\right) \\
&= \frac{\pi}{4}
\end{align*}$$"

# ╔═╡ 6b543b09-7ded-4e56-a56d-df0b60de9128
md"
$$\int_0^{\pi/2} \cos{\theta} \;d\theta = \sin{\theta}\;\Big|_0^{\pi/2} = 1$$"

# ╔═╡ 3f756ef7-6473-4a6a-a269-212b521668ac
md"
$$\begin{gather*}
u = \rho^2 &\quad v = \frac{1}{2} e^{\rho^2} \\
du = 2\rho \;d\rho &\quad dv = \rho e^{\rho^2} \;d\rho
\end{gather*}$$

$$\begin{align*}
\int_0^1 \rho^3 e^{\rho^2} \;d\rho &= \left[uv - \int v \;du\right]_0^1 \\
&= \left[\frac{1}{2} \rho^2 e^{\rho^2} - \frac{1}{2} \int e^{\rho^2} (2\rho \;d\rho)\right]_0^1 \\
&= \left[\frac{1}{2} \rho^2 e^{\rho^2} - \frac{1}{2} e^{\rho^2}\right]_0^1 \\
&= \left[\frac{1}{2} e^{\rho^2} (\rho^2 - 1)\right]_0^1 \\
&= 0 - \frac{1}{2} e^{0} (0 - 1) \\
&= \frac{1}{2}
\end{align*}$$"

# ╔═╡ 1f7688b5-c0ce-4440-a957-2ad28c7211d0
md"
$$\iiint_E xe^{x^2 + y^2 + z^2} \;dV = \left(\frac{\pi}{4}\right)(1)\left(\frac{1}{2}\right) = \frac{\pi}{8}$$"

# ╔═╡ d5989253-601f-4942-b7cd-16bcef4582bc
md"### Problem 15.8 #41
Evaluate the integral by changing to spherical coordinates.

$$\int_0^1 \int_0^{\sqrt{1 - x^2}} \int_{\sqrt{x^2 + y^2}}^{\sqrt{2 - x^2 - y^2}} xy \;dz \;dy \;dx$$
"

# ╔═╡ 835dcf98-79ed-4ef9-9f83-03fc3dfc326a
let
	N = 100
	ϕ = range(0, π/2, length = N)
	θ = range(0, π/2, length = N)
	ρ = sqrt(2)
	x = [sin(ϕ) * cos(θ) for θ ∈ θ for ϕ ∈ ϕ]
	y = [sin(ϕ) * sin(θ) for θ ∈ θ for ϕ ∈ ϕ]
	z = [ϕ < cos(π/2) ? 0 : cos(ϕ) for θ ∈ θ for ϕ ∈ ϕ]
	
	ticks = [-floor(ρ), 0, floor(ρ)]
	plot(ρ*x, ρ*y, ρ*z, legend = false, size = (400, 300), color = :black, xticks = ticks, yticks = ticks, zticks = ticks)
	
	ϕ = range(0, π/4, length = N)
	x = [sin(ϕ) * cos(θ) for θ ∈ θ for ϕ ∈ ϕ]
	y = [sin(ϕ) * sin(θ) for θ ∈ θ for ϕ ∈ ϕ]
	z = [ϕ < cos(π/2) ? 0 : cos(ϕ) for θ ∈ θ for ϕ ∈ ϕ]
	plot!(ρ*x, ρ*y, ρ*z, legend = false, size = (400, 300), color = :black, xticks = ticks, yticks = ticks, zticks = ticks)
end

# ╔═╡ 742327c9-cd22-4c3e-b18b-094fc13db4d0
md"
$$\begin{gather*}
\sqrt{x^2 + y^2} \leq z \leq \sqrt{2 - x^2 - y^2} \\
x^2 + y^2 \leq z^2 \leq 2 - x^2 - y^2 \\
x^2 + y^2 \leq x^2 + y^2 + z^2 \leq 2 \\
0 \leq \rho^2 \leq 2 \\
0 \leq \rho \leq \sqrt{2}
\end{gather*}$$"

# ╔═╡ 616fe659-9d85-41c1-a3e8-ca1fd1155b19
md"
$$\int_0^1 \int_0^{\sqrt{1 - x^2}} \int_{\sqrt{x^2 + y^2}}^{2 - x^2 - y^2} xy \;dz \;dy \;dx$$
$$\begin{align*}
&= \int_{0}^{\pi/4} \int_{0}^{\pi/2} \int_0^{\sqrt{2}} (\rho \sin{\phi} \cos{\theta}) (\rho \sin{\phi} \sin{\theta}) (\rho^2 \sin{\phi}) \;d\rho \;d\theta \;d\phi \\
&= \int_0^{\pi/4} \sin^3{\phi} \;d\phi \int_0^{\pi / 2} \sin{\theta} \cos{\theta} \;d\theta \int_0^{\sqrt{2}} \rho^4 \;d\rho \\
&= \int_0^{\pi/4} (1 - \cos^2{\phi}) \sin{\phi} \;d\phi \int_0^1 u \;du \left[\frac{1}{5} \rho^5\right]_0^{\sqrt{2}} \\
&= -\int_1^{\frac{\sqrt{2}}{2}} (1 - u^2) \;du \left[\frac{1}{2} u^2\right]_0^1 \frac{4 \sqrt{2}}{5} \\
&= -\frac{2 \sqrt{2}}{5} \left[u - \frac{1}{3} u^3\right]_1^{\frac{\sqrt{2}}{2}} \\
&= -\frac{2 \sqrt{2}}{5} \left(\frac{\sqrt{2}}{2} - \frac{\sqrt{2}}{12} - 1 + \frac{1}{3}\right) \\
&= -\frac{2 \sqrt{2}}{5} \left(\frac{5 \sqrt{2}}{12} - \frac{2}{3}\right) \\
&= -\frac{2}{6} + \frac{4\sqrt{2}}{15} \\
&= \frac{4 \sqrt{2}}{15} - \frac{1}{3}
\end{align*}$$
"

# ╔═╡ 872db4ee-a082-41b4-86a2-f438702fa960
md"## Chapter 15 Review"

# ╔═╡ 82ce9374-6434-4555-8e28-9eafb261d1db
md"### Problem 15 #3

Calculate the iterated integral.

$$\int_1^2 \int_0^2 (y + 2xe^y) \;dx \;dy$$
"

# ╔═╡ 8ee682ad-c67d-4b51-a9b2-10c92df3cc24
md"
$$\begin{align*}
\int_1^2 \int_0^2 (y + 2xe^y) \;dx \;dy &= \int_1^2 \left[xy + x^2 e^y\right]_0^2 \;dy \\
&= \int_1^2 (2y + 4e^y) \;dy \\
&= \left[y^2 + 4e^y\right]_1^2 \\
&= 4 + 4e^2 - 1 - 4e \\
&= 4e^2 - 4e + 3
\end{align*}$$"

# ╔═╡ 34a831ca-6582-472d-8bbb-55dd8f10bea1
md"### Problem 15 #21

Calculate the value of the multiple integral.

$\iint_R ye^{xy} \;dA$ where $R = \{(x, y) \mid 0 \leq x \leq 2, \; 0 \leq y \leq 3\}$
"

# ╔═╡ 65f7fdec-d42f-4c42-9c87-996647bd0bed
let
	R = [
		(0,0)
		(0,3)
		(2,3)
		(2,0)
		(0,0)
		]
	plot(R, color = :black, fill=(0,0.5,:gray), lw = 2, legend = false, size = (300,300), xlims=[-1,3], ylims=[-1,4], framestyle=:origin, xticks=[0,2], yticks=[0,3])
end

# ╔═╡ 2bd8b894-ca19-4a24-8f9c-7d7a1b28c065
md"
$$\begin{align*}
\iint_R ye^{xy} \;dA &= \int_0^3 \int_0^2 ye^{xy} \;dx \;dy \\
&= \int_0^3 \int_0^{2y} e^u \;du \;dy \\
&= \int_0^3 e^u\;\Big|_0^{2y} \;dy \\
&= \int_0^3 \left(e^{2y} - 1\right) dy \\
&= \left[\frac{1}{2} e^{2y} - y\right]_0^3 \\
&= \frac{1}{2} e^6 - 3 - \frac{1}{2} \\
&= \frac{1}{2} e^6 - \frac{7}{2}
\end{align*}$$
"

# ╔═╡ 2abfff9e-c7bd-4d1e-ad8f-437fd61c0614
md"### Problem 15 #35

Find the volume of the given solid under the paraboloid $z = x^2 + 4y^2$ and above the rectangle $R = [0, 2] \times [1, 4]$
"

# ╔═╡ 88cfdf79-acd2-44e6-b049-2a8f5c70f792
let
	R = [
		(0,1)
		(0,4)
		(2,4)
		(2,1)
		(0,1)
		]
	plot(R, color = :black, fill=(0,0.5,:gray), lw = 2, legend = false, size = (300,300), xlims=[-1,3], ylims=[0,5], framestyle=:origin, xticks=[0,2], yticks=[1,4])
end

# ╔═╡ f11993b7-6487-4b2d-915a-9c2967ace7b5
md"
$$R = [a, b] \times [c, d] \implies \int_a^b \int_c^d f(x, y) \;dA$$"

# ╔═╡ 95109601-6b25-41b0-96a7-21c004877333
md"
$$\begin{align*}
\iint_D f(x, y) \;dA &= \int_0^2 \int_1^4 x^2 + 4y^2 \;dy \;dx \\
&= \int_0^2 \left[x^2 y + \frac{4}{3} y^3\right]_{y=1}^{y=4} \;dx \\
&= \int_0^2 \left(4x^2 + \frac{256}{3} - x^2 - \frac{4}{3}\right) dx \\
&= \int_0^2 \left(3x^2 + 84\right) dx \\
&= \left[x^3 + 84x\right]_0^2 \\
&= 2^3 + 84(2) \\
&= 176
\end{align*}$$"

# ╔═╡ 9960baa6-7483-4e82-ba69-27b1a3d05d18
md"### Problem 15 #47

Use polar coordinates to evaluate

$$\int_0^3 \int_{-\sqrt{9 - x^2}}^{\sqrt{9 - x^2}} (x^3 + xy^2) \;dy \;dx$$
"

# ╔═╡ 288da841-1cb1-4b3b-89a7-d14b3a3fa09d
let
	N = 100
	θ = range(-π/2, π/2, length = N)
	r = 3
	x = @. r * cos(θ)
	y = @. r * sin(θ)
	
	plot(x, y, color = :black, lw = 2, xticks = [-r, 0, r], yticks = [-r, 0, r], legend = false, fill = (0, 0.5, :gray), size = (300,300), xlims=[-r-0.5,r+0.5], ylims=[-r-0.5,r+0.5], framestyle = :origin)
end

# ╔═╡ b7f68077-fa81-453f-a2b0-d6d84990697a
md"
$$\begin{align*}
\int_0^3 \int_{-\sqrt{9 - x^2}}^{\sqrt{9 - x^2}} (x^3 + xy^2) \;dy \;dx &= \int_{-\pi/2}^{\pi/2} \int_0^3 (r^3 \cos^3{\theta} + r \cos{\theta} r^2 \sin^2{\theta}) r \;dr \;d\theta \\
&= \int_{-\pi/2}^{\pi/2} \int_0^3 r^4 (\cos^3{\theta} + \cos{\theta} \sin^2{\theta}) \;dr \;d\theta \\
&= \left(\int_{-\pi/2}^{\pi/2} \cos^3{\theta} \;d\theta + \int_{-\pi/2}^{\pi/2} \cos{\theta} \sin^2{\theta} \;d\theta\right) \left[\frac{1}{5} r^5\right]_0^3
\end{align*}$$"

# ╔═╡ 41edd5a0-3ae1-40ea-a3bf-d6102e5d2186
md"
$$\begin{align*}
\int_{-\pi/2}^{\pi/2} \cos^3{\theta} \;d\theta &= \int_{-\pi/2}^{\pi/2} (1 - \sin^2{\theta}) \cos{\theta} \;d\theta
\end{align*}$$

$$\begin{align*}
u &= \sin{\theta} \\
du &= \cos{\theta} \;d\theta \\
\int_{-\pi/2}^{\pi/2} &\to \int_{-1}^1
\end{align*}$$

$$\begin{align*}
\int_{-\pi/2}^{\pi/2} (1 - \sin^2{\theta}) \cos{\theta} \;d\theta &= \int_{-1}^1 (1 - u^2) \;du \\
&= \left[u - \frac{1}{3} u^3\right]_{-1}^1 \\
&= 1 - \frac{1}{3} + 1 - \frac{1}{3} \\
&= \frac{4}{3}
\end{align*}$$"

# ╔═╡ 5048ff8f-59cf-46a0-881b-e620b52d98ab
md"
$$\begin{align*}
\int_{-\pi/2}^{\pi/2} \cos{\theta} \sin^2{\theta} \;d\theta
\end{align*}$$

$$\begin{align*}
u &= \sin{\theta} \\
du &= \cos{\theta} \;d\theta \\
\int_{-\pi/2}^{\pi/2} &\to \int_{-1}^1
\end{align*}$$

$$\begin{align*}
\int_{-\pi/2}^{\pi/2} \cos{\theta} \sin^2{\theta} \;d\theta &= \int_{-1}^1 u^2 \;du \\
&= \left[\frac{1}{3} u^3\right]_{-1}^1 \\
&= \frac{1}{3} + \frac{1}{3} \\
&= \frac{2}{3}
\end{align*}$$"

# ╔═╡ dfffd7de-76eb-4100-a435-7458fac005ad
md"
$$\begin{align*}
\int_0^3 \int_{-\sqrt{9 - x^2}}^{\sqrt{9 - x^2}} (x^3 + xy^2) \;dy \;dx &= \left(\frac{4}{3} + \frac{2}{3}\right) \left(\frac{3^5}{5}\right) \\
&= (2) \left(\frac{243}{5}\right) \\
&= \frac{486}{5}
\end{align*}$$"

# ╔═╡ f87fddd2-bd8c-492a-9bb7-5b50fefd7147
md"### Problem 15 #48

Use spherical coordinates to evaluate

$$\int_{-2}^2 \int_0^{\sqrt{4 - y^2}} \int_{-\sqrt{4 - x^2 - y^2}}^{\sqrt{4 - x^2 - y^2}} y^2 \sqrt{x^2 + y^2 + z^2} \;dz \;dx \;dy$$
"

# ╔═╡ 5608789b-d2a2-49a7-9914-b9eb47123228
let
	N = 100
	ϕ = range(0, π, length = N)
	θ = range(0, π, length = N)
	ρ = sqrt(2)
	x = [sin(ϕ) * cos(θ) for θ ∈ θ for ϕ ∈ ϕ]
	y = [sin(ϕ) * sin(θ) for θ ∈ θ for ϕ ∈ ϕ]
	z = [cos(ϕ) for θ ∈ θ for ϕ ∈ ϕ]
	
	ticks = [-floor(ρ), 0, floor(ρ)]
	plot(ρ*x, ρ*y, ρ*z, legend = false, size = (400, 300), color = :black, xticks = ticks, yticks = ticks, zticks = ticks)
end

# ╔═╡ edbc1430-ea17-461f-9008-79c366f8cbf5
md"
$$\int_{-2}^2 \int_0^{\sqrt{4 - y^2}} \int_{-\sqrt{4 - x^2 - y^2}}^{\sqrt{4 - x^2 - y^2}} y^2 \sqrt{x^2 + y^2 + z^2} \;dz \;dx \;dy$$

$$\begin{align*}
&= \int_0^{\pi} \int_0^{\pi} \int_0^2 (\rho^2 \sin^2{\phi} \sin^2{\theta}) \rho^3 \sin{\phi} \;d\rho \;d\theta \;d\phi \\
&= \int_0^{\pi} \sin^2{\phi} \;d\phi \int_0^{\pi} \sin^2{\theta} \;d\theta \int_0^2 \rho^5 \;d\rho \\
&= \int_0^{\pi} \sin^3{\phi} \;d\phi \int_0^{\pi} \sin^2{\theta} \;d\theta \left[\frac{1}{6} \rho^6\right]_0^2 \\
&= \frac{64}{3} \cdot \frac{1}{2} \int_0^{\pi} (1 - \cos{2\theta}) \;d\theta \int_0^{\pi} (1 - \cos^2{\phi}) \sin{\phi} \;d\phi \\
&= -\frac{32}{3} \left[\theta - \frac{1}{2} \cos{2\theta}\right]_0^{\pi} \left[u  -\frac{1}{3} u^3\right]_{-1}^1\\
&= \frac{32}{3} \left(\pi - \frac{1}{2} + \frac{1}{2}\right) \left(1 - \frac{1}{3} + 1 - \frac{1}{3}\right) \\
&= \frac{32}{3} \pi \cdot \frac{2}{3} \\
&= \frac{64}{9} \pi
\end{align*}$$"

# ╔═╡ 9b0e5959-cc6c-4ab4-86a0-067e8b475112
md"## 16.3 The Fundamental Theorem for Line Integrals"

# ╔═╡ 85c0bea7-75f0-4b2d-a6a4-1fd045d4262e
md"### Problem 16.3 #3

Determine whether or not $\mathbf{F}$ is a conservative vector field.
If it is, find a function $f$ such that $\mathbf{F} = \nabla f$.

$$\mathbf{F}(x, y) = (xy + y^2) \mathbf{i} + (x^2 + 2xy) \mathbf{j}$$
"

# ╔═╡ 3df22f53-0bc6-4775-b8a2-367221ab5d4a
md"
$$\begin{align*}
\frac{\partial P}{\partial y} &= \frac{\partial}{\partial y} (xy + y^2) = x + 2y \\
\frac{\partial Q}{\partial x} &= \frac{\partial}{\partial x} (x^2 + 2xy) = 2x + 2y
\end{align*}$$

The vector field $\mathbf{F}$ is not conservative since $\frac{\partial P}{\partial y} \neq \frac{\partial Q}{\partial x}$."

# ╔═╡ 598da968-f5c4-484f-8f37-e5b22a707bd8
md"### Problem 16.3 #5

Determine whether or not $\mathbf{F}$ is a conservative vector field.
If it is, find a function $f$ such that $\mathbf{F} = \nabla f$.

$$\mathbf{F}(x, y) = y^2 e^{xy} \mathbf{i} + (1 + xy) e^{xy} \mathbf{j}$$
"

# ╔═╡ c11dc79a-3cd1-4490-95eb-50be9923061b
md"
$$\begin{align*}
\frac{\partial P}{\partial y} &= \frac{\partial}{\partial y} (y^2 e^{xy}) = 2y e^{xy} + xy^2 e^{xy} \\
\frac{\partial Q}{\partial x} &= \frac{\partial}{\partial x} (e^{xy} + xye^{xy}) = ye^{xy} + ye^{xy} + xy^2 e^{xy} = 2ye^{xy} + xy^2 e^{xy}
\end{align*}$$

The vector field $\mathbf{F}$ is conservative."

# ╔═╡ a22b7675-a1d5-4ff6-90e5-c0dca164f45b
md"
$$\begin{align*}
\mathbf{F} = \nabla f &\implies f_x = y^2 e^{xy} \\
&\implies f(x, y) = \int f_x \;dx = ye^{xy} + g(y) \\
&\implies f_y = e^{xy} + xye^{xy} + g'(y) = e^{xy} + xye^{xy} \\
&\implies g'(y) = 0 \implies g(y) = \int g'(y) \;dy = k \\
&\implies f(x, y) = ye^{xy} + K
\end{align*}$$"

# ╔═╡ 404bdcd3-f893-4b23-8ef9-6eaf5e3ee90a
md"### Problem 16.3 #14

(a) Find a function $f$ such that $\mathbf{F} = \nabla f$ and

(b) use part (a) to evaluate $\displaystyle\int_C \mathbf{F} \cdot d\mathbf{r}$ along the given curve $C$.

$$\begin{align*}
\mathbf{F}(x,y) &= (1 + xy) e^{xy} \mathbf{i} + x^2 e^{xy} \mathbf{j}, \\
C: r(t) &= \cos{t} \mathbf{i} + 2 \sin{t} \mathbf{j}, \; 0 \leq t \leq \pi / 2
\end{align*}$$
"

# ╔═╡ 14817188-729b-4676-92a6-80b9122e003c
md"#### Part (a)
$$\begin{align*}
\mathbf{F} = \nabla f &\implies f_y = x^2 e^{xy} \\
&\implies f(x, y) = \int f_y \;dy = xe^{xy} + g(x) \\
&\implies f_x = e^{xy} + xye^{xy} + g'(x) = e^{xy} + xye^{xy} \\
&\implies g'(x) = 0 \implies g(x) = \int g'(x) \;dx = K \\
&\implies f(x, y) = xe^{xy}
\end{align*}$$
"

# ╔═╡ 20782e09-d0f2-44e1-abcd-98a4491698bd
md"#### Part (b)
$$\begin{align*}
\int_C \mathbf{F} \cdot d\mathbf{r} &= f(r(\pi/2)) - f(0) \\
&= f(0, 2) - f(1, 0) \\
&= -1
\end{align*}$$
"

# ╔═╡ 3b7f6d9a-c567-46eb-a5f9-1509beba7e0b
md"### Problem 16.3 #17

(a) Find a function $f$ such that $\mathbf{F} = \nabla f$ and

(b) use part (a) to evaluate $\displaystyle\int_C \mathbf{F} \cdot d\mathbf{r}$ along the given curve $C$.

$$\begin{align*}
\mathbf{F}(x,y) &= yze^{xz} \mathbf{i} + e^{xz} \mathbf{j} + xye^{xz} \mathbf{k}, \\
C: r(t) &= (t^2 + 1) \mathbf{i} + (t^2 - 1) \mathbf{j} + (t^2 - 2t) \mathbf{k}, \; 0 \leq t \leq 2
\end{align*}$$
"

# ╔═╡ 9edca6dd-b0bb-4e08-9ce8-edb7efc06d5f
md"#### Part (a)

$$\begin{align*}
\mathbf{F} = \nabla f &\implies f_x = yze^{xz} \\
&\implies f(x, y, z) = \int f_x \;dx = ye^{xz} + h(y, z) \\
&\implies f_y = e^{xz} + h'(y, z) = e^{xz} \\
&\implies h'(y, z) = 0 \implies h(y, z) = \int h'(y, z) \;dy = j(z) \\
&\implies f(x, y, z) = ye^{xz} + j(z) \\
&\implies f_z = xye^{xz} + j'(z) = xye^{xz} \\
&\implies j'(z) = K \\
&\implies f(x, y, z) = ye^{xz}
\end{align*}$$
"

# ╔═╡ 07f3305f-ffc7-4181-9179-19141b880105
md"#### Part (b)
$$\begin{align*}
\int_C \mathbf{F} \cdot d\mathbf{r} &= f(r(2)) - f(r(0)) \\
&= f(5, 3, 0) - f(1, -1, 0) \\
&= 3e^0 + e^0 \\
&= 4
\end{align*}$$
"

# ╔═╡ 9f7b03ae-5d02-4c90-ac5b-bc4f1f68e273
md"## 16.4 Green's Theorem"

# ╔═╡ 9dff75e6-658f-4633-bcf4-c6b0b25e2063
md"### Problem 16.4 #5

Use Green's Theorem to evaluate the line integral along the given positively oriented curve.

$\int_C ye^x \;dx + 2e^x \;dy$ $C$ is the rectangle with vertices $(0,0)$, $(3,0)$, $(3,4)$, and $(0,4)$.
"

# ╔═╡ 3382b77a-01f5-4377-84b9-f64d863cab4f
md"
$$\begin{align*}
\frac{\partial Q}{\partial x} &= \frac{\partial}{\partial x} (2e^x) = 2e^x \\
\frac{\partial P}{\partial y} &= \frac{\partial}{\partial y} (ye^x) = e^x
\end{align*}$$

$$\begin{align*}
\int_C ye^x \;dx + 2e^x \;dy &= \iint\limits_D \left(\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}\right) \;dA \\
&= \int_0^3 \int_0^4 e^x \;dy \;dx \\
&= \int_0^3 ye^x \;\Big|_{y=0}^{y=4} \;dx \\
&= \int_0^3 4e^x \;dx \\
&= 4e^x \;\Big|_0^3 \\
&= 4e^3 - 4e^0 \\
&= 4(e^3 - 1)
\end{align*}$$
"

# ╔═╡ 57196605-c0cd-445f-a1a1-6480aac02e89
md"### Problem 16.4 #7

Use Green's Theorem to evaluate the line integral along the given positively oriented curve.

$\int_C (y + e^{\sqrt{x}}) \;dx + (2x + \cos{y^2}) \;dy$ $C$ is the boundary of the region enclosed by the parabolas $y = x^2$ and $x = y^2$
"

# ╔═╡ d086137a-8647-4215-b7f8-69a8d3d37877
let
	x = 0:0.01:1
	plot(x, [x -> x^2, x -> sqrt(x)], color = :black, lw = 2, fill = ([x->x], 0.5, :gray), legend = false, xticks = [1], yticks = [1], framestyle = :origin, size = (300,300))
end

# ╔═╡ 26d2eb00-09e7-4979-a024-cfb57c3529c3
md"
$$\begin{align*}
\frac{\partial Q}{\partial x} &= \frac{\partial}{\partial x} (2x + \cos{y^2}) = 2 \\
\frac{\partial P}{\partial y} &= \frac{\partial}{\partial y} \left(y + e^{\sqrt{x}}\right) = 1
\end{align*}$$

$$\begin{align*}
\int_C (y + e^{\sqrt{x}}) \;dx + (2x + \cos{y^2}) \;dy &= \iint\limits_D \left(\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}\right) \;dA \\
&= \int_0^1 \int_{x^2}^{\sqrt{x}} \;dy \;dx \\
&= \int_0^1 \left(\sqrt{x} - x^2\right) \;dx \\
&= \left[\frac{2}{3} x^{3/2} - \frac{1}{3} x^3\right]_0^1 \\
&= \frac{2}{3} - \frac{1}{3} \\
&= \frac{1}{3}
\end{align*}$$
"

# ╔═╡ e9c8d942-8c97-43c8-81f2-a5de2d27e175
md"### Problem 16.4 #9

Use Green's Theorem to evaluate the line integral along the given positively oriented curve.

$\int_C y^3 \;dx - x^3 \;dy$ $C$ is the circle $x^2 + y^2 = 4$
"

# ╔═╡ f4fb2eb1-c9cd-419e-b7cd-50bc375b3935
md"
$$\begin{align*}
\frac{\partial Q}{\partial x} &= \frac{\partial}{\partial x} (-x^3) = -3x^2 \\
\frac{\partial P}{\partial y} &= \frac{\partial}{\partial y} (y^3) = 3y^2
\end{align*}$$

$$\begin{align*}
\int_C y^3 \;dx - x^3 \;dy &= \iint\limits_D \left(\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}\right) \;dA \\
&= \iint\limits_D (-3x^2 - 3y^2) \;dA \\
&= \int_0^{2\pi} \int_0^2 -3r^3 \;dr \;d\theta \\
&= 2\pi \left[-\frac{3}{4} r^4\right]_0^2 \\
&= 2\pi \left[-\frac{3}{4} (2)^4\right] \\
&= -24\pi
\end{align*}$$
"

# ╔═╡ c8e21af3-3e1b-4e05-85e2-a5658d0f2713
md"### Problem 16.4 #11

Use Green's Theorem to evaluate $\displaystyle\int_C \mathbf{F} \cdot d\mathbf{r}$. (Check the orientation of the curve before applying the theorem.)

$\mathbf{F}(x, y) = \langle y \cos{x} - xy \sin{x}, xy + x \cos{x} \rangle$ $C$ is the triangle from $(0,0)$ to $(0,4)$ to $(2,0)$ to $(0,0)$
"

# ╔═╡ f175263d-d133-4712-bc53-46d98601e814
let
	P = [
		(0, 0)
		(0, 4)
		(2, 0)
		(0, 0)
		]
	plot(P, color = :black, lw = 2, fill = (0, 0.5, :gray), legend = false, xticks = [2], yticks = [4], framestyle = :origin, size = (300,300), arrow = true)
end

# ╔═╡ 8fb50f5e-ce95-4f96-91b4-67d88f19478f
md"
The triangle is negatively oriented since it is going clockwise.

$$\begin{align*}
\frac{\partial Q}{\partial x} &= \frac{\partial}{\partial x} (xy + x \cos{x}) = y - x \sin{x} + \cos{x} \\
\frac{\partial P}{\partial y} &= \frac{\partial}{\partial y} (y \cos{x} - xy \sin{x}) = \cos{x} - x \sin{x}
\end{align*}$$

$$\begin{align*}
\int_C \mathbf{F} \cdot d\mathbf{r} &= -\iint\limits_D \left(\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}\right) dA \\
&= -\int_0^2 \int_0^{4 - 2x} y \;dy \;dx \\
&= -\int_0^2 \left[\frac{1}{2} y^2\right]_0^{4 - 2x} \;dx \\
&= -\int_0^2 \left[\frac{1}{2} (4 - 2x)^2\right] dx
\end{align*}$$

$$\begin{align*}
u &= 4 - 2x \\
du &= -2 \;dx \\
\int_0^2 &\to \int_4^0 \to -\int_0^4
\end{align*}$$

$$\begin{align*}
\int_C \mathbf{F} \cdot d\mathbf{r} &= -\frac{1}{4} \int_0^4 u^2 \;du \\
&= -\frac{1}{4} \left[\frac{1}{3} u^3\right]_0^4 \\
&= -\frac{1}{12} (4)^3 \\
&= -\frac{16}{3}
\end{align*}$$
"

# ╔═╡ 18b7e78a-5a71-43a5-bde0-1d46b3a50fd8
md"## 16.5 Curl and Divergence"

# ╔═╡ c5aeeff3-56e5-4f9c-8313-e416290669cf
md"### Problem 16.5 #1

Find

(a) the curl and

(b) the divergence of the vector field.

$$\mathbf{F}(x, y, z) = xy^2 z^2 \mathbf{i} + x^2 yz^2 \mathbf{j} + x^2 y^2 z \mathbf{k}$$
"

# ╔═╡ 96e5812d-6192-46e5-afa4-16a2e863ddac
md"#### Part (a)
$$\begin{align*}
\text{curl } \mathbf{F} = \nabla \times \mathbf{F} &= \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ xy^2 z^2 & x^2 yz^2 & x^2 y^2 z \end{vmatrix} \\
&= (2x^2yz - 2x^2yz) \mathbf{i} + (2xy^2z - 2xy^2z) \mathbf{j} + (2xyz^2 - 2xyz^2) \mathbf{k} \\
&= \mathbf{0}
\end{align*}$$
"

# ╔═╡ bd563fcd-9b54-4d95-8474-1427e69462f0
md"#### Part (b)
$$\begin{align*}
\text{div } \mathbf{F} = \nabla \cdot \mathbf{F} &= \frac{\partial P}{\partial x} + \frac{\partial Q}{\partial y} + \frac{\partial R}{\partial z} \\
&= y^2 z^2 + x^2 z^2 + x^2 y^2
\end{align*}$$
"

# ╔═╡ db9995ec-6139-4eb4-a971-bd6e103909cd
md"### Problem 16.5 #3

Find

(a) the curl and

(b) the divergence of the vector field.

$$\mathbf{F}(x, y, z) = xye^z \mathbf{i} + yze^{x} \mathbf{k}$$
"

# ╔═╡ 511312ad-d27d-47a3-9569-1b79bb6a0199
md"#### Part (a)
$$\begin{align*}
\text{curl } \mathbf{F}(x, y, z) = \nabla \times \mathbf{F} &= \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ xye^z & 0 & yze^x \end{vmatrix} \\
&= ze^x \mathbf{i} + (xye^z - yze^x) \mathbf{j} - xe^z \mathbf{k}
\end{align*}$$
"

# ╔═╡ 0dd5ea3d-3150-484b-8c41-6f91fa153362
md"#### Part (b)
$$\begin{align*}
\text{div } \mathbf{F}(x, y, z) = \nabla \cdot \mathbf{F} &= \frac{\partial P}{\partial x} + \frac{\partial Q}{\partial y} + \frac{\partial R}{\partial z} \\
&= ye^z + ye^x \\
&= y(e^z + e^x)
\end{align*}$$
"

# ╔═╡ a1f2259a-b73c-4ec2-943d-4d40543236ca
md"### Problem 16.5 #5

Find

(a) the curl and

(b) the divergence of the vector field.

$$\mathbf{F}(x, y, z) = \frac{\sqrt{x}}{1 + z} \mathbf{i} + \frac{\sqrt{y}}{1 + x} \mathbf{j} + \frac{\sqrt{z}}{1 + y} \mathbf{k}$$
"

# ╔═╡ 2e8843e5-8e0f-4f32-8e15-c9ade1ba12fc
md"#### Part (a)
$$\begin{align*}
\text{curl } \mathbf{F} = \nabla \times \mathbf{F} &= \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ \frac{\sqrt{x}}{1 + z} & \frac{\sqrt{y}}{1 + x} & \frac{\sqrt{z}}{1 + y}\end{vmatrix} \\
&= -\frac{\sqrt{z}}{(1 + y)^2} \mathbf{i} - \frac{\sqrt{x}}{(1 + z)^2} \mathbf{j} - \frac{\sqrt{y}}{(1 + x)^2} \mathbf{k}
\end{align*}$$
"

# ╔═╡ 6ad86cee-5257-4823-aa17-c69d6685da53
md"#### Part (b)
$$\begin{align*}
\text{div } \mathbf{F} = \nabla \cdot \mathbf{F} &= \frac{\partial P}{\partial x} + \frac{\partial Q}{\partial y} + \frac{\partial R}{\partial z} \\
&= \frac{1}{2\sqrt{x}(1 + z)} + \frac{1}{2\sqrt{y}(1 + x)} + \frac{1}{2\sqrt{z}(1 + y)}
\end{align*}$$
"

# ╔═╡ db96603a-10f4-4402-95da-0656ffbf3342
md"### Problem 16.5 #7

Find

(a) the curl and

(b) the divergence of the vector field.

$$\mathbf{F}(x, y, z) = \langle e^x \sin{y}, e^y \sin{z}, e^z \sin{x} \rangle$$
"

# ╔═╡ 05fd92ac-d941-41ce-be93-9afeecbdd4d0
md"#### Part (a)
$$\begin{align*}
\text{curl } \mathbf{F} = \nabla \times \mathbf{F} &= \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ e^x \sin{y} & e^y \sin{z} & e^z \sin{x} \end{vmatrix} \\
&= \left\langle -e^y \cos{z}, -e^z \cos{x}, -e^x \cos{y}\right\rangle
\end{align*}$$
"

# ╔═╡ 01ef410a-029b-4b24-9e1e-c07c94c7bfbb
md"#### Part (b)
$$\begin{align*}
\text{div } \mathbf{F} = \nabla \cdot \mathbf{F} &= \frac{\partial P}{\partial x} + \frac{\partial Q}{\partial y} + \frac{\partial R}{\partial z} \\
&= e^x \sin{y} + e^y \sin{z} + e^z \sin{x}
\end{align*}$$
"

# ╔═╡ 20b60953-f881-4bee-bb39-84210fafacf3
md"## 16.7 Surface Integral"

# ╔═╡ 1a2bd283-c381-4407-8e68-768cc791c32f
md"
**For problems 16.7 #21-32:**

Evaluate the surface integral $\displaystyle\iint_S \mathbf{F} \cdot d\mathbf{S}$ for the given vector field $\mathbf{F}$ and the oriented surface $S$.
In other words, find the flux of $\mathbf{F}$ across $S$.
For closed surfaces, use the positive (outward) orientation."

# ╔═╡ 48267566-2370-4737-875f-35ad7230db0a
md"### Problem 16.7 #23

$\mathbf{F}(x, y, z) = xy \; \mathbf{i} + yz \; \mathbf{j} + zx \; \mathbf{k}$ $S$ is the part of the paraboloid $z = 4 - x^2 - y^2$ that lies above the square $0 \leq x \leq 1$, $0 \leq y \leq 1$, and has upward orientation
"

# ╔═╡ 819712e0-3163-4e14-b3d3-ac52bd329518
md"
$$\begin{align*}
\mathbf{n} &= \left\langle -\frac{\partial z}{\partial x}, -\frac{\partial z}{\partial y}, 1 \right\rangle \\
&= \left\langle 2x, 2y, 1 \right\rangle
\end{align*}$$

$$\begin{align*}
\iint_S \mathbf{F} \cdot d\mathbf{S} &= \iint_S \mathbf{F} \cdot \mathbf{n} \;dS \\
&= \iint\limits_D (xy)(2y) + (yz)(2y) + (zx)(1) \;dA \\
&= \iint\limits_D 2xy^2 + 2y^2z + xz \;dA \\
&= \int_0^1 \int_0^1 2xy^2 + 2y^2 (4 - x^2 - y^2) + x(4 - x^2 - y^2) \;dx \;dy \\
&= \int_0^1 \int_0^1 2xy^2 + 8y^2 - 2x^2y^2 - 2y^4 + 4x - x^3 - xy^2 \;dx \;dy \\
&= \int_0^1 \left[x^2y^2 + 8xy^2 - \frac{2}{3}x^3y^2 - 2xy^4 + 2x^2 - \frac{1}{4}x^4 - \frac{1}{2}x^2y^2\right]_{x = 0}^{x = 1} \;dy \\
&= \int_0^1 \left[y^2 + 8y^2 - \frac{2}{3} y^2 - 2y^4 + 2 - \frac{1}{4} - \frac{1}{2} y^2\right] dy \\
&= \int_0^1 \left[\frac{47}{6}y^2 - 2y^4 + \frac{7}{4}\right] dy \\
&= \left[\frac{47}{18} y^3 - \frac{2}{5} y^5 + \frac{7}{4} y\right]_0^1 \\
&= \frac{47}{18} - \frac{2}{5} + \frac{7}{4} \\
&= \frac{713}{180}
\end{align*}$$
"

# ╔═╡ 42594000-040e-4b75-b86f-9f06ee9df092
md"### Problem 16.7 #24

$\mathbf{F}(x, y, z) = -x \; \mathbf{i} - y \; \mathbf{j} + z^3 \; \mathbf{k}$ $S$ is the part of the cone $z = \sqrt{x^2 + y^2}$ between the planes $z = 1$ and $z = 3$ with downward orientation
"

# ╔═╡ 008cba82-e21c-46a1-850e-a0a487e488a1
md"
$$\begin{align*}
z = 1 &\implies x^2 + y^2 = 1 \implies r = 1 \\
z = 3 &\implies x^2 + y^2 = 9 \implies r = 3
\end{align*}$$

$$\mathbf{n} = \left\langle \frac{\partial z}{\partial x}, \frac{\partial z}{\partial y}, -1\right\rangle = \left\langle \frac{x}{\sqrt{x^2 + y^2}}, \frac{y}{\sqrt{x^2 + y^2}}, -1 \right\rangle$$

$$\begin{align*}
\iint_S \mathbf{F} \cdot d\mathbf{S} &= \iint_S \mathbf{F} \cdot \mathbf{n} \;dS \\
&= \iint_D (-x) \left(\frac{x}{\sqrt{x^2 + y^2}}\right) + (-y) \left(\frac{y}{\sqrt{x^2 + y^2}}\right) + (z^3) (-1) \;dA \\
&= \iint_D \frac{-x^2-y^2}{\sqrt{x^2 + y^2}} \;dA \\
&= \int_0^{2\pi} \int_1^3 \left(-\frac{r^2}{r} - r^3\right) r \;dr \;d\theta \\
&= \int_0^{2\pi} \int_1^3 -r^2 - r^4 \;dr \;d\theta \\
&= 2\pi \left[-\frac{1}{3} r^3 - \frac{1}{5} r^5\right]_{r = 1}^{r = 3} \;d\theta \\
&= 2\pi \left(-\frac{1}{3} 3^3 - \frac{1}{5} 3^5 + \frac{1}{3} + \frac{1}{5}\right) \\
&= 2\pi \left(-\frac{27}{3} - \frac{243}{5} + \frac{1}{3} + \frac{1}{5}\right) \\
&= 2\pi \left(-\frac{135}{15} - \frac{729}{15} + \frac{5}{15} + \frac{3}{15}\right) \\
&= 2\pi \left(-\frac{856}{15}\right) \\
&= -\frac{1712}{15} \pi
\end{align*}$$
"

# ╔═╡ b502ff97-0b4e-4d06-acdd-3b28c254f59c
md"### Problem 16.7 #28
$\mathbf{F}(x, y, z) = yz \; \mathbf{i} + zx \; \mathbf{j} + xy \; \mathbf{k}$ $S$ is the surface $z = x \sin{y}$, $0 \leq x \leq 2$, $0 \leq y \leq \pi$, with upward orientation.
"

# ╔═╡ 1aa4d9ee-2251-4619-a64d-d55efa851028
md"
$$\mathbf{n} = \left\langle -\frac{\partial z}{\partial x}, -\frac{\partial z}{\partial y}, 1\right\rangle = \left\langle -\sin{y}, -x \cos{y}, 1 \right\rangle$$

$$\begin{align*}
\iint_S \mathbf{F} \cdot d\mathbf{S} &= \iint_S \mathbf{F} \cdot \mathbf{n} \;dS \\
&= \iint\limits_D (yz)(-\sin{y}) + (zx)(-x \cos{y}) + (xy)(1) \;dA \\
&= \iint\limits_D -yz \sin{y} - x^2 z\cos{y} + xy \;dA \\
&= \int_0^{\pi} \int_0^2 -xy \sin^2{y} - x^3 \sin{y} \cos{y} + xy \;dx \;dy \\
&= \int_0^{\pi} \left[-\frac{1}{2} x^2 y \sin^2{y} - \frac{1}{4} x^4 \sin{y} \cos{y} + \frac{1}{2} x^2 y\right]_0^2 \; dy \\
&= \int_0^{\pi} \left(-2y \sin^2{y} - 4 \sin{y} \cos{y} + 2y\right) dy \\
&= -2 \int_0^{\pi} y \sin^2{y} \; dy - 4 \int_0^{\pi} \sin{y} \cos{y} \;dy + 2 \int_0^{\pi} y \;dy
\end{align*}$$
"

# ╔═╡ b22dcb63-fbfe-494f-854e-490137fb504a
md"
$$\begin{gather*}
u = y &\quad v = \frac{1}{2} y - \frac{1}{2} \sin{2y} \\
du = dy &\quad dv = \sin^2{y} \;dy
\end{gather*}$$

$$\begin{align*}
\int_0^{\pi} y \sin^2{y} \;dy &= \left[\frac{1}{2} y^2 - \frac{1}{2} y\sin{2y} - \frac{1}{4} y^2 - \frac{1}{4} \cos{2y}\right]_0^{\pi} \\
&= \frac{1}{2} \pi^2 - \frac{1}{2} \pi \sin{2\pi} - \frac{1}{4} \pi^2 - \frac{1}{4} \cos{2\pi} + \frac{1}{4} \cos{0} \\
&= \frac{\pi^2}{4}
\end{align*}$$"

# ╔═╡ cac899f9-79ea-4b58-8590-02a44c3efb18
md"
$$\begin{align*}
u &= \sin{y} \\
du &= \cos{y} \;dy \\
\int_0^{\pi} &\to \int_0^0
\end{align*}$$

$$\int_0^{\pi} \sin{y} \cos{y} \;dy = \int_0^0 u \;du = 0$$"

# ╔═╡ b81c90ae-67ad-4fa6-8cde-21b9ba410296
md"
$$\begin{align*}
\int_0^{\pi} y \;dy &= \left[\frac{1}{2} y^2\right]_0^{\pi} \\
&= \frac{\pi^2}{2}
\end{align*}$$"

# ╔═╡ af27c041-91ea-4b18-8bef-2e713a50b1df
md"
$$\begin{align*}
\iint_S \mathbf{F} \cdot d\mathbf{S} &= -2\left(\frac{\pi^2}{4}\right) + 2 \left(\frac{\pi^2}{2}\right) \\
&= -\frac{\pi^2}{2} + \pi^2 \\
&= \frac{\pi^2}{2}
\end{align*}$$"

# ╔═╡ 387d7dab-5ab6-4435-99f0-124fc5724802
md"## 16.8 Stokes' Theorem"

# ╔═╡ 279e521e-a165-4a79-bb86-b14d373da0cd
md"### Problem 16.8 #2

Use Stoke's Theorem to evaluate $\displaystyle\iint_S \text{curl } \mathbf{F} \cdot d\mathbf{S}$.

$\mathbf{F}(x,y,z) = x^2 \sin{z} \;\mathbf{i} + y^2 \; \mathbf{j} + xy \;\mathbf{k}$ $S$ is the part of the paraboloid $z = 1 - x^2 - y^2$ that lies above the $xy$-plane, oriented upward
"

# ╔═╡ 9e2de27d-1ca9-43f0-8b2e-c8f08ebf0fb2
md"$$\iint_S \text{curl } \mathbf{F} \cdot d\mathbf{S} = \int_C \mathbf{F} \cdot d\mathbf{r} = \int_C \mathbf{F}(\mathbf{r}(t)) \cdot \mathbf{r}'(t) \;dt$$"

# ╔═╡ 25614112-32b4-4568-b543-33d6c3de89b1
md"
$$z = 0 \implies x^2 + y^2 = 1$$

$$\mathbf{r}(t) = \cos{t} \;\mathbf{i} + \sin{t} \;\mathbf{j}$$

$$\mathbf{r}'(t) = -\sin{t} \;\mathbf{i} + \cos{t} \;\mathbf{j}$$"

# ╔═╡ 47a4c3fa-c8d6-40a5-b707-27c012f0b430
md"
$$\begin{align*}
\iint_S \text{curl } \mathbf{F} \cdot d\mathbf{S} &= \int_C \mathbf{F}(\mathbf{r}(t)) \cdot \mathbf{r}'(t) \;dt \\
&= \int_0^{2\pi} \mathbf{F}(\cos{t}, \sin{t}, 1) \cdot (-\sin{t} \;\mathbf{i} + \cos{t} \;\mathbf{j}) \;dt \\
&= \int_0^{2\pi} (\cos^2{t} \sin{0} \;\mathbf{i} + \sin^2{t} \;\mathbf{j} + \cos{t} \sin{t} \;\mathbf{k}) \cdot (-\sin{t} \;\mathbf{i} + \cos{t} \;\mathbf{j}) \;dt \\
&= \int_0^{2\pi} (\cos^2{t} \sin{0} \;\mathbf{i} + \sin^2{t} \;\mathbf{j} + \cos{t} \sin{t} \;\mathbf{k}) \cdot (-\sin{t} \;\mathbf{i} + \cos{t} \;\mathbf{j}) \;dt \\
&= \int_0^{2\pi} \sin^2{t} \cos{t} \;dt \\
&= \int_0^0 u^2 \;du \\
&= 0
\end{align*}$$"

# ╔═╡ 6ddc712c-9af4-4fdd-a802-95b382aacf61
md"### Problem 16.8 #9

Use Stokes' Theorem to evaluate $\displaystyle\int_C \mathbf{F} \cdot d\mathbf{r}$.
In each case $C$ is oriented counterclockwise as viewed from above.

$\mathbf{F}(x,y,z) = xy \;\mathbf{i} + yz \; \mathbf{j} + zx \; \mathbf{k}$ $C$ is the boundary of the part of the paraboloid $z = 1 - x^2 - y^2$ in the first octant
"

# ╔═╡ 855088ee-25a1-4b6c-9594-58c6a0b932fc
md"$$\int_C \mathbf{F} \cdot d\mathbf{r} = \iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S}$$"

# ╔═╡ 1d67e109-6bc0-44c0-b817-5a3c7eacf881
md"
$$\begin{align*}
\text{curl } \mathbf{F} = \nabla \times \mathbf{F} &= \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ xy & yz & zx \end{vmatrix} \\
&= -y \; \mathbf{i} - z \;\mathbf{j} - x \;\mathbf{k}
\end{align*}$$
"

# ╔═╡ 77ceb68c-dc33-4d7c-8854-b7613757d93e
md"
$$\mathbf{n} = -\frac{\partial z}{\partial x} \mathbf{i} -\frac{\partial z}{\partial y} \mathbf{j} + \mathbf{k} = 2x \;\mathbf{i} + 2y \;\mathbf{j} + \mathbf{k}$$"

# ╔═╡ 3dca7b78-64c9-44f1-a1f0-f97521037338
md"
$$\begin{align*}
\int_C \mathbf{F} \cdot d\mathbf{r} &= \iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S} \\
&= \iint\limits_D (-y)(2x) + (-z)(2y) + (-x)(1) \;dA \\
&= \iint\limits_D -2xy - 2yz - x \;dA \\
&= \iint\limits_D -2xy - 2y(1 - x^2 - y^2) - x \;dA \\
&= \iint\limits_D -2xy - 2y + 2x^2y + 2y^3 - x \;dA \\
&= \iint\limits_D -2xy - 2y + 2y(x^2 + y^2) - x \;dA \\
&= \int_0^{\pi/2} \int_0^1 \left[-2(r\cos{\theta})(r\sin{\theta}) - 2r\sin{\theta} + 2(r\sin{\theta})r^2 - r\cos{\theta}\right] r \;dr \;d\theta \\
&= \int_0^{\pi/2} \int_0^1 \left[-2r^3\cos{\theta}\sin{\theta} - 2r^2\sin{\theta} + 2r^4\sin{\theta} - r^2\cos{\theta}\right] dr \;d\theta \\
&= \int_0^{\pi/2} \left[-\frac{1}{2} r^4 \cos{\theta} \sin{\theta} - \frac{2}{3} r^3 \sin{\theta} + \frac{2}{5} r^5 \sin{\theta} - \frac{1}{3} r^3 \cos{\theta}\right]_{r = 0}^{r = 1} \; d\theta \\
&= \int_0^{\pi/2} \left[-\frac{1}{2} \cos{\theta} \sin{\theta} - \frac{2}{3} \sin{\theta} + \frac{2}{5} \sin{\theta} - \frac{1}{3} \cos{\theta}\right] d\theta \\
&= -\frac{1}{2} \int_0^{\pi/2} \cos{\theta} \sin{\theta} \; d\theta - \frac{2}{3} \int_0^{\pi/2} \sin{\theta} d\theta + \frac{2}{5} \int_0^{\pi/2} \sin{\theta} d\theta - \frac{1}{3} \int_0^{\pi/2} \cos{\theta} d\theta
\end{align*}$$"

# ╔═╡ 61f28243-45d2-4ad6-8987-c5b0d61d1648
md"
$$\begin{align*}
u &= \sin{\theta} \\
du &= \cos{\theta} \;d\theta \\
\int_0^{\pi / 2} &\to \int_0^1
\end{align*}$$

$$\begin{align*}
\int_0^{\pi/2} \cos{\theta} \sin{\theta} \;d\theta &= \int_0^1 u \;du \\
&= \frac{1}{2} u^2 \;\Big|_0^1 \\
&= \frac{1}{2}
\end{align*}$$"

# ╔═╡ d6679b5c-9dd7-413e-955b-adac7f2bec2d
md"
$$\begin{align*}
\int_C \mathbf{F} \cdot d\mathbf{r} &= -\frac{1}{2} \left(\frac{1}{2}\right) - \frac{2}{3} \Big[-\cos{\theta}\Big]_0^{\pi/2} + \frac{2}{5} \Big[-\cos{\theta}\Big]_0^{\pi/2} - \frac{1}{3} \Big[\sin{\theta}\Big]_0^{\pi/2} \\
&= -\frac{1}{4} - \frac{2}{3} + \frac{2}{5} - \frac{1}{3} \\
&= -\frac{17}{20}
\end{align*}$$"

# ╔═╡ 9e60628c-67a1-4ac3-80cb-1da76d33beb3
md"### Problem 16.8 #11(a)

Use Stokes' Theorem to evaluate $\displaystyle\int_C \mathbf{F} \cdot d\mathbf{r}$, where

$$\mathbf{F}(x, y, z) = x^2 z \;\mathbf{i} + xy^2 \;\mathbf{j} + z^2 \;\mathbf{k}$$ and $C$ is the curve of intersection of the plane $x + y + z = 1$ and the cylinder $x^2 + y^2 = 9$, oriented counterclockwise as viewed from above.
"

# ╔═╡ 840178f9-ba68-4424-b023-b1c3e60f919c
md"$$\int_C \mathbf{F} \cdot d\mathbf{r} = \iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S}$$"

# ╔═╡ e7d17f65-b4b6-4c32-b34e-8e58a7646d26
md"
$$\text{curl } \mathbf{F} = \nabla \times \mathbf{F} = \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ x^2z & xy^2 & z^2 \end{vmatrix} = x^2 \mathbf{j} + y^2 \;\mathbf{k}$$
"

# ╔═╡ e2e9aeec-387a-4d51-81a8-34ddd55ae671
md"
$$g(x, y) = z = 1 - x - y$$

$$\mathbf{n} = -\frac{\partial g}{\partial x} \mathbf{i} - \frac{\partial g}{\partial y} \mathbf{j} + \mathbf{k} = \mathbf{i} + \mathbf{j} + \mathbf{k}$$
"

# ╔═╡ c80fd6cc-4c38-41c9-aca8-cece1f22c541
md"$$\text{curl } \mathbf{F} \cdot \mathbf{n} = x^2 + y^2$$"

# ╔═╡ 9c6bf0ca-8ad5-4833-a1d4-a005ff9f8980
md"
$$\begin{align*}
\int_C \mathbf{F} \cdot d\mathbf{r} = \iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} &= \iint\limits_D x^2 + y^2 \;dA \\
&= \int_0^{2\pi} \int_0^3 r^3 \;dr \;d\theta \\
&= 2\pi\left[\frac{1}{4} r^4\right]_0^3 \\
&= \left(2\pi\right) \left(\frac{3^4}{4}\right) \\
&= \frac{81}{2} \pi
\end{align*}$$"

# ╔═╡ c8ba9ba0-0f34-40a4-9d58-06b0452eeaa4
md"### Problem 16.8 #14

Verify that Stokes' Theorem is true for the given vector field $\mathbf{F}$ and surface $S$.

$\mathbf{F}(x,y,z) = -2yz \;\mathbf{i} + y \;\mathbf{j} + 3x \;\mathbf{k}$ $S$ is the part of the paraboloid $z = 5 - x^2 - y^2$ that lies above the plane $z = 1$, oriented upward
"

# ╔═╡ 2177f897-50f4-4e8d-8b9f-7dd47aac5de9
md"
We want to verify that

$$\int_C \mathbf{F} \cdot d\mathbf{r} = \iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S}$$"

# ╔═╡ 8afb404d-0181-49ac-9939-ef89ed0ce2bc
md"First, I'll choose to evaluate the LHS:

$\int_C \mathbf{F} \cdot d\mathbf{r} = \int_C \mathbf{F}(\mathbf{r}(t)) \cdot \mathbf{r}'(t) \;dt$"

# ╔═╡ 4ed82c57-8652-4f33-9462-ea67d2272572
md"
$$z = 1 \implies x^2 + y^2 = 4 \implies r = 2$$

$$\mathbf{r}(t) = \langle 2 \cos{t}, 2 \sin{t}, 1 \rangle$$

$$\mathbf{r}'(t) = \langle -2 \sin{t}, 2 \cos{t}, 0 \rangle$$

$$\mathbf{F}(\mathbf{r}(t)) = \langle -4\sin{t}, 2\sin{t}, 6\cos{t} \rangle$$

$$\mathbf{F}(\mathbf{r}(t)) \cdot \mathbf{r}'(t) = 8 \sin^2{t} + 4 \sin{t} \cos{t}$$
"

# ╔═╡ d977a503-426c-440a-a9ba-b742d006944f
md"
$$\begin{align*}
\int_C \mathbf{F} \cdot d\mathbf{r} &= \int_0^{2\pi} 8 \sin^2{t} + 4 \sin{t} \cos{t} \;dt \\
&= \int_0^{2\pi} 8 \sin^2{t} \;dt + \int_0^{2\pi} 4 \sin{t} \cos{t} \;dt \\
&= 4 \int_0^{2\pi} (1 - \cos{2t}) \;dt + 4 \int_0^{2\pi} \sin{t} \cos{t} \;dt \\
&= 4 \left[t - \frac{1}{2} \sin{2t}\right]_0^{2\pi} + 4 \left[\frac{1}{2} u^2\right]_0^0 \\
&= 8\pi
\end{align*}$$"

# ╔═╡ f28f02eb-3100-4a61-a19c-dbf12c3e053e
md"Next, I'll evalute the RHS:

$$\iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S}$$"

# ╔═╡ 3f6648d4-7ae3-4614-a1f7-51cd8474f259
md"
$$\begin{align*}
\text{curl } \mathbf{F} = \nabla \times \mathbf{F} &= \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ -2yz & y & 3x \end{vmatrix} \\
&= (-2y - 3) \;\mathbf{j} + 2z \;\mathbf{k}
\end{align*}$$"

# ╔═╡ 89a6152c-7b8b-4546-a26f-c5bd79ef76be
md"$$\mathbf{n} = -\frac{\partial z}{\partial x} \mathbf{i} - \frac{\partial z}{\partial y} \mathbf{j} + \mathbf{k} = 2x \;\mathbf{i} + 2y \;\mathbf{j} + \mathbf{k}$$"

# ╔═╡ ddef09b4-3b07-424a-9096-15a4bb39cf42
md"
$$\begin{align*}
\text{curl } \mathbf{F} \cdot \mathbf{n} &= (-2y - 3)(2y) + 2z \\
&= -4y^2 - 6y + 2(5 - x^2 - y^2) \\
&= -4y^2 - 6y + 10 - 2x^2 - 2y^2 \\
&= - 6y^2 - 6y + 10 - 2x^2
\end{align*}$$"

# ╔═╡ daa81c5e-fb03-4ab0-9f61-16056f8d7fab
md"
$$\begin{align*}
\iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S} &= \iint\limits_D -2x^2 - 6y^2 - 6y + 10 \;dA \\
&= \int_0^{2\pi} \int_0^2 -2r^3 \cos^2{\theta} - 6r^3 \sin^2{\theta} - 6r^2\sin{\theta} + 10r \;dr \;d\theta \\
&= \int_0^{2\pi} \left[-\frac{1}{2} r^4 \cos^2{\theta} - \frac{3}{2} r^4 \sin^2{\theta} - 2r^3 \sin{\theta} + 5r^2\right]_{r=0}^{r=2} \;d\theta \\
&= \int_0^{2\pi} \left[-4 (1 - \sin{2\theta}) - 12 (1 - \cos{2\theta}) - 16 \sin{\theta} + 20\right] d\theta \\
&= \left[-4\left(\theta + \frac{1}{2} \cos{2\theta}\right) - 12\left(\theta - \frac{1}{2} \sin{2\theta}\right) + 16 \cos{\theta} + 20\theta\right]_0^{2\pi} \\
&= \left[-4\left(2\pi + \frac{1}{2}\right) - 12\left(2\pi\right) + 16 + 40\pi\right] - \left[-4\left(\frac{1}{2}\right) + 16\right] \\
&= -8\pi - 2 - 24\pi + 16 + 40\pi + 2 - 16 \\
&= 40\pi - 32\pi \\
&= 8\pi
\end{align*}$$"

# ╔═╡ f0ac28ef-bfdc-477d-a563-1f62fc251b06
md"
We verified that Stokes' Theorem is true for the vector field $\mathbf{F}$ since

$$\int_C \mathbf{F} \cdot d\mathbf{r} = \iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S} = 8\pi$$"

# ╔═╡ 51b34845-de31-4868-9323-6cbaa1dee0f5
md"### Problem 16.8 #15

Verify that Stokes' Theorem is true for the given vector field $\mathbf{F}$ and surface $S$.

$\mathbf{F}(x,y,z) = y \;\mathbf{i} + z \;\mathbf{j} + x \;\mathbf{k}$ $S$ is the hemisphere $x^2 + y^2 + z^2 = 1$, $y \leq 0$, oriented in the direction of the positive $y$-axis
"

# ╔═╡ a3438fde-5a9d-464f-8d46-f43b7c3bbbc8
md"
We want to verify that

$$\int_C \mathbf{F} \cdot d\mathbf{r} = \iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S}$$"

# ╔═╡ 9103fa12-1c1b-4908-ab80-0cbb085b4745
md"
First, I'll choose to evaluate the LHS:

$$\int_C \mathbf{F} \cdot d\mathbf{r} = \int_C \mathbf{F}(\mathbf{r}(t)) \cdot \mathbf{r}'(t) \;dt$$"

# ╔═╡ c508a50e-055a-4fc8-bd20-d80c67e3c042
md"
$y = 0 \implies x^2 + z^2 = 1$

$\mathbf{r}(t) = \langle \cos{t}, 0, \sin{t} \rangle$

$\mathbf{r}'(t) = \langle -\sin{t}, 0, \cos{t} \rangle$

$\mathbf{F}(\mathbf{r}(t)) = \langle 0, \sin{t}, \cos{t} \rangle$

$\mathbf{F}(\mathbf{r}(t)) \cdot \mathbf{r}'(t) = \cos^2{t}$
"

# ╔═╡ 82ccaa25-4881-4c77-bfd6-3f0353c1c7c6
md"
$$\begin{align*}
\int_C \mathbf{F} \cdot d\mathbf{r} &= -\int_C \cos^2{t} \;dA \\
&= -\int_0^{2\pi} \frac{1}{2} (1 - \sin{2t}) \;dt \\
&= -\left[\frac{1}{2} t + \frac{1}{4} \cos{2t}\right]_0^{2\pi} \\
&= -\left(\pi + \frac{1}{4} - \frac{1}{4}\right) \\
&= -\pi
\end{align*}$$
"

# ╔═╡ edb4ec96-6e3c-4e50-b452-31e8bc48435d
md"
Next, I'll evaluate the RHS:

$$\iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S}$$"

# ╔═╡ 99444e96-5180-4622-a1f1-eb8e63e540a1
md"
$$\begin{align*}
\text{curl } \mathbf{F} = \nabla \times \mathbf{F} &= \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ y & z & x \end{vmatrix} \\
&= \langle -1, -1, -1 \rangle
\end{align*}$$"

# ╔═╡ 97f42ed6-29a7-445f-a0a8-30c7726f9c75
md"
$$g(x, z) = y = \sqrt{1 - x^2 - z^2}$$

$$\mathbf{n} = \left\langle \frac{\partial g}{\partial x}, \frac{\partial g}{\partial z}, -1\right\rangle = \left\langle \frac{-x}{\sqrt{1 - x^2 - z^2}}, \frac{-z}{\sqrt{1 - x^2 - z^2}}, -1 \right\rangle$$"

# ╔═╡ d5a7439f-74c3-4a10-badc-82ea5e265780
md"
$$\begin{align*}
\text{curl } \mathbf{F} \cdot \mathbf{n} &= \frac{x + z}{\sqrt{1 - x^2 - z^2}} + 1
\end{align*}$$"

# ╔═╡ 7b12f843-9bbd-44a9-aabf-f64f0621f1b6
md"
$$\begin{align*}
\iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S} &= -\iint\limits_D \frac{x}{\sqrt{1 - x^2 - z^2}} + \frac{z}{\sqrt{1 - x^2 - z^2}} + 1 \;dA \\
&= -\int_0^1 \int_0^{2\pi}  \left(\frac{r\cos{\theta}}{\sqrt{1 - r^2}} + \frac{r\sin{\theta}}{\sqrt{1 - r^2}} + 1\right) r \;d\theta \;dr \\
&= -\int_0^1 \int_0^{2\pi} \left(\frac{r^2\cos{\theta}}{\sqrt{1 - r^2}} + \frac{r^2\sin{\theta}}{\sqrt{1 - r^2}} + r\right) d\theta \;dr \\
&= -\int_0^1 \left[\frac{r^2\sin{\theta}}{\sqrt{1 - r^2}} - \frac{r^2\cos{\theta}}{\sqrt{1 - r^2}} + r\theta\right]_{\theta = 0}^{\theta = 2\pi} \;dr \\
&= -\int_0^1 \left[- \frac{r^2}{\sqrt{1 - r^2}} + 2\pi r + \frac{r^2}{\sqrt{1 - r^2}}\right]_{\theta = 0}^{\theta = 2\pi} \;dr \\
&= -\int_0^1 2\pi r \;dr \\
&= - \pi r^2 \;\Big|_0^1 \\
&= -\pi
\end{align*}$$"

# ╔═╡ 7b1390a2-f2eb-4be9-8963-3e817c1180cc
md"
We verified that Stokes' Theorem is true for the vector field $\mathbf{F}$ since

$$\int_C \mathbf{F} \cdot d\mathbf{r} = \iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S} = -\pi$$
"

# ╔═╡ d5016df1-4b30-4b28-bbb1-9ca6e400eafa
md"## Chapter 16 Review"

# ╔═╡ 90d6273c-af53-4526-86a4-9b410bbb4f08
md"### Problem 16 #16
Use Green's Theorem to evaluate

$$\int_C \sqrt{1 + x^3} \;dx + 2xy \;dy$$ where $C$ is the triangle with vertices $(0,0)$, $(1,0)$, and $(1,3)$.
"

# ╔═╡ 3073a07d-8ee8-48a4-ab63-034b69cf017c
let
	P = [
		(0,0)
		(1,0)
		(1,3)
		(0,0)
		]
	plot(P, color = :black, lw = 2, fill = (0, 0.5, :gray), legend = false, framestyle = :origin, xticks = [1], yticks = [3], size = (300,300))
end

# ╔═╡ b1bb9de8-df0b-4ff3-aca0-19b7f080ccb8
md"
**Green's Theorem**

$$\int_C P \;dx + Q \;dy = \iint\limits_D \left(\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}\right) dx \;dy$$"

# ╔═╡ 15c29766-f9c6-4421-8dac-a3c08219f49b
md"
$$\begin{align*}
\frac{\partial Q}{\partial x} &= \frac{\partial}{\partial x}(2xy) = 2y \\
\frac{\partial P}{\partial y} &= \frac{\partial}{\partial y}\left(\sqrt{1 + x^3}\right) = 0
\end{align*}$$

$$\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} = 2y$$"

# ╔═╡ 3f6b82ae-0d67-44d0-8560-8252883f163b
md"
$$\begin{align*}
\int_C \sqrt{1 + x^3} \;dx + 2xy \;dy &= \int_0^1 \int_0^{3x} 2y \;dy \;dx \\
&= \int_0^1 \Big[y^2\Big]_{y=0}^{y=3x} \;dx \\
&= \int_0^1 9x^2 \;dx \\
&= 3x^3 \;\Big|_0^1 \\
&= 3
\end{align*}$$"

# ╔═╡ 976542fe-da7c-4560-a3e8-b8d4c99566ff
md"### Problem 16 #17

Use Green's Theorem to evaluate $\displaystyle\int_C x^2 y \;dx - xy^2 \;dy$, where $C$ is the circle $x^2 + y^2 = 4$ with counterclockwise orientation.
"

# ╔═╡ be49ed1b-cf6f-404e-94cd-ab5153eaa18e
md"
**Green's Theorem**

$$\int_C P \;dx + Q \;dy = \iint\limits_D \left(\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}\right) dA$$"

# ╔═╡ d8cf812a-dad7-49b8-8902-017cf95f66b4
md"
$$\begin{align*}
\frac{\partial Q}{\partial x} &= \frac{\partial}{\partial x} (-xy^2) = -y^2 \\
\frac{\partial P}{\partial y} &= \frac{\partial}{\partial y} (x^2 y) = x^2 \\
\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} &= -y^2 - x^2 = -(x^2 + y^2)
\end{align*}$$"

# ╔═╡ 337f6102-c5bb-4aae-ab61-11275fb82a53
md"
$$\begin{align*}
\int_C x^2y \;dx - xy^2 \;dy &= \iint_D -(x^2 + y^2) \;dA \\
&= \int_0^{2\pi} \int_0^2 -r^3 \;dr \;d\theta \\
&= 2\pi \left[-\frac{1}{4} r^4\right]_0^2 \\
&= -8\pi
\end{align*}$$"

# ╔═╡ 8d850b3d-1c1c-42ac-8b7d-3cc1ec71e2c0
md"### Problem 16 #27

Evaluate the surface integral.

$\iint_S z \;dS$ where $S$ is the part of the paraboloid $z = x^2 + y^2$ that lies under the plane $z = 4$
"

# ╔═╡ 0071a1b5-3b33-486e-8ca0-a277a31a9e65
md"
**Surface integral**

$$\iint_S f(x, y) \;dS = \iint\limits_D f(x, y) \sqrt{\left(\frac{\partial z}{\partial x}\right)^2 + \left(\frac{\partial z}{\partial y}\right)^2 + 1} \;dA$$"

# ╔═╡ 0c9398f7-3e9c-45d1-97a1-d03335d71ced
md"
$$\begin{align*}
\frac{\partial z}{\partial x} &= 2x \\
\frac{\partial z}{\partial y} &= 2y
\end{align*}$$"

# ╔═╡ 8d31cfca-9275-4415-bea3-f973c5084f33
md"
$$\begin{align*}
\iint_S z \;dS &= \iint\limits_D (x^2 + y^2) \sqrt{4x^2 + 4x^2 + 1} \;dA \\
&= \int_0^{2\pi} \int_0^2 r^2 \sqrt{4r^2 + 1} \;r \;dr \;d\theta
\end{align*}$$"

# ╔═╡ 563c1bef-7014-49bc-9308-95f2ad326623
md"
$$\begin{align*}
u &= 4r^2 + 1 \\
r &= \sqrt{\frac{1}{4}u - \frac{1}{4}} \\
du &= 8r \;dr \\
\int_0^2 &\to \int_1^{17}
\end{align*}$$

$$\begin{align*}
\int_0^2 r^2 \sqrt{4r^2 + 1} \;dr &= \frac{1}{8} \int_1^{17} \left(\frac{1}{4} u - \frac{1}{4}\right) \sqrt{u} \;du \\
&= \frac{1}{8} \int_1^{17} \frac{1}{4} u^{3/2} - \frac{1}{4} u^{1/2} \;du \\
&= \frac{1}{8} \left[\frac{1}{10} u^{5/2} - \frac{1}{6} u^{3/2}\right]_1^{17} \\
&= \frac{1}{8} \left[\frac{(17)^2 \sqrt{17}}{10} - \frac{17 \sqrt{17}}{6} - \frac{1}{10} + \frac{1}{6}\right] \\
&= \frac{1}{8} \left(\frac{391 \sqrt{17} + 1}{15}\right) \\
&= \frac{391 \sqrt{17} + 1}{120}
\end{align*}$$"

# ╔═╡ b165e06b-8550-4e41-8866-c88c97943eb4
md"
$$\iint_S z \;dS = 2\pi \left(\frac{391 \sqrt{17} + 1}{120}\right) = \frac{391\sqrt{17} + 1}{60} \pi$$"

# ╔═╡ 3c8f0ed3-5c8a-4713-81d2-7da2b4ba67b2
md"### Problem 16 #31

Verify that Stoke's Theorem is true for the vector field $\mathbf{F}(x,y,z) = x^2 \;\mathbf{i} + y^2 \;\mathbf{j} + z^2 \mathbf{k}$, where $S$ is the part of the paraboloid $z = 1 - x^2 - y^2$ that lies above the $xy$-plane and $S$ has upward orientation.
"

# ╔═╡ 06688b04-1fad-444b-8454-01a143b9dcf4
md"
**Stokes' Theorem**

$$\int_C \mathbf{F} \cdot d\mathbf{r} = \iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S}$$
"

# ╔═╡ 2aa3f463-3cac-4a6f-8a8d-77fd35089fe5
md"First, I'll evaluate the LHS:

$$\int_C \mathbf{F} \cdot d\mathbf{r} = \int_C \mathbf{F}(\mathbf{r}(t)) \cdot \mathbf{r}'(t) \;dt$$"

# ╔═╡ 8801aad9-492a-46f9-bdbc-c431372218b7
md"
$$z = 0 \implies x^2 + y^2 = 1$$

$$\mathbf{r}(t) = \langle \cos{t}, \sin{t}, 0 \rangle$$

$$\mathbf{r}'(t) = \langle -\sin{t}, \cos{t}, 0 \rangle$$

$$\mathbf{F}(\mathbf{r}(t)) = \langle \cos^2{t}, \sin^2{t}, 0 \rangle$$

$$\mathbf{F}(\mathbf{r}(t)) \cdot \mathbf{r}'(t) = -\sin{t} \cos^2{t} + \cos{t} \sin^2{t}$$
"

# ╔═╡ c25c97d0-0089-4d0d-bbdc-99bfefdcec87
md"
$$\begin{align*}
\int_C \mathbf{F} \cdot d\mathbf{r} &= \int_C -\sin{t} \cos^2{t} + \cos{t} \sin^2{t} \;dt \\
&= \int_0^{2\pi} -\sin{t} \cos^2{t} \;dt + \int_0^{2\pi} \cos{t} \sin^2{t} \;dt
\end{align*}$$"

# ╔═╡ adda85bd-6800-40ee-9eac-37d4607ff840
md"
$$\begin{align*}
u &= \cos{t} \\
du &= -\sin{t} \;dt \\
\int_0^{2\pi} &\to \int_1^1
\end{align*}$$

$$\begin{align*}
\int_0^{2\pi} -\sin{t} \cos^2{t} \;dt &= \int_1^1 u^2 \;du = 0
\end{align*}$$"

# ╔═╡ a03ce9fe-42d0-4e4a-8a2a-b5957fb7990a
md"
$$\begin{align*}
u &= \sin{t} \\
du &= \cos{t} \;dt \\
\int_0^{2\pi} &\to \int_0^0
\end{align*}$$

$$\begin{align*}
\int_0^{2\pi} \cos{t} \sin^2{t} \;dt &= \int_0^0 u^2 \;du = 0
\end{align*}$$"

# ╔═╡ 2fbcfb4c-3b3c-47f7-b098-9c9b0c829169
md"$$\int_C \mathbf{F} \cdot d\mathbf{r} = 0$$"

# ╔═╡ dc9236f2-6935-4a7e-a349-77ee52b4a912
md"Next, I'll evaluate the RHS:

$$\iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S}$$"

# ╔═╡ fb39a09e-a1ec-46e2-a143-176954322b90
md"
$$\text{curl } \mathbf{F} = \nabla \times \mathbf{F} = \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ x^2 & y^2 & z^2 \end{vmatrix} = \mathbf{0}$$"

# ╔═╡ 8530a442-2469-4eca-9bd1-347bde864d2c
md"
$$\iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S} = \iint_S \mathbf{0} \;d\mathbf{S} = 0$$"

# ╔═╡ ef814e3f-0179-432d-b2df-4d66260d5a86
md"
We have verified Stokes' theorem is true for the vector field $\mathbf{F}$ since

$$\int_C \mathbf{F} \cdot d\mathbf{r} = \iint_S \text{curl } \mathbf{F} \cdot \mathbf{n} \;d\mathbf{S} = 0$$"

# ╔═╡ b8e98350-f5ef-4e1f-9ddf-633d5707ff41
md"## Additional Homework Problems"

# ╔═╡ 42b9145c-381d-495b-9d99-1e486fb05444
md"### Problem A12 #1

Let $\overrightarrow{AB} = \langle 2, 3, 1 \rangle$.
If the coordinates of $A$ are $(2,1,5)$, what are the coordinates of $B$?"

# ╔═╡ fd7c15d0-d09e-408f-a036-e95b7f71e770
let
	AB = (2, 3, 1)
	A = (2, 1, 5)
	P = [
		(0,0,0)
		A
		A .+ AB
		]
	plot(P, color = :black, lw = 2, legend = false, size = (300,300))
	plot!([P[end]; P[1]], lw = 3)
end

# ╔═╡ b917bef3-020c-4106-acb7-a1479d077e8e
md"
$$\begin{align*}
\overrightarrow{AB} = B - A &= \langle 2, 3, 1 \rangle \\
B - (2, 1, 5) &= \langle 2, 3, 1 \rangle \\
B &= (4, 4, 6)
\end{align*}$$
"

# ╔═╡ abd262b0-5215-439d-b4ae-5f61f74fe7f7
md"### Problem A12 #2

Let $\mathbf{a} \cdot \mathbf{b} = 3$ and $\mathbf{a} \cdot \mathbf{c} = 7$.
Find $\mathbf{a} \cdot (3\mathbf{b} - \mathbf{c}).$"

# ╔═╡ 47f71836-1b66-4340-9f6d-8139ca471932
md"
$$\begin{align*}
\mathbf{a} \cdot (3\mathbf{b} - \mathbf{c}) &= 3 (\mathbf{a} \cdot \mathbf{b}) - (\mathbf{a} \cdot \mathbf{c}) \\
&= 3(3) - (7) \\
&= 2
\end{align*}$$
"

# ╔═╡ 16b30a78-b463-41a4-8887-784975ad8eb3
md"### Problem A12 #3

Let $\mathbf{a} \cdot \mathbf{b} = 3$ and $|\mathbf{a}| = 4$, $|\mathbf{b}| = 2$.
Find $|\mathbf{a} - 2\mathbf{b}|$.
"

# ╔═╡ 9e030cc4-0afa-4426-a1f1-415a7857ffdb
md"
$$\begin{align*}
| \mathbf{a} - 2\mathbf{b} | &= \sqrt{(\mathbf{a} - 2\mathbf{b})^2} \\
&= \sqrt{(\mathbf{a} - 2\mathbf{b})(\mathbf{a} - 2\mathbf{b})} \\
&= \sqrt{\mathbf{a}^2 - 4 (\mathbf{a} \cdot \mathbf{b}) + 4 \mathbf{b}^2} \\
&= \sqrt{|\mathbf{a}|^2 - 4(3) + 4 |\mathbf{b}|^2} \\
&= \sqrt{(4)^2 - 12 + 4(2)^2} \\
&= \sqrt{16 + 16 - 12} \\
&= 2 \sqrt{5}
\end{align*}$$
"

# ╔═╡ 18357b7e-898d-4a67-910d-f753d261541c
md"### Problem A15 #1a

Calculate the double integral over a given rectangle $R$.

$$\iint_R x^2 \cos{y} e^{x\sin{y}} \;dA, \quad R = \{(x,y) \mid 1 \leq x \leq 2, \;0 \leq y \leq \pi / 2\}$$"

# ╔═╡ 9c725239-1fc2-4b02-b972-842108684e31
md"
$$\begin{align*}
\iint_R x^2 \cos{y} e^{x\sin{y}} \;dA &= \int_1^2 \int_0^{\pi/2} x^2 \cos{y} e^{x\sin{y}} \;dy \;dx
\end{align*}$$"

# ╔═╡ 9bcdfe20-4a32-4258-97d4-a4c47d696c3c
md"
$$\begin{align*}
u &= x \sin{y} \\
du &= x \cos{y} \;dy \\
\int_0^{\pi/2} &\to \int_0^x
\end{align*}$$

$$\begin{align*}
\int_0^{\pi/2} x^2 \cos{y} e^{x\sin{y}} \;dy &= x \int_0^x e^u \;du \\
&= x \Big[e^u\Big]_0^x \\
&= x (e^x - e^0) \\
&= xe^x - x
\end{align*}$$"

# ╔═╡ a96acb8f-2d1a-4ffd-960d-17983293b61b
md"
$$\begin{align*}
\int_1^2 \int_0^{\pi/2} x^2 \cos{y} e^{x\sin{y}} \;dy \;dx &= \int_1^2 xe^x - x \;dx \\
&= \int_1^2 xe^x \;dx - \int_1^2 x \;dx
\end{align*}$$"

# ╔═╡ c8cd710f-4dee-47c2-a0e0-e74fe5455c19
md"
$$\begin{gather*}
u = x &\quad v = e^x \\
du = dx &\quad dv = e^x \;dx
\end{gather*}$$

$$\begin{align*}
\int_1^2 xe^x \;dx &= xe^x - e^x \; \Big|_1^2 \\
&= 2e^2 - e^2 - e^1 + e^1 \\
&= e^2
\end{align*}$$"

# ╔═╡ 54d082d8-da12-43ae-b937-23357470e791
md"
$$\begin{align*}
\int_1^2 xe^x \;dx - \int_1^2 x \;dx &= e^2 - \left[\frac{1}{2} x^2\right]_1^2 \\
&= e^2 - \left[2 - \frac{1}{2}\right] \\
&= e^2 - \frac{3}{2}
\end{align*}$$"

# ╔═╡ cf9d0ed3-730e-4d3a-94ad-99556dcc70fc
md"### Problem A15 #2

Convert to spherical coordinates and evaluate: $\displaystyle{\int_{-2}^2 \int_0^{\sqrt{4-x^2}} \int_0^{\sqrt{4-x^2-y^2}} z \sqrt{x^2 + y^2 + z^2} \;dz \;dy \;dx}$"

# ╔═╡ 11b60c0e-03f8-475e-8c76-488bca1839a5
let
	N = 100
	ρ = 2
	ϕ = range(0, π/2, length = N)
	θ = range(0, π, length = N)
	x = [ρ * sin(ϕ) * cos(θ) for θ ∈ θ for ϕ ∈ ϕ]
	y = [ρ * sin(ϕ) * sin(θ) for θ ∈ θ for ϕ ∈ ϕ]
	z = [ρ * cos(ϕ) for θ ∈ θ for ϕ ∈ ϕ]
	
	plot(x, y, zeros(length(z)), color = :gray)
	plot!(x, y, z, color = :black, legend = false, size = (400,300), xticks = [-ρ, 0, ρ], yticks = [-ρ, ρ], zticks = [-ρ, ρ])
end

# ╔═╡ e505e7df-cf0d-427d-85ee-e30b26453843
md"
$$\int_{-2}^2 \int_0^{\sqrt{4 - x^2}} \int_0^{\sqrt{4 - x^2 - y^2}} z \sqrt{x^2 + y^2 + z^2} \;dz \;dy \;dx$$

$$\begin{align*}
&= \int_0^{\pi / 2} \int_0^{\pi} \int_0^2 \rho \cos{\phi} \sqrt{\rho^2} \rho^2 \sin{\phi} \;d\rho \;d\theta \;d\phi \\
&= \int_0^{\pi/2} \sin{\phi} \cos{\phi} \;d\phi \int_0^{\pi} \;d\theta \int_0^2 \rho^4 \;d\rho \\
&= \left[\frac{1}{2} u^2\right]_0^1 \Big[\theta\Big]_0^{\pi} \left[\frac{1}{5} \rho^5\right]_0^2 \\
&= \frac{\pi}{2} \cdot \frac{32}{5} \\
&= \frac{16\pi}{5}
\end{align*}$$"

# ╔═╡ 927d784b-85e2-4ef5-9a8a-cd1e33b84d47
md"### Problem A15 #3

Evaluate $\displaystyle\iiint_D e^{-(x^2 + y^2 + z^2)^{3/2}} \;dV$ where $D$ is the region that lies below the sphere $x^2 + y^2 + z^2 = 4$ and above the cone $z = \sqrt{x^2 + y^2}$."

# ╔═╡ e580f40f-6537-4ee0-a942-a66acbb6d120
md"
$$\begin{align*}
\iiint_D e^{-(x^2 + y^2 + z^2)^{3/2}} \;dV &= \int_0^{\pi/4} \int_0^{2\pi} \int_0^2 \rho^2 e^{-\rho^3} \sin{\phi} \;d\rho \;d\theta \;d\phi \\
&= \int_0^{\pi/4} \sin{\phi} \;d\phi \int_0^{2\pi} \;d\theta \int_0^2 \rho^2 e^{-\rho^3} \;d\rho
\end{align*}$$"

# ╔═╡ e8863de1-47c6-48ce-947e-191203563fae
md"
$$\begin{gather*}
u = -\rho^3 \\
du = -3\rho^2 \;d\rho\\
\int_0^2 \to \int_0^{-8} \to -\int_{-8}^0
\end{gather*}$$

$$\begin{align*}
\int_0^2 \rho^2 e^{-\rho^3} \;d\rho &= \frac{1}{3} \int_{-8}^0 e^u \;du \\
&= \frac{1}{3} e^u \;\Big|_{-8}^0 \\
&= \frac{1}{3} e^0 - \frac{1}{3} e^{-8} \\
&= \frac{1}{3}\left(1 - \frac{1}{e^8}\right)
\end{align*}$$"

# ╔═╡ 202fcdd6-aa4a-4f9c-ac07-fed478a2c3fb
md"
$$\begin{align*}
\iiint_D e^{-(x^2 + y^2 + z^2)^{3/2}} \;dV &= \frac{2}{3} \pi \left(1 - \frac{1}{e^8}\right) \Big[-\cos{\phi}\Big]_0^{\pi/4} \\
&= \frac{2}{3} \pi \left(1 - \frac{1}{e^8}\right) \left(-\frac{\sqrt{2}}{2} + 1\right) \\
&= \frac{\pi}{3} \left(1 - \frac{1}{e^8}\right) \left(2 - 2 \sqrt{2}\right) \\
\end{align*}$$"

# ╔═╡ 7529aa5e-9aaa-4d19-a69b-c6de4a5396c2
md"### Problem A16 #'s 2-4

Verify that $\mathbf{F}$ is a conservative vector field.
Then (a) find a function $f$ such that $\mathbf{F} = \nabla f$ and (b) use part (a) to evaluate $\displaystyle\int_C \mathbf{F} \cdot d\mathbf{r}$ along the given curve $C$."

# ╔═╡ fb0276b0-b85a-4901-a4b0-e60f84dae5cf
md"### Problem A16 #2

$\mathbf{F}(x,y) = (xy^2 + 1) \mathbf{i} + (x^2 y - 2y) \mathbf{j}$
$C : \mathbf{r}(t) = \left\langle t + \sin{\left(\frac{1}{2} \pi t\right)}, t + \cos{\left(\frac{1}{2} \pi t\right)} \right\rangle, \;0 \leq t \leq 1$"

# ╔═╡ 1c1d1192-7a0a-4cc0-b307-0cf98d956999
md"
$$\begin{align*}
\frac{\partial P}{\partial y} &= \frac{\partial}{\partial y} (xy^2 + 1) = 2xy \\
\frac{\partial Q}{\partial x} &= \frac{\partial}{\partial x} (x^2y - 2y) = 2xy
\end{align*}$$

$\frac{\partial P}{\partial y} = \frac{\partial Q}{\partial x} \implies \mathbf{F} \text{ is conservative}$"

# ╔═╡ 68b0335f-e71d-43b9-8bcf-5aa85a46bf7d
md"#### Part (a)
$$\begin{align*}
\mathbf{F} = \nabla f &\implies f_x = xy^2 + 1 \\
&\implies f = \int f_x \;dx = \frac{1}{2} x^2 y^2 + x + g(y) \\
&\implies f_y = x^2 y + g'(y) = x^2 y - 2y \\
&\implies g'(y) = -2y \implies g(y) = -y^2 \\
&\implies f(x, y) = \frac{1}{2} x^2 y^2 + x - y^2
\end{align*}$$
"

# ╔═╡ 9438761d-e701-460c-a725-5a4f91073cf4
md"#### Part (b)
$$\begin{align*}
\int_C \mathbf{F} \cdot d\mathbf{r} &= f(\mathbf{r}(1)) - f(\mathbf{r}(0)) \\
&= f(2, 1) - f(0, 1) \\
&= \left[\frac{1}{2} (2)^2 (1)^2 + (2) - (1)^2\right] - \left[\frac{1}{2} (0)^2 (1)^2 + (0) - (1)^2\right] \\
&= 2 + 2 - 1 + 1 \\
&= 4
\end{align*}$$
"

# ╔═╡ 32d6ee03-a695-47d9-897b-16fe2c5b64f6
md"### Problem A16 #3

$\mathbf{F}(x,y,z) = y^2 z \; \mathbf{i} + \left(2xyz - \frac{z}{y^2}\right) \mathbf{j} + \left(xy^2 + \frac{1}{y} - 2z\right) \mathbf{k}$
$C : \mathbf{r}(t) = \left\langle \sqrt{t}, t + 1, t^2 \right\rangle, \;0 \leq t \leq 1$"

# ╔═╡ bd2be841-0f36-4484-a469-d1527c2d505b
md"
$$\begin{align*}
\text{curl } \mathbf{F} = \nabla \times \mathbf{F} &= \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ y^2 z & 2xyz - \frac{z}{y^2} & xy^2 + \frac{1}{y} - 2z\end{vmatrix} \\
&= \left(2xy - \frac{1}{y^2} - 2xy + \frac{1}{y^2}\right) \mathbf{i} + \left(y^2 -y^2\right) \mathbf{j} + \left(2yz - 2yz\right) \mathbf{k} \\
&= 0 \;\mathbf{i} + 0 \;\mathbf{j} + 0 \;\mathbf{k} \\
&= \mathbf{0} \implies \mathbf{F} \text{ is conservative}
\end{align*}$$"

# ╔═╡ 1237d300-5ee3-429f-9bc3-46025efcc5c2
md"#### Part (a)
$$\begin{align*}
\mathbf{F} = \nabla f &\implies f_x = y^2 z \\
&\implies f = \int f_x \;dx = xy^2 z + g(y, z) \\
&\implies f_y = 2xyz + g'(y, z) = 2xyz - \frac{z}{y^2} \\
&\implies g'(y,z) = -\frac{z}{y^2} \implies g(y, z) = \frac{z}{y} + h(z) \\
&\implies f = xy^2 z + \frac{z}{y} + h(z) \\
&\implies f_z = xy^2 + \frac{1}{y} + h'(z) = xy^2 + \frac{1}{y} - 2z \\
&\implies h'(z) = -2z \implies h(z) = -z^2 \\
&\implies f(x, y, z) = xy^2 z + \frac{z}{y} - z^2
\end{align*}$$
"

# ╔═╡ a88dc5f6-27f9-497a-8bce-4e7b5a1665b4
md"#### Part (b)
$$\begin{align*}
\int_C \mathbf{F} \cdot d\mathbf{r} &= f(\mathbf{r}(1)) - f(\mathbf{r}(0)) \\
&= f(1, 2, 1) - f(0, 1, 0) \\
&= \left[(1)(2)^2(1) + \frac{1}{2} - (1)^2\right] - \left[(0)(1)^2(0) + \frac{0}{1} - (0)^2\right] \\
&= 4 + \frac{1}{2} - 1 \\
&= \frac{7}{2}
\end{align*}$$
"

# ╔═╡ a4e6a544-45b0-49a5-928d-63dc090e2b2c
md"### Problem A16 #4

$\mathbf{F}(x,y,z) = (yze^{xyz} + 3x^2 z) \mathbf{i} + \left(xze^{xyz} + z \cos{(yz)} + 2\right) \mathbf{j} + \left(xye^{xyz} + y\cos{(yz)} + x^3 - 2z\right) \mathbf{k}$
$C : \mathbf{r}(t) = \left\langle t + 1, t^2, t^3 + 2 \right\rangle, \;0 \leq t \leq 1$"

# ╔═╡ 628bfabe-e455-41d6-b0c3-73d9466f16e7
md"
$$\begin{align*}
\text{curl } \mathbf{F} = \nabla f &= \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ yze^{xyz} + 3x^2 z & xze^{xyz} + z\cos{(yz)} + 2 & xye^{xyz} + y\cos{(yz)} + x^3 - 2z\end{vmatrix} \\
&= \left[xe^{xyz} + x^2yz e^{xyz} + \cos{(yz)} - zy \sin{(yz)}\right] - \left[xe^{xyz} + x^2yz e^{xyz} + \cos{(yz)} - zy \sin{(yz)}\right] \mathbf{i} \\
&\quad+ \left[ye^{xyz} + xy^2z e^{xyz} + 3x^2\right] - \left[ye^{xyz} + xy^2z e^{xyz} + 3x^2\right] \mathbf{j} \\
&\quad+ \left[ze^{xyz} + xyz^2 e^{xyz}\right] - \left[ze^{xyz} + xyz^2 e^{xyz}\right] \mathbf{k} \\
&= \mathbf{0} \implies \mathbf{F} \text{ is conservative}
\end{align*}$$"

# ╔═╡ 3437f3fe-fef5-45ef-b8e9-6fd1277b1369
md"#### Part (a)
$$\begin{align*}
\mathbf{F} = \nabla f &\implies f_x = yze^{xyz} + 3x^2 z \\
&\implies f = \int f_x \;dx = e^{xyz} + x^3 z + g(y,z) \\
&\implies f_y = xze^{xyz} + g'(y,z) = xze^{xyz} + z\cos{(yz)} + 2 \\
&\implies g'(y,z) = z\cos{(yz)} + 2 \implies g(y,z) = \sin{(yz)} + 2y + h(z) \\
&\implies f = e^{xyz} + x^3 z + \sin{(yz)} + 2y + h(z) \\
&\implies f_z = xye^{xyz} + x^3 + y\cos{(yz)} + h'(z) = xye^{xyz} + y\cos{(yz)} + x^3 - 2z \\
&\implies h'(z) = -2z \implies h(z) = -z^2 \\
&\implies f = e^{xyz} + x^3 z + \sin{(yz)} + 2y - z^2
\end{align*}$$
"

# ╔═╡ 3a5fb16f-91f6-4d81-80e7-7158678e404e
md"#### Part (b)
$$\begin{align*}
\int_C \mathbf{F} \cdot d\mathbf{r} &= f(\mathbf{r}(1)) - f(\mathbf{r}(0)) \\
&= f(2, 1, 3) - f(1, 0, 2) \\
&= e^{(2)(1)(3)} + (2)^3 (3) + \sin{(3)} + 2(1) - (3)^2 - e^{0} - (1)^3(2) - \sin{0} - 2(0) + (2)^2 \\
&= e^6 + 24 + \sin{(3)} + 2 - 9 - 1 - 2 + 4 \\
&= e^6 + 18 + \sin{(3)}
\end{align*}$$
"

# ╔═╡ Cell order:
# ╟─5f6c2288-b320-4fd4-9b52-f1c7ef78f980
# ╠═14ee6589-289a-44b7-ac1d-03691d46cedd
# ╟─f7e71fd5-ffa6-4568-96b8-31c253f8f472
# ╟─9f50fd28-ff2f-4a59-84f7-0486c66d0cce
# ╟─2dd37e1d-4456-495e-8795-afc166161881
# ╟─238a97bf-4f22-4a4a-8e82-adf98027f98a
# ╟─093bbbab-17ac-4f9e-86f0-6bab0249e303
# ╟─4fb5101c-eaf3-412e-a768-06d81f645ac4
# ╟─66603ad8-a94f-4c6d-9cb3-7d09c301d2c8
# ╟─68112941-d05d-404c-abad-10518444eabb
# ╟─a6bc4af6-4888-4aaa-88c0-2b0a261e47c8
# ╟─e731447f-9f13-4af7-aba8-70aa163d62f5
# ╟─cd4c10da-dfb5-4f95-b316-8712ce23dd0c
# ╟─1f71abb4-1032-41d4-9799-90d5bdb95a28
# ╟─2b9fa050-5baa-4206-bda9-2acb4a60b3fd
# ╟─4cc5f9d3-951f-4186-afa9-3c7ab4926049
# ╟─1bf47f6c-bb25-4dcf-baf1-c8a6c3d84e11
# ╟─62600947-7eef-4654-8216-5c1610a8a986
# ╟─75bf76f9-e3b3-44c2-af0b-1cf3871ed196
# ╟─4c6612cd-7409-450c-9823-619a005f1a8c
# ╠═2a2851c9-6f75-4593-a18b-95bf03b0ce32
# ╟─cde8ecb5-1030-4ec2-beb5-c1534d4204de
# ╟─f969c661-2d88-4a3c-aedd-d828ba8b43da
# ╠═0838ea68-9acb-4d42-8480-59480ac7ef64
# ╟─8db6595d-9c05-49fe-8f49-e4c075c5f2bf
# ╟─ceb806dc-2105-4449-9dc9-c88ebb6158d4
# ╠═a40f3b0a-9ccd-48be-8330-7a1d60c7eb13
# ╟─c7370c22-bee4-4641-a8b6-d62a08de3627
# ╟─7caf8973-2a2f-4c4d-b6a0-ab7b17053495
# ╟─8d6918c6-f76c-45fe-9219-33d0d4360c07
# ╟─5b8adf14-640e-46f8-a757-f952db4c08fc
# ╟─d0495207-af73-41ba-9518-56774c606418
# ╟─bc30141d-9798-411a-a1bf-6acd951603b4
# ╟─6201b777-8a0b-474d-895b-52fb0d52a917
# ╟─6672cacf-8f19-4f64-b58a-94cde4a17b60
# ╟─f9098bcd-24bb-4369-8e51-47baa3f31d2b
# ╟─8faba606-3883-4daf-8482-14bde8f8ff81
# ╟─4a3c0bf7-a947-4868-9886-a2a5ba0f21af
# ╟─ba19efea-42ab-4c2c-b40c-d9a50503e9f6
# ╟─e4cbd3cb-117b-4a93-bc62-0d16ad842a30
# ╟─58a898eb-f5dc-4f63-a335-06de60ede3b1
# ╠═f67d06c4-3c7a-4087-864f-7e51c226eb14
# ╟─e26ac061-5bb8-438b-a06d-378b2c9389ac
# ╟─e5a9edfd-1256-4a77-814e-0d90c86a616a
# ╟─2e39de76-3bc2-4807-bcfa-70d7bee662f0
# ╟─7d89ee9b-e1d7-4859-a671-35c3f16603a7
# ╟─8e3ed165-62ee-47f5-a5f8-a56820ef63b2
# ╟─193b5afd-4db6-43e8-b658-bdfb2c4d933d
# ╟─29444c84-28a0-4a19-9f44-4e747e012343
# ╟─e8464c0f-f7cf-4d00-8197-a0aeda6872d9
# ╟─c2567bc8-01e4-498f-93ee-3a10fcaa52ff
# ╟─297b9b83-0870-4276-aebf-a70ffb8cf27b
# ╟─2b764b0f-2202-4c2c-bfdc-4d7b26cf9ed5
# ╟─7c01afa2-baf7-43c5-b28a-1b6d5308ddbc
# ╟─abb03e4f-0370-4a06-9fda-587a44464a14
# ╟─4f5fa3c4-847f-4035-ab1d-5b2557394578
# ╟─38ee4f3c-c96b-4185-8b9d-5e7d730ddb1f
# ╟─7c12c192-add9-425d-a7ee-d1a7bba3d46c
# ╟─ca141cff-259c-4b1d-b57a-25237176e20c
# ╟─f2c4989b-f81a-4db4-9f5b-2fd9d0d69c96
# ╟─9ae97aa3-7bc3-438b-8dfe-a77a7b7d0ec6
# ╟─6b904629-f36c-4bc2-9ab0-e7e31a80e0e9
# ╟─a0483473-3183-4319-b318-786db82fa4c2
# ╟─4d29a175-1197-432c-b977-b2f18b63e9de
# ╟─949a99f5-75e1-4af1-9235-d09b614dad40
# ╟─d40cb6cc-962e-4f8f-b45c-bab2a0ec142d
# ╟─0f6cf9a2-6f9c-4d90-a6e8-84d6bfce5021
# ╟─af668f6a-d01e-4a5c-a95a-159aa65c181e
# ╟─ffe2bb96-00d8-4345-bb8a-5997eef309b5
# ╟─6c62b3c4-fe35-493b-a035-4bae3e102c0d
# ╟─f62c5833-183e-4489-8b72-f6ca737379cb
# ╟─beaaec6a-b969-4ee4-aef8-e4d7216f76b3
# ╟─2cb45bab-a780-4950-bc7e-32806f458196
# ╟─a9d9bd65-e122-4671-a3c7-f8a4963286a9
# ╟─dac6411b-c8d8-4786-a08b-764c6a610d75
# ╟─8681facc-e9cc-4592-9714-faa3dc185506
# ╟─f5583501-3856-4d37-86b4-0abb2ef1800c
# ╟─3491511b-dad6-454d-9b0a-3d18792172a2
# ╟─5d4c1c59-e133-47c8-95ff-776ccc900c02
# ╟─4aff4637-e266-4d71-a8c8-593f177dd940
# ╟─5330f3a5-5480-4bdb-98ec-69d8df67a24e
# ╟─366fa26c-38db-4e6a-b16e-0b75decc7947
# ╟─2a298693-c589-4be0-89dc-d8158593a2c6
# ╟─8311a1ea-0b15-41df-9d06-ab7c19ea4bef
# ╟─504fad0d-0d3a-4b05-a086-9fc99afc37d2
# ╟─adc78d96-9ff9-4948-8524-0782f1c9d9da
# ╟─d6d510ec-e550-4827-b56d-8e19c4603293
# ╟─cea72f05-da81-46ef-9b31-eae19ef1a6b0
# ╟─6bea4869-f315-4e13-8657-eb099c6c6a1b
# ╟─1ad4523e-3f9d-4e98-aaa5-47297f0dcf39
# ╟─b3eba3d7-2182-4dc1-afa2-809859aa550e
# ╟─422b1089-bd4b-48ea-b0e3-f035632266de
# ╟─b5766d94-2e38-4041-9a9c-9f8b894a43cf
# ╟─46f71335-f7a4-4944-84c4-c46d9507d146
# ╟─fc8c8929-0681-4805-bd76-91cff4d9ff9a
# ╟─6887b153-36b9-45ec-97f5-b1368ffe1888
# ╟─d2c93e37-5d8e-492e-ad07-be09a935ce32
# ╟─b228d614-19ff-4672-af9c-e4c343135b59
# ╟─db09f3c6-00f7-40c2-9b6c-71e6d8ebd485
# ╟─8efcb85c-c95d-436e-9e34-477eb910be94
# ╟─cb30058f-b8d6-4ddb-bf9b-47cbfc2de5ee
# ╟─3981e101-0e09-4ab6-8a5c-22ee21f112e5
# ╟─f9e97e85-1f24-449f-bd68-e745fc5ab4a8
# ╟─6a79e8f3-6795-45ac-a2fb-2f192c1df21a
# ╟─e3325220-7a82-4550-81df-41adaab2b91a
# ╟─a78016bb-5e9e-4626-91fb-9c28dcb55f37
# ╟─753ed5d8-c089-43f5-8ea5-d9bba11652d2
# ╟─3dd84cc6-c2d8-48ca-93c4-3a4af48ebe97
# ╟─3c7b58e8-3759-4763-9257-80d5f8007be4
# ╟─12238250-d6aa-448a-b978-0e7d94bae3b7
# ╟─71d8834f-6b81-433e-be26-8e7bbd24b335
# ╟─127b887e-e454-40de-a7e6-d7815166bef2
# ╟─634783aa-a4cf-4505-ab2b-ea193a49d57c
# ╟─997dfde7-512c-4950-8c91-fecc22e7256e
# ╟─2699b7d9-d3c8-4fe8-861f-f2cecce2492c
# ╟─c4dcad14-ca1f-4c16-827c-c01b5e5dbbe6
# ╟─6e5ce2b4-ee79-4a81-a842-06b1ca3d67da
# ╟─339b18f8-c96e-4fb6-a823-d17b005f6d9a
# ╟─ec0d1bdf-a92b-4640-9a3c-8edfc9e86905
# ╟─244b05fd-9bf7-4d6e-95dc-ec75be72594b
# ╟─c97c513f-2fe8-4bea-80e4-a78532b49705
# ╟─b3fa43c9-42f1-443b-959d-75586f265de4
# ╟─88b29f97-87c0-4526-a62a-974b16a503ff
# ╟─cdf6cbdc-14e5-48f5-96f2-2fa9867699a8
# ╟─df6c485f-8007-4985-9282-5e8a30fbea47
# ╟─662f4552-3c2d-422b-9eef-adbedafdf6e9
# ╟─338e4f56-582f-42b9-b66f-d8724bd06f18
# ╟─71c270ca-58aa-449a-a4ce-25a404b56e4e
# ╟─a4516b16-4a3b-49bc-9efe-4778f2660626
# ╟─d9d010b7-1698-4b9f-ad38-de5533109f7f
# ╟─f1d3478a-fffa-473d-82fd-20da0880a0e1
# ╟─46183f97-e5b7-4b10-aad9-682930904166
# ╟─dc6e5946-53e3-4ff1-ad53-6547a8a63106
# ╟─4f702e00-a6f9-4d80-a2da-7444de8a2f32
# ╟─4d512c99-39a6-4b0e-ab34-f5e81a006ff2
# ╟─80d56b65-4f5e-419a-a2f8-4d18b3afd29f
# ╟─c7d2b32d-7615-4f3c-9840-f7b49de5c596
# ╟─2f479228-7acd-49db-98ca-02cea5c87faa
# ╟─5faadca0-1e85-483c-8583-184f89f76a4a
# ╟─1bed805d-767f-49ac-8692-fbc1de1aec20
# ╟─a41da262-824f-475b-abf4-29aa8625dba4
# ╟─e1c4f2fe-0567-42a8-be46-d596c564b211
# ╟─a3fea1c4-14a6-462b-a5ce-1534fb5fbb39
# ╟─3049d9f5-a1e1-4e25-b265-6375e68edbff
# ╟─5f17ef77-7b57-43ab-8bd1-3359620f8758
# ╟─442999cb-41b8-4a07-92f3-0052d4662700
# ╟─1bf6a598-cf21-487f-ad58-476c8b34aeb6
# ╟─cb0c68e1-3f3b-4ee3-8d34-db6008055fa7
# ╟─d85c9f6c-492d-4e1f-8717-97b25ab8319f
# ╟─337759c9-40b1-4060-ad3f-dddfa7e7ce08
# ╟─0374d8b8-ad7e-478a-806b-e685d914e9da
# ╟─6025bb6f-4df0-4b3c-9293-a406157916f3
# ╟─eba0ecd0-373f-42a8-b74b-f02bca925a06
# ╟─3b77b1e5-7dad-479b-b1cf-bbda7c1db2f4
# ╟─9f501d3d-2c2f-4b66-9a6c-9bfd5d216b62
# ╟─ff6dd84b-b78f-46c0-8f67-2ed7ed34ac15
# ╟─4ec7a75f-0c0c-4210-ae46-b0cbed041679
# ╟─d07aaa71-d722-424f-be86-c9aae118bb3a
# ╟─892ddb07-2e05-4d4e-b993-72b70c899779
# ╟─d1709376-8c8c-4b43-9310-849650010c23
# ╟─07ba3405-0b67-4532-9df9-633cb8e46e0b
# ╟─22e496e8-bb70-4a86-b015-6996f19dee9a
# ╟─b33d40af-171e-4aa8-b53a-072fed6ceda7
# ╟─4c38e7e1-658d-4237-947e-a84e9a23f7de
# ╟─e82d8c13-1d93-468e-b59b-5e7148cbbef5
# ╟─1644491c-fa5c-48ea-85fa-770dc4f5bc47
# ╟─ff89559c-1eaa-4787-ac35-4b0bd216df71
# ╟─a47c7d8b-8804-4002-a8e1-f65258befee4
# ╟─69e33e0e-b774-4dd3-99a2-c674ee1edd67
# ╟─2f00a4f8-8c09-4fc9-ad84-4149442c65eb
# ╟─5714999c-8e8f-420c-826d-874945e1d2e2
# ╟─dbe0359a-7710-4b26-97a6-7b3268e2948d
# ╟─4b6fbf67-372e-4cd8-8dca-53486feff369
# ╟─6b543b09-7ded-4e56-a56d-df0b60de9128
# ╟─3f756ef7-6473-4a6a-a269-212b521668ac
# ╟─1f7688b5-c0ce-4440-a957-2ad28c7211d0
# ╟─d5989253-601f-4942-b7cd-16bcef4582bc
# ╟─835dcf98-79ed-4ef9-9f83-03fc3dfc326a
# ╟─742327c9-cd22-4c3e-b18b-094fc13db4d0
# ╟─616fe659-9d85-41c1-a3e8-ca1fd1155b19
# ╟─872db4ee-a082-41b4-86a2-f438702fa960
# ╟─82ce9374-6434-4555-8e28-9eafb261d1db
# ╟─8ee682ad-c67d-4b51-a9b2-10c92df3cc24
# ╟─34a831ca-6582-472d-8bbb-55dd8f10bea1
# ╟─65f7fdec-d42f-4c42-9c87-996647bd0bed
# ╟─2bd8b894-ca19-4a24-8f9c-7d7a1b28c065
# ╟─2abfff9e-c7bd-4d1e-ad8f-437fd61c0614
# ╟─88cfdf79-acd2-44e6-b049-2a8f5c70f792
# ╟─f11993b7-6487-4b2d-915a-9c2967ace7b5
# ╟─95109601-6b25-41b0-96a7-21c004877333
# ╟─9960baa6-7483-4e82-ba69-27b1a3d05d18
# ╟─288da841-1cb1-4b3b-89a7-d14b3a3fa09d
# ╟─b7f68077-fa81-453f-a2b0-d6d84990697a
# ╟─41edd5a0-3ae1-40ea-a3bf-d6102e5d2186
# ╟─5048ff8f-59cf-46a0-881b-e620b52d98ab
# ╟─dfffd7de-76eb-4100-a435-7458fac005ad
# ╟─f87fddd2-bd8c-492a-9bb7-5b50fefd7147
# ╟─5608789b-d2a2-49a7-9914-b9eb47123228
# ╟─edbc1430-ea17-461f-9008-79c366f8cbf5
# ╟─9b0e5959-cc6c-4ab4-86a0-067e8b475112
# ╟─85c0bea7-75f0-4b2d-a6a4-1fd045d4262e
# ╟─3df22f53-0bc6-4775-b8a2-367221ab5d4a
# ╟─598da968-f5c4-484f-8f37-e5b22a707bd8
# ╟─c11dc79a-3cd1-4490-95eb-50be9923061b
# ╟─a22b7675-a1d5-4ff6-90e5-c0dca164f45b
# ╟─404bdcd3-f893-4b23-8ef9-6eaf5e3ee90a
# ╟─14817188-729b-4676-92a6-80b9122e003c
# ╟─20782e09-d0f2-44e1-abcd-98a4491698bd
# ╟─3b7f6d9a-c567-46eb-a5f9-1509beba7e0b
# ╟─9edca6dd-b0bb-4e08-9ce8-edb7efc06d5f
# ╟─07f3305f-ffc7-4181-9179-19141b880105
# ╟─9f7b03ae-5d02-4c90-ac5b-bc4f1f68e273
# ╟─9dff75e6-658f-4633-bcf4-c6b0b25e2063
# ╟─3382b77a-01f5-4377-84b9-f64d863cab4f
# ╟─57196605-c0cd-445f-a1a1-6480aac02e89
# ╟─d086137a-8647-4215-b7f8-69a8d3d37877
# ╟─26d2eb00-09e7-4979-a024-cfb57c3529c3
# ╟─e9c8d942-8c97-43c8-81f2-a5de2d27e175
# ╟─f4fb2eb1-c9cd-419e-b7cd-50bc375b3935
# ╟─c8e21af3-3e1b-4e05-85e2-a5658d0f2713
# ╟─f175263d-d133-4712-bc53-46d98601e814
# ╟─8fb50f5e-ce95-4f96-91b4-67d88f19478f
# ╟─18b7e78a-5a71-43a5-bde0-1d46b3a50fd8
# ╠═c5aeeff3-56e5-4f9c-8313-e416290669cf
# ╟─96e5812d-6192-46e5-afa4-16a2e863ddac
# ╟─bd563fcd-9b54-4d95-8474-1427e69462f0
# ╟─db9995ec-6139-4eb4-a971-bd6e103909cd
# ╟─511312ad-d27d-47a3-9569-1b79bb6a0199
# ╟─0dd5ea3d-3150-484b-8c41-6f91fa153362
# ╟─a1f2259a-b73c-4ec2-943d-4d40543236ca
# ╟─2e8843e5-8e0f-4f32-8e15-c9ade1ba12fc
# ╟─6ad86cee-5257-4823-aa17-c69d6685da53
# ╟─db96603a-10f4-4402-95da-0656ffbf3342
# ╟─05fd92ac-d941-41ce-be93-9afeecbdd4d0
# ╟─01ef410a-029b-4b24-9e1e-c07c94c7bfbb
# ╟─20b60953-f881-4bee-bb39-84210fafacf3
# ╟─1a2bd283-c381-4407-8e68-768cc791c32f
# ╟─48267566-2370-4737-875f-35ad7230db0a
# ╟─819712e0-3163-4e14-b3d3-ac52bd329518
# ╟─42594000-040e-4b75-b86f-9f06ee9df092
# ╟─008cba82-e21c-46a1-850e-a0a487e488a1
# ╟─b502ff97-0b4e-4d06-acdd-3b28c254f59c
# ╟─1aa4d9ee-2251-4619-a64d-d55efa851028
# ╟─b22dcb63-fbfe-494f-854e-490137fb504a
# ╟─cac899f9-79ea-4b58-8590-02a44c3efb18
# ╟─b81c90ae-67ad-4fa6-8cde-21b9ba410296
# ╟─af27c041-91ea-4b18-8bef-2e713a50b1df
# ╟─387d7dab-5ab6-4435-99f0-124fc5724802
# ╟─279e521e-a165-4a79-bb86-b14d373da0cd
# ╟─9e2de27d-1ca9-43f0-8b2e-c8f08ebf0fb2
# ╟─25614112-32b4-4568-b543-33d6c3de89b1
# ╟─47a4c3fa-c8d6-40a5-b707-27c012f0b430
# ╟─6ddc712c-9af4-4fdd-a802-95b382aacf61
# ╟─855088ee-25a1-4b6c-9594-58c6a0b932fc
# ╟─1d67e109-6bc0-44c0-b817-5a3c7eacf881
# ╟─77ceb68c-dc33-4d7c-8854-b7613757d93e
# ╟─3dca7b78-64c9-44f1-a1f0-f97521037338
# ╟─61f28243-45d2-4ad6-8987-c5b0d61d1648
# ╟─d6679b5c-9dd7-413e-955b-adac7f2bec2d
# ╟─9e60628c-67a1-4ac3-80cb-1da76d33beb3
# ╟─840178f9-ba68-4424-b023-b1c3e60f919c
# ╟─e7d17f65-b4b6-4c32-b34e-8e58a7646d26
# ╟─e2e9aeec-387a-4d51-81a8-34ddd55ae671
# ╟─c80fd6cc-4c38-41c9-aca8-cece1f22c541
# ╟─9c6bf0ca-8ad5-4833-a1d4-a005ff9f8980
# ╟─c8ba9ba0-0f34-40a4-9d58-06b0452eeaa4
# ╟─2177f897-50f4-4e8d-8b9f-7dd47aac5de9
# ╟─8afb404d-0181-49ac-9939-ef89ed0ce2bc
# ╟─4ed82c57-8652-4f33-9462-ea67d2272572
# ╟─d977a503-426c-440a-a9ba-b742d006944f
# ╟─f28f02eb-3100-4a61-a19c-dbf12c3e053e
# ╟─3f6648d4-7ae3-4614-a1f7-51cd8474f259
# ╟─89a6152c-7b8b-4546-a26f-c5bd79ef76be
# ╟─ddef09b4-3b07-424a-9096-15a4bb39cf42
# ╟─daa81c5e-fb03-4ab0-9f61-16056f8d7fab
# ╟─f0ac28ef-bfdc-477d-a563-1f62fc251b06
# ╟─51b34845-de31-4868-9323-6cbaa1dee0f5
# ╟─a3438fde-5a9d-464f-8d46-f43b7c3bbbc8
# ╟─9103fa12-1c1b-4908-ab80-0cbb085b4745
# ╟─c508a50e-055a-4fc8-bd20-d80c67e3c042
# ╟─82ccaa25-4881-4c77-bfd6-3f0353c1c7c6
# ╟─edb4ec96-6e3c-4e50-b452-31e8bc48435d
# ╟─99444e96-5180-4622-a1f1-eb8e63e540a1
# ╟─97f42ed6-29a7-445f-a0a8-30c7726f9c75
# ╟─d5a7439f-74c3-4a10-badc-82ea5e265780
# ╟─7b12f843-9bbd-44a9-aabf-f64f0621f1b6
# ╟─7b1390a2-f2eb-4be9-8963-3e817c1180cc
# ╟─d5016df1-4b30-4b28-bbb1-9ca6e400eafa
# ╟─90d6273c-af53-4526-86a4-9b410bbb4f08
# ╟─3073a07d-8ee8-48a4-ab63-034b69cf017c
# ╟─b1bb9de8-df0b-4ff3-aca0-19b7f080ccb8
# ╟─15c29766-f9c6-4421-8dac-a3c08219f49b
# ╟─3f6b82ae-0d67-44d0-8560-8252883f163b
# ╟─976542fe-da7c-4560-a3e8-b8d4c99566ff
# ╟─be49ed1b-cf6f-404e-94cd-ab5153eaa18e
# ╟─d8cf812a-dad7-49b8-8902-017cf95f66b4
# ╟─337f6102-c5bb-4aae-ab61-11275fb82a53
# ╟─8d850b3d-1c1c-42ac-8b7d-3cc1ec71e2c0
# ╟─0071a1b5-3b33-486e-8ca0-a277a31a9e65
# ╟─0c9398f7-3e9c-45d1-97a1-d03335d71ced
# ╟─8d31cfca-9275-4415-bea3-f973c5084f33
# ╟─563c1bef-7014-49bc-9308-95f2ad326623
# ╟─b165e06b-8550-4e41-8866-c88c97943eb4
# ╟─3c8f0ed3-5c8a-4713-81d2-7da2b4ba67b2
# ╟─06688b04-1fad-444b-8454-01a143b9dcf4
# ╟─2aa3f463-3cac-4a6f-8a8d-77fd35089fe5
# ╟─8801aad9-492a-46f9-bdbc-c431372218b7
# ╟─c25c97d0-0089-4d0d-bbdc-99bfefdcec87
# ╟─adda85bd-6800-40ee-9eac-37d4607ff840
# ╟─a03ce9fe-42d0-4e4a-8a2a-b5957fb7990a
# ╟─2fbcfb4c-3b3c-47f7-b098-9c9b0c829169
# ╟─dc9236f2-6935-4a7e-a349-77ee52b4a912
# ╟─fb39a09e-a1ec-46e2-a143-176954322b90
# ╟─8530a442-2469-4eca-9bd1-347bde864d2c
# ╟─ef814e3f-0179-432d-b2df-4d66260d5a86
# ╟─b8e98350-f5ef-4e1f-9ddf-633d5707ff41
# ╟─42b9145c-381d-495b-9d99-1e486fb05444
# ╟─fd7c15d0-d09e-408f-a036-e95b7f71e770
# ╟─b917bef3-020c-4106-acb7-a1479d077e8e
# ╟─abd262b0-5215-439d-b4ae-5f61f74fe7f7
# ╟─47f71836-1b66-4340-9f6d-8139ca471932
# ╟─16b30a78-b463-41a4-8887-784975ad8eb3
# ╟─9e030cc4-0afa-4426-a1f1-415a7857ffdb
# ╟─18357b7e-898d-4a67-910d-f753d261541c
# ╟─9c725239-1fc2-4b02-b972-842108684e31
# ╟─9bcdfe20-4a32-4258-97d4-a4c47d696c3c
# ╟─a96acb8f-2d1a-4ffd-960d-17983293b61b
# ╟─c8cd710f-4dee-47c2-a0e0-e74fe5455c19
# ╟─54d082d8-da12-43ae-b937-23357470e791
# ╟─cf9d0ed3-730e-4d3a-94ad-99556dcc70fc
# ╟─11b60c0e-03f8-475e-8c76-488bca1839a5
# ╟─e505e7df-cf0d-427d-85ee-e30b26453843
# ╟─927d784b-85e2-4ef5-9a8a-cd1e33b84d47
# ╟─e580f40f-6537-4ee0-a942-a66acbb6d120
# ╟─e8863de1-47c6-48ce-947e-191203563fae
# ╟─202fcdd6-aa4a-4f9c-ac07-fed478a2c3fb
# ╟─7529aa5e-9aaa-4d19-a69b-c6de4a5396c2
# ╟─fb0276b0-b85a-4901-a4b0-e60f84dae5cf
# ╟─1c1d1192-7a0a-4cc0-b307-0cf98d956999
# ╟─68b0335f-e71d-43b9-8bcf-5aa85a46bf7d
# ╟─9438761d-e701-460c-a725-5a4f91073cf4
# ╟─32d6ee03-a695-47d9-897b-16fe2c5b64f6
# ╟─bd2be841-0f36-4484-a469-d1527c2d505b
# ╟─1237d300-5ee3-429f-9bc3-46025efcc5c2
# ╟─a88dc5f6-27f9-497a-8bce-4e7b5a1665b4
# ╟─a4e6a544-45b0-49a5-928d-63dc090e2b2c
# ╟─628bfabe-e455-41d6-b0c3-73d9466f16e7
# ╟─3437f3fe-fef5-45ef-b8e9-6fd1277b1369
# ╟─3a5fb16f-91f6-4d81-80e7-7158678e404e

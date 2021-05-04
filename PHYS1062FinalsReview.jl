### A Pluto.jl notebook ###
# v0.14.4

using Markdown
using InteractiveUtils

# ╔═╡ 1d460401-7c48-4718-914e-ba3fc9f7950a
begin
    import Pkg
    # activate a clean environment
    Pkg.activate(mktempdir())

    Pkg.add([
        Pkg.PackageSpec(name="PlutoUI"),
        Pkg.PackageSpec(name="Unitful"),
        # ... keep adding your packages
    ])

    using PlutoUI
	using Unitful
	
	function Image(filepath::String)
		@assert !isempty(filepath)
		PlutoUI.LocalResource(joinpath(split(@__FILE__, '#')[1] * ".assets", filepath))
	end
end;

# ╔═╡ baaa0f44-a9d8-11eb-0d0d-53b78cd74315
md"# Physics II Final Exam Review

- PHYS 1062 Section 003 (Spring 2021)
- Instructor: Zbigniew Dziembowski
- Temple University"

# ╔═╡ c565da05-80ca-4b72-af73-d5da2f1c2abc
md"### Information about the exam

- Please print out and bring to the exam two copies of the IRDEA worksheet.
  The worksheet is available for download in the *Final exam* Module.
  It includes a one sectence honesty statement which you have to sign.

- The exam will have two parts:
    - A quiz consisting of 25 multiple choice questions covering **units 5 through 12**.
      The quiz setting will be such that there will be only one attempt given.
      You will see one question at a time and the questions will be locked after answering.
      The quiz will be available on Canvas.
    - 2 word problems covering **units 9-12**.
      These problems, where you are expected to show your explanations, must be solved using the IRDEA worksheet.
      The solutions must be uploaded for grading on Canvas (like the in-class problem solutions).

- Final exam is worth 234 pts (125pts/quiz and 54.5 pts/problem)

- Extra Credit
    - 4 pts extra credit per problem will be given, if a solution is submitted on time
      and on the IRDEA worksheet with signed the one sentence honesty statement.

- Penalties
    - 4 pts penalty per problem will be applied if a solution is uploaded to Canvas less than 10 mins LATE.
    - 8 pts penalty per problem if uploaded to Canvas 10-20 mins LATE.
    - Solution is not graded if it is uploaded to Canvas more than 20 mins. LATE.

- Do not wait to the last moment. Upload each solution once you completed it!

- After the exam, we reserve the right to ask anyone to work out a few new problems with us to spot check the exam inconsistency.
"

# ╔═╡ a1c99c25-e72e-4c4f-9ee9-855dad795483
md"### How to review and prepare for the final exam

1. Review the lecture notes for Unit 5 through 12.
   Especially, go through the quick-check questions in the posted lecture notes.
   Then take the practice quiz to be posted on Canvas by Sunday, April 25th.


2. The contents of the two word-problem section of the exam will be limited to the contents of Units 9 through 12.

   To prepare for this section of the exam, redo, using a copy of the RIDEA worksheet, all exercises and problems in the DT and PSW homework for Unit 9 through 12.
   Use the wording of the assignments as in the back of Chapters 29, 30, 31 and 34, respectively.
   Check your answers against the answers to those exercises and problems as given in the file posted on Canvas (\"DT-PSW list for Unit XX with answers\") in the module **Final exam.**"

# ╔═╡ c5cf2733-8d62-4f97-9c6c-97c6bce90b02
md"### Electricity and Magnetism formulas"

# ╔═╡ 7abb1db1-d637-446c-9e55-3457db3db17e
md"$$\begin{gather*}
\vec{E} = k \frac{q}{r^2} \hat{r}; \qquad \vec{F} = q\vec{E} \\
V_B - V_A = -\int_A^B \vec{E} \cdot d\vec{r} \\
V = k \frac{q}{r}; \qquad U = qV = k\frac{q_1q_2}{r} \\
C \equiv \frac{Q}{\Delta V_C} = \frac{\epsilon_0 A}{d} \\
U = \frac{1}{2} \frac{Q^2}{C} \\
I = \frac{dQ}{dt} \qquad J = v_d e n_e \\
I = \frac{\Delta V}{R} \qquad R = \rho \frac{L}{A} \qquad P = I \mathcal{E} \\
\frac{1}{C_{\text{eq}}} = \sum \frac{1}{C_i} \qquad C_{\text{eq}} = \sum C_i \\
R_{\text{eq}} = \sum R_i \qquad \frac{1}{R_{\text{eq}}} = \sum \frac{1}{R_i} \\
\vec{F} = I\vec{L} \times \vec{B} \qquad \vec{F} = q\vec{v} \times \vec{B} \\
r = \frac{mv}{qB} \qquad f = \frac{qB}{2\pi m} \\
F = \frac{\mu_0}{2\pi} \frac{I_1 I_2}{d} L
\end{gather*}$$"

# ╔═╡ be1d2a6e-8c24-4a1e-b84b-aabfad8e6135
md"$$\begin{gather*}
\tau = NIAB \sin{\theta} \\
B = \frac{\mu_0}{2\pi} \frac{I}{r} \qquad B = \frac{\mu_0 I a^2}{2(x^2 + a^2)^{3/2}} \\
\vec{B} = \frac{\mu_0}{2\pi} \frac{\vec{\mu}}{z^3} \qquad B = \frac{\mu_0 IN}{L} \\
\Phi_{\text{m}} = \int \vec{B} \cdot d\vec{A} \qquad \mathcal{E} = \left|\frac{d\Phi_{\text{m}}}{dt}\right| \\
E_{\text{inside}} = \frac{r}{2} \left|\frac{dB}{dt}\right| \qquad V_S = \left(\frac{N_S}{N_P}\right) V_P \\
U_L = \frac{1}{2} LI^2 \qquad L_{\text{sol}} = \frac{\mu_0 N^2 A}{\ell} \\
\mathcal{E} = NB \omega A \sin{\omega t} \\
I = \frac{P}{A} = S_{\text{avg}} = \frac{1}{2c\mu_0} {E_0}^2 = \frac{c\epsilon_0}{2} {E_0}^2 \\
k = \frac{2\pi}{\lambda} \qquad \omega = 2\pi f \qquad f\lambda = \frac{\omega}{k} = v \\
v = \frac{\omega}{k} = \frac{1}{\sqrt{\epsilon_0 \mu_0}} \qquad E = \frac{\omega}{k} B = cB
\end{gather*}$$"

# ╔═╡ 6c9182b4-2bf5-40a8-8a7e-ecfb1f7e59f3
md"#### Relevant constants and conversion factors

$$\begin{gather*}
k \approx 9.0 \times 10^9 \text{ N} \cdot \text{m}^2 / \text{C}^2 \\
\mu_0 = 4\pi \times 10^{-7} \text{ T} \cdot \text{m} / \text{A} \\
\epsilon_0 = \frac{1}{4\pi k} = 8.85 \times 10^{-12} \text{ C}^2 / \text{N}\cdot\text{m}^2 \\
1 \text{ eV} = 1.602 \times 10^{-19} \text{ J} \\
e = 1.60 \times 10^{-19} \text{ C} \qquad c = 3.00 \times 10^8 \text{ m/c} \\
m_e = 9.11 \times 10^{-31} \text{ kg} \qquad m_p = 1.67 \times 10^{-27} \text{ kg}
\end{gather*}$$
"

# ╔═╡ b670ab02-1fe7-4204-9747-237348707d97
begin
	k = 9.0e9u"N*m^2/C^2"
	μ0 = 1.26e-6u"T*m/A"
	ϵ0 = 8.85e-12u"C^2/(N*m^2)"
	e = 1.60e-19u"C"
	c = 3.00e8u"m/s"
	me = 9.11e-31u"kg"
	mp = 1.67e-27u"kg"
	
	# Other constants
	B_earth = 50e-6u"T" # Earth's magnetic field
	g = 9.8u"m/s^2"
end;

# ╔═╡ 3240dda1-8d4c-4551-8878-8c2ddd9f12d1
md"### Ray Optics
| Medium              |        $n$ |
| :---                |       :--- |
| Vacuum              | 1.00 exact |
| Air (actual)        |     1.0003 |
| Air (accepted)      |       1.00 |
| Water               |       1.33 |
| Ethyl alcohol       |       1.36 |
| Oil                 |       1.46 |
| Glass (typical)     |       1.50 |
| Polystyrene plastic |       1.59 |
| Cubic zirconia      |       2.18 |
| Diamond             |       2.41 |
| Silicon (infrared)  |       3.50 |

$$\begin{gather*}
n = \frac{c}{v} \qquad n_1 \sin{\theta_1} = n_2 \sin_{\theta_2} \\
\frac{1}{s} + \frac{1}{s'} = \frac{1}{f} \\
M = \frac{h'}{h} = -\frac{s'}{s} \\
|f| = \frac{R}{2}
\end{gather*}$$
"

# ╔═╡ 8a56ceb5-dbd9-4950-bbfe-50b56c682487
md"# Notebook environment"

# ╔═╡ 98b7f219-578b-4717-8dfa-5f22f86c04b2
md"# Topics covered

- Unit 5: Chapters 22 and 23---Electric Charges and Forces, The Electric Field
- Unit 6: Chapters 25 and 26---The Electric Potential, Potential and Field
- Unit 7: Chapter 27---Current and Resistance
- Unit 8: Chapter 28---Fundamentals of Circuits
- Unit 9: Chapter 29---The Magnetic Field
- Unit 10: Chapter 30---Electromagnetic Induction
- Unit 11: Chapter 31---Electromagnetic Fields and Waves
- Unit 12: Chapter 34---Ray Optics"

# ╔═╡ f6b01ecd-9629-422c-800e-a41512fa9933
md"# QuickChecks"

# ╔═╡ 81d41ebd-9c50-49a1-b77d-1f6c600477e7
md"## Unit 5 The Electric Charge, Force and Field"

# ╔═╡ 067e90ac-b370-4c53-b1d8-8ee65189b036
md"### Unit 5 Part 1 QuickCheck #1

Which is the direction of the net force on the charge at the lower left?"

# ╔═╡ 179020bb-048a-4040-b517-0c081a5b68c0
Image("Unit5/P1QC1.png")

# ╔═╡ 8065e0db-4aa8-447f-a130-49feedcddad7
md"**Answer:** B, down to the left"

# ╔═╡ 5745f4ea-219d-4e60-b269-9e08f010836a
md"### Unit 5 Part 2 QuickCheck #1

What is the direction of the net electric field at the dot?"

# ╔═╡ 885d48fa-4a05-4468-8492-0cae4bfb7b26
Image("Unit5/P2QC1.png")

# ╔═╡ 2d690e4b-3d09-4907-99de-5f0ef4662b7e
md"**Answer:** D, to the right"

# ╔═╡ eae4eef0-1701-406f-966d-736a2b2381f5
md"### Unit 5 Part 2 QuickCheck #2

An electron is in the plane that bisects a dipole.
What is the direction of the electric force on the electron?"

# ╔═╡ 9ca8f846-5d5b-4b28-85b6-90c5f9c068b6
Image("Unit5/P2QC2.png")

# ╔═╡ 04912a55-5871-4917-8c95-7f03bd4abf1d
md"**Answer:** A, up because the electron goes towards the proton"

# ╔═╡ 42f03b7e-9fec-40bc-8d22-e594a22ab54e
md"### Unit 5 Part 3 QuickCheck #1

Three points inside a parallel-plate capacitor are marked.
Which is true?

A. $E_1 > E_2 > E_3$

B. $E_1 < E_2 < E_3$

C. $E_1 = E_2 = E_3$

D. $E_1 = E_3 > E_2$
"

# ╔═╡ 34b75779-b546-4628-ac0a-1d8fedc231eb
Image("Unit5/P3QC1.png")

# ╔═╡ fb93dd3c-de36-4087-9870-8365161f7d1f
md"**Answer:**
C. $E_1 = E_2 = E_3$"

# ╔═╡ ab703047-2e82-4c13-a9d9-c97ffd42af67
md"## Unit 6 The Electric Potential, and Capacitors"

# ╔═╡ 253d5697-9088-424f-aa2e-c5df2c7675bf
md"### Unit 6 Part 2 QuickCheck #1

At the midpoint between these two equal but opposite charges,

A. $\vec{E} = \vec{0}; \;V = 0$

B. $\vec{E} = \vec{0}; \;V > 0$

C. $\vec{E} = \vec{0}; \;V < 0$

D. $\vec{E}$ points right; $V = 0$

E. $\vec{E}$ points left; $V = 0$
"

# ╔═╡ fcdb7ea5-6203-4e74-b746-4470052b5f99
Image("Unit6/P2QC1.png")

# ╔═╡ 5db75338-4b19-4037-942d-979856662d6c
md"**Answer:** D. $\vec{E}$ points right; $V = 0$

**Explanation:** $V = \frac{k q_1}{r} + \frac{k q_2}{r} = 0$"

# ╔═╡ 74378daa-7994-403e-9c41-86bae271a74d
md"### Unit 6 QuickCheck #2 (Exercise 25.6)
What is the electrostatic energy of the group of charges in figure below?

A. positive

B. negative

C. zero
"

# ╔═╡ af3ab252-16c6-4e6f-bdc6-9a01fede5a30
Image("Unit6/P2QC2.png")

# ╔═╡ 64bbc192-28dd-4db4-8dab-1cde2a031bc5
md"**Answer:** C. zero

**Explanation:**

$\begin{gather*}
U = \;? \\
U = k \sum_{i<j} \frac{q_i q_j}{r_{ij}} = \frac{kq_1q_2}{r_{12}} + \frac{kq_1q_3}{r_{13}} + \frac{kq_2q_3}{r_{23}} \\
q_1 = 1.0 \text{ nC} \\
q_2 = q_3 = -2.0 \text{ nC} \\
q_1q_2 = -2.0 \text{ nC} \\
q_1q_3 = -2.0 \text{ nC} \\
q_2q_3 = 4.0 \text{ nC} \\
r = r_{12} = r_{13} = r_{23} \\
U = \frac{k}{r} \left(q_1q_2 + q_1q_3 + q_2q_3\right) = 0
\end{gather*}$"

# ╔═╡ 185600d3-131d-491d-869d-06a865280a5c
md"### Unit 6 Part 3 QuickCheck #1

What is the capacitance of these two electrodes?

A. 8 nF

B. 4 nF

C. 2 nF

D. 1 nF

E. Some other value
"

# ╔═╡ 5fd137c7-a14e-4a53-9c9f-39f0992b1e43
Image("Unit6/P3QC1.png")

# ╔═╡ 8a9474e5-4b73-4a3e-9573-fa0ca066f9de
md"**Answer:** C. 2 nF

**Explanation:**

$\begin{gather*}
C = \;? \\
Q = -4 \times 10^{-9} \text{ C} \\
V = 2.0 \text{ V} \\
C = \frac{Q}{V} = 2 \text{ nF}
\end{gather*}$"

# ╔═╡ d8c9b9e2-eaa1-40e5-9899-f60d8fb9dddb
md"### Unit 6 QuickCheck #2
The equivalent capacitance is

A. 9 $\mu$F

B. 6 $\mu$F

C. 3 $\mu$F

D. 2 $\mu$F

E. 1 $\mu$F
"

# ╔═╡ f6000dca-7d5a-4bb6-93ec-3de97124fe51
Image("Unit6/P3QC2.png")

# ╔═╡ 05c12afa-6ce0-4ab6-aac9-bb6a4f7a20e8
md"**Answer:** D. 2 μF

**Explanation:**

$C = \;?$

$\begin{align*}
\frac{1}{C_{\text{series}}} &= \sum_i \frac{1}{C_i} = \frac{1}{C_1} + \frac{1}{C_2} \\
&= \frac{1}{3} + \frac{1}{6} \\
&= \frac{2}{6} + \frac{1}{6} \\
&= \frac{3}{6} \implies C = 2 \;\text{μF}
\end{align*}$"

# ╔═╡ f30d8566-72fd-4658-a4cb-fcd2ac33b063
md"## Unit 7 Electric Current"

# ╔═╡ b6605cff-3e3c-40ed-b003-547a908a89f3
md"### Unit 7 Part 1 QuickCheck #1

Every minute, 120 C of charge flow through this cross section of the wire.

The wire's current is

A. 240 A

B. 120 A

C. 60 A

D. 2 A

E. Some other value.
"

# ╔═╡ c53a0513-5a65-453b-8833-f4be54af3e0c
Image("Unit7/P1QC1.png")

# ╔═╡ 6be1aa76-6cf2-4e57-bde4-7effcc453073
md"**Answer:** D. 2 A

**Explanation:**

$\begin{gather*}
I = \;? \\
\Delta t = 60 \text{ s} \\
Q = 120 \text{ C} \\
I = \frac{Q}{\Delta t} = 2 \text{ A}
\end{gather*}$
"

# ╔═╡ 8acec63d-de21-4698-9e51-579c16d2e398
md"### Unit 7 Part 2 QuickCheck #1

The current in the fourth wire is

A. 16 A to the right.

B. 4 A to the left.

C. 2 A to the right.

D. 2 A to the left.

E. Not enough information to tell."

# ╔═╡ 1e73fe74-4f6d-4137-b771-2cfac7cf6332
Image("Unit7/P2QC1.png")

# ╔═╡ 762087fa-ffcf-4691-8c67-6837555bbfb0
md"**Answer:** 2 A to the left.

**Explanation:** Kirchoff's junction law.
For a *junction*, the law of conservation of current requires that

$\sum I_{\text{in}} = \sum I_{\text{out}}$"

# ╔═╡ d6dba861-4f6e-4aad-9b8c-1e18ee2639af
md"## Unit 8 Fundamentals of Circuits"

# ╔═╡ 6cf18ee6-6b70-466f-9e23-32368cb35865
md"### Unit 8 Part 1 QuickCheck #1

Which resistor disspates more power?

A. The 9 Ω resistor

B. The 1 Ω resistor

C. They dissipate the same power."

# ╔═╡ c5ee0bee-d2db-4daa-bbcf-5ac9f30b2f12
Image("Unit8/P1QC1.png")

# ╔═╡ 24a53a41-96a8-4bab-a8cf-1f3cd6ad30ff
md"**Answer**: 1 Ω

**Explanation:** 
Rate of energy transfer by a resistor is $P_R = I \Delta V_R$.
Use Ohm's law $\Delta V_R = IR \implies P_R = \frac{(\Delta V_R)^2}{R}$. Since $\Delta V_R = 9 \text{ V}$ across both resistors, the 1 Ω resistor dissipates more power $(9 \text{ W} > 1 \text{ W})$."

# ╔═╡ 060fd1a0-5548-4eb4-b4c2-f2db077e0d50
md"### Unit 8 Part 1 QuickCheck #2

Which bulb is brighter?

A. The 60 W bulb

B. The 100 W bulb

C. Their brightnesses are the same.

D. There's not enough information to tell."

# ╔═╡ 8eb2caa8-5341-40a7-8ae5-aad8e44c1af1
Image("Unit8/P1QC2.png")

# ╔═╡ 860bbf33-9025-44ee-aa26-7217f0bc7562
md"**Answer:** A. The 60 W bulb

**Explanation:**

$\begin{gather*}
V = 120 \text{ V} \\
P_{60} = 60 \text{ W} \\
P_{100} = 100 \text{ W} \\
P_R = \frac{V^2}{R} \implies R = \frac{(\Delta V_R)^2}{P_R} \\
R_{60} = \frac{V^2}{60} \;\Omega \\
R_{100} = \frac{V^2}{100} \;\Omega \\
V = IR \\
R_{60} > R_{100} \implies V_{60} > V_{100}
\end{gather*}$"

# ╔═╡ 28acdfbe-1020-4921-8c6c-0e38d0732d78
md"### Unit 8 Part 2 QuickCheck #1

The battery current $I$ is

A. 3 A

B. 2 A

C. 1 A

D. 2/3 A

E. 1/2 A"

# ╔═╡ e06efb86-5366-49c3-acb6-f9b209bf5d81
Image("Unit8/P2QC1.png")

# ╔═╡ 6c9233eb-058a-4e8a-9c9b-22964e210dd1
md"**Answer:** 2/3 A

**Explanation:** Use Ohm's Law $V = IR$"

# ╔═╡ c83063bd-0bba-47e7-b869-e169d6e9c03e
md"### Unit 8 Part 2 QuickCheck #2

What does the (ideal) ammeter read?

A. 6 A

B. 3 A

C. 2 A

D. Some other value

E. Nothing because this will fry the meter."

# ╔═╡ c9102584-2196-4483-b79f-60089ad9e1b4
Image("Unit8/P2QC2.png")

# ╔═╡ b30d503e-ab6c-4515-9a68-81327795aa6c
md"**Answer:** E. Nothing because this will fry the meter.

**Explanation:** Since the ammeter is ideal, its resistance $R = 0 \implies I = \lim_{R \to 0} \frac{V}{R} = \infty$"

# ╔═╡ 85e2b232-6a09-4621-ab97-e2345b676999
md"### Unit 8 Part 2 QuickCheck #3

The battery current $I$ is

A. 3 A

B. 2 A

C. 1 A

D. 2/3 A

E. 1/2 A"

# ╔═╡ 69bdb37e-2f06-4c78-a5bc-c3fce3cf6be8
Image("Unit8/P2QC3.png")

# ╔═╡ f9ba57aa-4113-40e0-af24-8d7066baef4c
md"**Answer:** 3 A

**Explanation:** The problem involves resistors in parallel and Ohm's Law.

$\begin{gather*}
I = \;? \\
V = 12 \text{ V} \\
\frac{1}{R} = \frac{1}{12} + \frac{1}{6} = \frac{3}{12} \implies R = 4 \\
V = IR \implies I = \frac{V}{R} = \frac{12}{4} = 3 \text{ A}
\end{gather*}$
"

# ╔═╡ cdc4c352-a21c-4d88-8a6e-28da5974e893
md"### Unit 8 Part 2 QuickCheck #4

What does the (ideal) voltmeter read?

A. 6 V

B. 3 V

C. 2 V

D. Some other value

E. Nothing because this will fry the meter.
"

# ╔═╡ bc7ebdc7-3614-43ad-bb1c-695f535c339b
Image("Unit8/P2QC4.png")

# ╔═╡ 3badd910-d0be-435d-8b61-751d2fc46984
md"**Answer:** A. 6 V

**Answer:** An ideal voltmeter will have very high resistance to measure the voltage of the circuit."

# ╔═╡ f5871103-8943-4085-8ec8-f7c19155262c
md"## Unit 9 Magnetism: Force and Field"

# ╔═╡ 64256f0e-f61a-41d9-9f07-f53f12b81d9f
md"### Unit 9 Part 1 QuickCheck #1

A long straight wire extends into and out of the screen.
The current in the wire is

A. Into the screen.

B. Out of the screen.

C. There is no current in the wire.

D. Not enough info to tell the direction."

# ╔═╡ 56988b0d-40f0-485c-bfd1-468431e2f906
Image("Unit9/P1QC1.png")

# ╔═╡ baf581de-7077-4c25-a5df-b5e82490b113
md"**Answer:** Out of the screen.

**Explanation:** Use the right-hand rule along the direction of the magnetic field."

# ╔═╡ 11c087b0-7823-41ac-8034-e66875bcaec1
md"### Unit 9 Part 1 QuickCheck #2

What is the direction of the magnetic field at the position of the dot?

A. Into the screen

B. Out of the screen

C. Up

D. Down

E. Left"

# ╔═╡ ad23f43f-c8ac-48fd-9b21-901658710684
Image("Unit9/P1QC2.png")

# ╔═╡ a59c5606-b60e-44c8-a7e3-b84cd89b322c
md"**Answer:** C. Up

**Explanation:** Use the right-hand rule for the cross product $\vec{v} \times \hat{r}$ where $\hat{r}$ is the distance between the two points and determine the direction of the magnetic field at the given point."

# ╔═╡ 69065726-b456-4ab1-b8a6-22e638304388
md"### Unit 9 Part 2 QuickCheck #1

Compared to the magnetic field at point A, the magnetic field at point B is

A. Half as strong, same direction.

B. Half as strong, opposite direction.

C. One-quarter as strong, same direction.

D. One-quarter as strong, opposite direction.

E. Can't compare without knowing $I$."

# ╔═╡ 47e713c1-0741-4135-ad0c-8b7ad003c141
Image("Unit9/P2QC1.png")

# ╔═╡ 45baa2c9-e2a9-44fc-a6a3-9e1b149d3ec6
md"**Answer:** B. Half as strong, opposite direction.

**Explanation:** The magnetic field of a current carrying wire is

$B = \frac{\mu_0}{2\pi} \frac{I}{r}$"

# ╔═╡ a44466e8-0954-4738-9836-e7d445d41a91
md"### Unit 9 Part 3 QuickCheck #1

What is the current direction in this loop?
And where is the north magnetic pole of this current loop?

A. Current CW; north pole on top

B. Current CW; north pole on bottom

C. Current CCW; north pole on top

D. Current CCW; north pole on bottom"

# ╔═╡ 13f7bece-837b-473e-bb86-df55d3f5dbdf
Image("Unit9/P3QC1.png")

# ╔═╡ 6917fdb5-0538-4995-9ac5-14d7fc92b903
md"**Answer:** B. Current CW; north pole on bottom

**Explanation:** Use the right-hand rule."

# ╔═╡ 018a2522-f201-44a7-8f63-d67411970a90
md"### Unit 9 Part 5 QuickCheck #1

The direction of the magnetic force on the proton is

A. To the right.

B. To the left.

C. Into the screen.

D. Out of the screen.

E. The magnetic force is zero."

# ╔═╡ ebe19088-8374-441c-9c1b-c00194737814
Image("Unit9/P5QC1.png")

# ╔═╡ 30625a27-4961-4eff-be88-27a351a3db12
md"**Answer:** D. Out of the screen.

**Explanation:** Use the right-hand rule for $\vec{v} \times \vec{B}$"

# ╔═╡ 66bd1832-dd76-43fa-ab08-018c8e726885
md"### Unit 9 Part 5 QuickCheck #2

The direction of the magnetic force on the electron is

A. Upward.

B. Downward.

C. Into the screen.

D. Out of the screen.

E. The magnetic force is zero."

# ╔═╡ 08c4b0d3-a431-46dd-a0ae-3bd5a59b81e3
Image("Unit9/P5QC2.png")

# ╔═╡ eff73afd-3ded-49d2-9411-ec11933fb31f
md"**Answer:** E. The magnetic force is zero.

**Explanation:** Use the right-hand rule for $\vec{v} \times \vec{B}$"

# ╔═╡ 6e2b45e2-67bd-4512-9b3c-6f25dc75824f
md"### Unit 9 Part 6 QuickCheck #1

The horizontal wire can be levitated---held up against the force of gravity---if the current in the wire is

A. Right to left.

B. Left to right.

C. It can't be done with this magnetic field."

# ╔═╡ 9cf0faf9-ea42-45da-9788-975cfecdca37
Image("Unit9/P6QC1.png")

# ╔═╡ 67aca9a5-da3f-4a2c-9159-2dfb922217f8
md"**Answer:** B. Left to right

**Explanation:** Use the right-hand rule for $\vec{v} \times \vec{B}$"

# ╔═╡ 37aeddcf-e1cf-40a0-925e-20d600f24845
md"### Unit 9 Part 6 QuickCheck #2

If released from rest, the current loop will

A. Move upward.

B. Move downward.

C. Rotate clockwise.

D. Rotate counterclockwise.

E. Do something not listed here."

# ╔═╡ 5fb3d735-8df5-4e69-aa47-ff467dee9047
Image("Unit9/P6QC2.png")

# ╔═╡ c4f15be9-ba69-4b9f-9b5a-407a975c2fbe
md"**Answer:** D. Rotate counterclockwise.

**Explanation:** Use the right-hand rule for $\vec{v} \times \vec{B}$ on both ends of the current loop to determine the direction of each end."

# ╔═╡ 2c330d4d-8fa2-4c3f-a5b8-8a3ac19fd075
md"## Unit 10 Electromagnetic Induction"

# ╔═╡ a2fbf237-3b84-4331-be33-e13c0f726838
md"### Unit 10 Part 2 QuickCheck #1

An induced current flows clockwise as the metal bar is pushed to the right.
The original magnetic field points

A. Up.

B. Down.

C. Into the screen.

D. Out of the screen.

E. To the right."

# ╔═╡ 84cdc818-8a8c-4888-b3bd-12399e60a739
Image("Unit10/P2QC1.png")

# ╔═╡ b759a10f-6110-4e66-8121-e1c8bf24efee
md"**Answer:** C. Into the screen

**Explanation:** Apply Lenz's Law for direction of current induced in a loop."

# ╔═╡ 9c245886-b491-4adf-9ccd-0f8d20326949
md"Unit 10 Part 2 QuickCheck #2

The current in the straight wire is decreasing.
Which is true?

A. There is a clockwise induced current in the loop.

B. There is a counterclockwise induced current in the loop.

C. There is no induced current in the loop."

# ╔═╡ c352a601-03e9-4f47-9d8e-2e7e806a7433
Image("Unit10/P2QC2.png")

# ╔═╡ d085be3a-89ec-4672-a47d-f5f2c020885b
md"**Answer:** A. There is a clockwise induced current in the loop.

**Explanation:** Apply Lenz's law for direction of current induced in a loop for decreasing magnetic flux. To oppose the decrease (pointing out of the screen), the magnetic field of the induced current must point into the screen."

# ╔═╡ 3d7c7ea7-24a4-4acc-8238-e71118fef4f1
md"## Unit 11 EM Fields and Waves"

# ╔═╡ 27a07162-335c-4d3a-9771-2a3793490631
md"### Unit 11 Part 1 QuickCheck #1"

# ╔═╡ 04beeb35-c9b8-4aca-9afa-6d9cefaacc62
Image("Unit11/P1QC1.png")

# ╔═╡ 2f72f311-4bb9-4459-a1ee-3a3b5339b13f
md"**Answer**: A."

# ╔═╡ 082f1121-811b-4404-b561-6ce9ca6a05ce
md"### Unit 11 Part 1 QuickCheck #2

In which direction is this electro-magnetic wave traveling?

A. Up

B. Down

C. Into the screen

D. Out of the screen

E. These are not allowable fields for an electromagnetic wave"

# ╔═╡ 4584596e-c66f-45b3-ad3d-3042f13a1eca
Image("Unit11/P1QC2.png")

# ╔═╡ 99a92b4f-0a27-4681-a372-e6db84db033a
md"**Answer:** A. Up

**Explanation:** Use the right-hand rule for $\vec{E} \times \vec{B}$ to determine the direction of the electro-magnetic wave."

# ╔═╡ 3a92f0e7-983c-433d-a83d-7c4e1a52a206
md"### Unit 11 Part 2 QuickCheck #1"

# ╔═╡ ae445aa3-dcd9-4d97-87f7-7be0a2287cf3
Image("Unit11/P2QC1.png")

# ╔═╡ 6c521a07-2a6b-4ce8-a772-68b511bddf50
md"**Answer:** A.

**Explanation:** Use the right-hand rule where $\vec{E} \times \vec{B}$ determines the direction of the wave."

# ╔═╡ 90a8d78d-cdf9-4485-ba31-1364e2c920ae
md"## Unit 12 Ray Optics"

# ╔═╡ 1f9d99d8-d613-4e62-9d46-5ebc61b029d6
md"### Unit 12 Part 1 QuickCheck #1

A laser beam passing from medium 1 to medium 2 is refracted as shown.
Which is true?

A. $n_1 < n_2$

B. $n_1 > n_2$

C. There's not enough information to compare $n_1$ and $n_2$."

# ╔═╡ 141ea713-8276-4799-8e9c-f46f14e30c44
Image("Unit12/P1QC1.png")

# ╔═╡ 59508d51-2fab-4cab-816c-6d0c88979af8
md"**Answer:** B. $n_1 > n_2$

**Explanation:** The light bends away from the normal."

# ╔═╡ 685e68c4-2be2-4fc7-b22f-9dc78b231236
md"### Unit 12 Part 2 QuickCheck #1

In an optical setup consisting of a single mirror and an object we measure the magnification factor $m = +3$.
We can conclude that the image is:

A. Inverted and virtual

B. Inverted and real

C. Upright and virtual

D. Upright and real"

# ╔═╡ f0d975f2-dc73-476a-9dec-6c7939511066
md"**Answer:** Upright and virtual

**Explanation:** The mirror must be concave to produce an enlarged image. The image must be upright since the magnification is positive. The image is only upright with the condition that the object's distance from the mirror is less than the focal length, i.e., $s < f$. The image will form behind the mirror so it will be virtual."

# ╔═╡ d1a284e5-e3d9-4d9c-b350-f6a9f9d4bf23
md"### Unit 12 Part 3 QuickCheck #1

In an optical setup consisting of a single lens and an object we measure the magnification factor $m = -0.5$.
We can conclude that object in this setup is:

A. Between lens and focal point

B. Between focal point and point of twice the focal length

C. Exactly at point of twice the focal length

D. At distance greater than twice the focal length"

# ╔═╡ a76b95fb-bf1e-4fea-ae0b-927017a78d1b
md"**Answer:** D. At distance greater than twice the focal length

**Explanation:** The image must be inverted, so a converging lens must be used. Use two rays to determine the height of the image: one passing through the lens bending towards the focal point and another passing through the center of the lens. Notice that the image will only get smaller for distances larger than $2f$."

# ╔═╡ 368b2131-d30c-42ae-9550-b51073e7592b
md"# Final Practice Quiz"

# ╔═╡ 0acf5486-3702-4e8a-889e-871916d2ecf3
md"### Question 1

Which is the direction of the net force on the charge at the lower left?

- A

- D

- B

- C

- E. None of these."

# ╔═╡ bfef7588-5c90-4a37-967e-660eb3e5efcd
Image("Unit5/P1QC1.png")

# ╔═╡ 86fa33b9-17da-4322-b195-fdc99687c518
md"**Answer:** B

**Explanation:** Apply the principle of superposition."

# ╔═╡ 9fdb361f-cb53-4270-a59c-6b967da468ea
md"### Question 2

Which is the direction of the net force on the charge at the top?

- A

- D

- C

- E. None of these.

- B"

# ╔═╡ 4c54fa63-06a1-4519-8104-aea78a2bbfbe
Image("Unit5/P2QC1.png")

# ╔═╡ a68a80e3-b74e-4dbf-93ce-2892bc6dafd5
md"**Answer:** D

**Explanation:** The positive charge pushes, the negative charge pulls. Their vertical forces cancel each other out."

# ╔═╡ cda191c4-afb2-4512-a930-171f5757a094
md"### Question 3

A uniform electric field, with a magnitude of 500 V/m, is directed parallel to the +x axis.
If the potential at x = 5.0 m is 2500 V, what is the potential at x = 2.0 m?

- 1000V

- 2000V

- 4000V

- 500V"

# ╔═╡ c721d98c-3586-450c-a22f-a4ff048d12c6
md"
##### Incorrect
**Answer:** 1000V"

# ╔═╡ b55d0b05-3713-46ea-819e-d180e662a47e
md"##### Correct answer
4000V

**Explanation:**
The electric field's magnitude $E$ is the rate at which the potential $U$ is decreasing.
Then the potential at 2.0 m must be greater than the potential at 5.0 m.

$\begin{gather*}
E = 500 \text{ V/m} \\
U_1 = 2500 \text{ V} \\
x_1 = 5.0 \text{ m} \\
x_0 = 2.0 \text{ m} \\
U_2 = U_1 + E(x_1 - x_0) = 2500 + 500(3) = 4000 \text{ V}
\end{gather*}$"

# ╔═╡ 16f0dd9e-f5bb-4173-a07c-7feba801837f
let
	E = 500
	U1 = 2500
	x1 = 5.0
	x0 = 2.0
	U2 = U1 + E * (x1 - x0)
end

# ╔═╡ b87d87a8-da10-4af4-94af-868947f45d02
md"### Question 4

A parallel-plate capacitor is connected to a battery and becomes fully charged.
The capacitor is then disconnected, and the separation between the plates is increased in such a way that no charge leaks off.
The energy stored in this capacitor has

- increased.

- become zero.

- decreased.

- not changed."

# ╔═╡ e664b06c-2924-423c-9f1b-52174fca7cc3
md"**Answer:** increased.

**Explanation:** $C = \frac{\epsilon_0 A}{d}$"

# ╔═╡ 7ec6edf3-7b6d-4ea2-8a4f-86dd2178eb91
md"### Question 5

The plates of a parallel-plate capacitor are maintained with constant voltage by a battery as they are pulled apart.
What happens to the strength of the electric field during this process?

- It remains constant

- cannot be determined from the information given

- It decreases.

- It increases.

- not changed."

# ╔═╡ 6de0da98-8dfe-496d-adc8-82c5c9af499e
md"**Answer:** It decreases.

**Explanation:** $C = \frac{\epsilon_0 A}{d}$"

# ╔═╡ d518d932-52d5-45de-aaf4-d94dfaf3eb64
md"### Question 6

Consider two copper wires.
One has twice the cross-sectional area of the other.
How do the resistances of these two wires compare?

- The thicker wire has twice the resistance of the shorter

- Both wires have the same resistance

- none of the given answers

- The thicker wire has half the resistance of the shorter wire."

# ╔═╡ 570a8d6f-b108-4bba-81a4-8adffe79cea5
md"**Answer:** The thicker wire has half the resistance of the shorter wire.

**Explanation:** $R = \rho \frac{L}{A}$"

# ╔═╡ e275bc47-c73c-4cf5-bbdb-bebee2fb08af
md"### Question 7

Consider two copper wires.
One has twice the length of the other.
How do the resistances of these two wires compare?

- The longer wire has twice the resistance of the shorter wire.

- The longer wire has half the resistance of the shorter wire.

- Both wires have the same resistance.

- none of the given answers"

# ╔═╡ 07adb0ac-6cb2-40ed-ad5f-659a6f58303b
md"
##### Incorrect
**Answer:** Both wires have the same resistance"

# ╔═╡ 276749db-45c7-43b9-a746-e48a6bdede2e
md"##### Correct answer

The longer wire has twice the resistance of the shorter wire.

**Explanation:**
Refer to the formula sheet to find that the resistance of a wire is

$R = \rho \frac{L}{A}$
"

# ╔═╡ 4689568d-ba6d-4954-86ba-3fcadb52f957
md"### Question 8

If the voltage across a circuit of constant resistance is doubled, the power dissipated by that circuit will

- decrease to one fourth.

- decrease to one half.

- double.

- quadruple."

# ╔═╡ 9a0b5bac-f167-4150-beaa-3c770dbc8cac
md"**Answer:** quadruple.

**Explanation:** $P = \frac{V^2}{R}$"

# ╔═╡ 7094b76b-519e-4427-91fe-88d33304fef1
md"### Question 9

If the resistance in a constant voltage circuit is doubled, the power dissipated by that circuit will

- decrease to one-fourth its original value.

- increase by a factor of four.

- decrease to one-half its original value.

- increase by a factor of two."

# ╔═╡ 82836166-8d43-4c15-a2d8-ac451a1d20ab
md"**Answer:** decrease to one-half its original value.

**Explanation:** $P = \frac{V^2}{R}$"

# ╔═╡ 06389e81-54a5-46df-b7a6-fd11b44c5406
md"### Question 10

If the resistance in a circuit with constant current flowing is doubled, the power dissipated by that circuit will

- decrease to one fourth.

- quadruple

- decrease to one half.

- double"

# ╔═╡ 5b87298f-9b97-4f7c-aab5-b3d740f9cab0
md"**Answer:** double

**Explanation:** $P = I^2 R$"

# ╔═╡ 980aa663-98cd-42be-9b92-238a452f537a
md"#### Question 11

Consider three identical resistors, each of resistance R.
The maximum power each can dissipate is P.
Three of the resistors are connected in series, and a fourth is connected in parallel with these three.
What is the maximum power this network can dissipate?

- 2P

- 3P

- 3P/2

- 4P/3"

# ╔═╡ 44d12feb-10cf-48b2-929a-8e6ff39a9496
md"**Answer:** 4P/3"

# ╔═╡ 9f4b96a0-2b5e-47d0-8694-1c1d2144fd01
md"### Question 12

A charged particle is observed traveling in a circular path in a uniform magnetic field.
If the particle had been traveling twice as fast, the radius of the circular path would be

- four times the original radius.

- twice the original radius.

- one-fourth the original radius.

- one-half the original radius."

# ╔═╡ 2434b3b5-2da8-4c1b-8bf2-522fc75b5cd1
md"**Answer:** one-half the original radius.

**Explanation:** $2B = \frac{\mu_0}{2\pi} \frac{I}{r} \implies r \propto \frac{1}{2}$"

# ╔═╡ 72bd9e28-5048-48f2-a110-f5feaa67caee
md"### Question 13

At a particular instant, a proton moves eastward at speed V in a uniform magnetic field that is directed straight downward.
The magnetic force that acts on it is

- directed to the north.

- directed upward.

- zero

- directed to the south."

# ╔═╡ a8dd4343-6913-4e19-bc12-23e89c9e6236
md"**Answer:** directed to the north."

# ╔═╡ 239d8478-4571-4155-90e3-95ae1deb4939
md"### Question 14

An electron moving along the +x axis enters a region where there is a uniform magnetic field in the +y direction.
What is the direction of the magnetic force on the electron? (+x to the right, +y up, and +z out of the page.)

- -z direction

- -x direction

- -y direction

- +z direction"

# ╔═╡ a748ef26-adc8-4fe5-ad2b-8c8b1d79b54d
md"**Answer:** -z direction"

# ╔═╡ f584bd06-21b6-41c2-b729-84b77acd2e2f
md"### Question 15

What is the current direction in this loop?
And where is the north magnetic pole of this current loop?

- Current CW; north pole on top

- Current CW; north pole on bottom

- Current CCW; north pole on bottom

- Current CCW; north pole on top"

# ╔═╡ 0fbb0fa0-6c8e-497f-856f-2f3f8f2ce735
Image("Unit9/P3QC1.png")

# ╔═╡ 4e172839-92b8-411a-ab77-3f8238d3a5e1
md"**Answer:** Current CW; north pole on bottom"

# ╔═╡ 51cf30e3-8fdc-4b62-a1a6-9252ed608dc9
md"### Question 16

A long, straight wire extends into and out of the screen.
The current in the wire is

- Into the screen

- Not enough info to tell the direction.

- There is no current in the wire.

- Out of the screen."

# ╔═╡ 1183767b-3d27-49c0-91ba-fd65e96cf773
Image("Unit9/P1QC1.png")

# ╔═╡ 9086f546-aa48-438e-b682-b0f27b2bff5c
md"**Answer:** Out of the screen."

# ╔═╡ d78a8b7b-4ea8-45ad-9d8d-331a090170a4
md"### Question 17

Solenoid 2 has twice the diameter, twice the length, and twice as many turns as solenoid 1.
How does the field B₂ at the center of solenoid 2 compare to B₁ at the center of solenoid 1?

- B2 = 4B1

- B2 = B1

- B2 = B1/2

- B2 = 2B1

- B2 = B1/4"

# ╔═╡ b7181523-93b0-4865-9c91-9ee965124bfa
Image("Quiz/Q17.png")

# ╔═╡ fe0fb4f9-6d8f-48e7-9809-71c55035ba75
md"**Answer:** B2 = B1"

# ╔═╡ 39fe00bb-0eb1-4f31-8073-e17186da71e7
md"### Question 18

Where is the north magnetic pole of this current loop?

- Right side

- Top side

- Left side

- Bottom side"

# ╔═╡ 818d7074-6ce6-4746-a15e-a101ae653ec9
Image("Quiz/Q18.png")

# ╔═╡ da06ac7d-67f3-483c-aad0-98529cf44a28
md"**Answer:** Bottom side"

# ╔═╡ eae1f535-37ac-48dd-8f2c-65b88852fa43
md"### Question 19

What is the induced current direction in the loop?

- In at the top, out at the bottom.

- Out at the top, in at the bottom."

# ╔═╡ d0224ffa-a5ef-465c-89fe-bc293e4d46ad
Image("Quiz/Q19.png")

# ╔═╡ 4ff2da18-3d84-4cc8-9588-9fcc017aa4db
md"
##### Incorrect
**Answer:** Out at the top, in at the bottom."

# ╔═╡ 73709c95-3e75-48b9-9465-b80684920db7
md"##### Correct answer

In at the top, out at the bottom.

**Explanation:**
Become familiar with Lenz's Law.
The change in magnetic flux is increasing, so the induced current's direction is switched.
"

# ╔═╡ 6036b824-7567-444a-8bad-a0472aeb549e
md"### Question 20

The bar magnet is pushed toward the center of a wire loop.
Which is true?

- There is a clockwise induced current in the loop.

- There is no induced current in the loop.

- There is a counterclockwise induced current in the loop."

# ╔═╡ 9a0f2ce9-6ac6-4c9a-a1dc-dc2e93187247
Image("Quiz/Q20.png")

# ╔═╡ 3bd6fefb-1475-4044-b637-f2358469d38f
md"**Answer:** There is a clockwise induced current in the loop."

# ╔═╡ 87b9e579-9e52-4d85-8c33-8438c548184a
md"### Question 21

The current in the straight wire is decreasing.
Which is true?

- There is no induced current in the loop.

- There is a counterclockwise induced current in the loop.

- There is a clockwise induced current in the loop."

# ╔═╡ 8633003f-0de3-466a-974a-9087eaea00ec
Image("Unit10/P2QC2.png")

# ╔═╡ ffa99665-c461-43ee-9939-e6027e53fad8
md"**Answer:** There is a clockwise induced current in the loop."

# ╔═╡ 81deea62-431f-404e-9df4-7536baa0cabd
md"### Question 22

The out of the page magnetic field in the circular region is decreasing.
Which is the induced electric field?

- D

- B

- C

- A"

# ╔═╡ cb6cc92b-2d9a-4ee7-9e82-a175c0d1202f
Image("Quiz/Q22.png")

# ╔═╡ 16e94b95-66bd-4b73-8185-e564eb2d6789
md"
##### Incorrect
**Answer:** A."

# ╔═╡ 6516bc36-7df5-4522-90e1-57ddbf01bd9d
md"##### Correct answer

B.

**Explanation:** Use the right-hand rule into the screen. The electric field is induced to oppose the direction of the increasing magnetic field."

# ╔═╡ aab4689d-9e64-486c-8913-99972148d7f5
md"### Question 23

An electromagnetic wave is traveling to the east.
At one instant at a given point its E vector points straight up.
What is the direction of its B vector?

- down

- east

- south

- north"

# ╔═╡ b7a99f37-aeb3-4123-aa05-dadfca72f06e
md"
##### Incorrect
**Answer:** north"

# ╔═╡ c6563fbe-7118-4ddc-a922-9e9327b46bc5
md"##### Correct answer

south

**Explanation:** Apply the right-hand rule where $\vec{E} \times \vec{B}$ determines the direction of the electromagnetic wave."

# ╔═╡ 79f4dc36-9ea9-4f22-9e0a-23f7e7bc139e
md"### Question 24

A lens creates an image as shown.
In this situation, the object distance $s$ is

- Larger than the focal length f

- Larger than 2f

- Equal to the focal length f.

- Larger than the focal length f but smaller than 2f"

# ╔═╡ 80c5e3e4-61bd-46cd-aa7c-1f6b098269a6
Image("Quiz/Q24.png")

# ╔═╡ cd63ab55-26fe-4015-b171-0a1073eee06d
md"**Answer:** Larger than the focal length f but smaller than 2f"

# ╔═╡ f08902fd-e2b8-47bc-b6fe-ffee0c0b5267
md"### Question 25

A lens creates an image as shown.
In this situation, the image distance $s'$ is

- Larger than the focal length f.

- Smaller than focal length f.

- Equal to the focal length f."

# ╔═╡ ed2b1790-224a-442e-9971-dc8f5313dbcc
Image("Quiz/Q24.png")

# ╔═╡ c32eba5a-fc0e-4eb3-b179-3c4ef4dbc000
md"**Answer:** Larger than the focal length f."

# ╔═╡ 574b6d09-5147-404b-a0b7-3a7f6c88e251
md"### Question 26

You see an upright, magnified image of your face when you look into magnifying \"cosmetic mirror\". The image is located

- Behind the mirror's surface.

- In front of the mirror's surface.

- Only in your mind because it's a virtual image

- On the mirror's surface."

# ╔═╡ 6a8c8c80-3833-42ef-b5e2-b36385d2a456
md"**Answer:** Behind the mirror's surface"

# ╔═╡ 3d9f7f6a-f6d4-4566-80ca-61b791cde540
md"### Question 27

In an optical setup consisting of a single concave mirror and an object we measure the magnification factor M=-3.
We can conclude that this image is:

- Inverted and virtual

- Upright and virtual

- Upright and real

- Inverted and real"

# ╔═╡ e25ab1b9-ead0-48cd-8bb4-8611cba660dc
md"**Answer:** Inverted and real"

# ╔═╡ e18a7261-ef49-4a4d-a961-4d4977554e1d
md"### Question 28

In an optical setup consisting of a single lens and an object we measure the magnification factor M = -1.0.
We can conclude that object in this setup is:

- At distance greater than twice the focal length

- Exactly at point of twice the focal length

- Between focal point and point of twice the focal length

- Between lens and focal point"

# ╔═╡ 2c9665eb-2e88-4405-8eb6-4804253a34dd
md"**Answer:** Exactly at point of twice the focal length"

# ╔═╡ bb10b8d6-d5e3-415f-bda7-9f26cd52f3a6
md"## Diagnostic Test 5"

# ╔═╡ ff1c72bf-e271-46df-a288-8619a9f0a2e4
md"### Conceptual Question 22.14

Charges **A** and **B** in the figure are equal. Each charge exerts a force on the other of magnitude $F$. Suppose the charge of **B** is increased by a factor of 4, but everything else is unchanged."

# ╔═╡ c40cfee1-3a46-4b05-ad7e-e2a8126f56cd
Image("Unit5/DTP1.png")

# ╔═╡ c24e62c5-08e4-465c-b8cb-80328a8df16f
md"#### Part A

In terms of $F$, what is the magnitude of the force on **A**?

**Express your answer in terms of $F$.**"

# ╔═╡ 19d8e693-2fa4-4311-8fab-40c636d19169
md"**Answer:** $F_A = 4F$"

# ╔═╡ c810aee0-42df-4e43-9a0c-5b3a37e0c892
md"#### Part B

In terms of $F$, what is the magnitude of the force on **B**?

**Express your answer in terms of $F$.**"

# ╔═╡ 058a4e62-655b-4e86-8ac9-c14c9f303153
md"**Answer:** $F_B = 4F$"

# ╔═╡ 9594aa75-3585-4a4b-8f16-0e23e999268d
md"### Conceptual Question 22.15

The electric force on a charged particle in an electric field is $F$."

# ╔═╡ 4379e2f3-d536-40c1-bff6-dbd652c496ff
md"#### Part A

What will be the force if the particle's charge is tripled and the electric field strength is halved?

**Give your answer in terms of F**"

# ╔═╡ 746b5d5b-5fde-4270-9e52-129f21ac722b
md"**Answer:** $F' = \frac{3}{2}F$

**Explanation:** $\vec{F} = q\vec{E}$"

# ╔═╡ 40616231-34a0-4308-ac97-05ef93da2c86
md"### Problem 22.17 - Enhanced - with Feedback

You may want to review (Pages 613 - 616)."

# ╔═╡ f8c5aaf6-7cbb-4a87-b08c-fbea27e0658a
Image("Unit5/DTP3.png")

# ╔═╡ 65c05232-36bb-4df8-8146-4e8237e11758
md"#### Part A

What is the magnitude of the net electric force on charge A in the figure (Figure 1)?
Assume that $q_1$ = 1.2 nC and $q_2$ = 5.2 nC.

**Express your answer to two significant figures and include the appropriate units.**"

# ╔═╡ ae4eb3d7-cb85-4655-9e12-fdbb1e99af1b
md"**Answer:**

**Explanation:** Use $F = \frac{k q_1 q_2}{r}$

$\begin{gather*}
q_1 = 1.2 \text{ nC} = 1.2 \times 10^{-9} \text{ C} \\
q_2 = 5.2 \text{ nC} = 5.2 \times 10^{-9} \text{ C} \\
r = 1 \text{ cm} = 0.01 \text{ m} \\
|F| = \left|\frac{kq_1q_1}{r^2} - \frac{kq_1q_2}{(2r)^2}\right| = 1.1 \times 10^{-5} \text{ N}
\end{gather*}$"

# ╔═╡ 9319bfbb-97c1-44f4-b605-16ee995476c3
let
	q1 = 1.2e-9
	q2 = 5.2e-9
	r = 1 / 100
	k = 9e9
	F = k*q1*q1 / r^2 - k*q1*q2/(2r)^2
end

# ╔═╡ ef5e8506-4a02-42a1-950d-4a53aecd42d7
md"#### Part B

What is the direction of the net electric force on charge A?

- right

- left

- up

- down"

# ╔═╡ 9f5e3964-3c67-41c8-b194-3dcdd6d485c2
md"**Answer:** left

**Explanation:** Compare the two forces being exerted on charge A."

# ╔═╡ 5fe3b6d7-2277-4c43-8e21-7cd4203433cc
let
	q1 = 1.2e-9
	q2 = 5.2e-9
	r = 1 / 100
	k = 9e9
	FB = k*q1*q1 / r^2
	FA = -k*q1*q2 / (2r)^2
	FB, FA
end

# ╔═╡ c50bcc01-6ab1-43d6-bdb0-4e9e17b524c0
md"## Diagnostic Test 9 (Chapter 29)"

# ╔═╡ 4830439e-3665-44c1-88c4-2b63da020890
md"### Problem 29.5"

# ╔═╡ dde0edeb-b85c-4bca-b5e9-a75255dc50af
Image("Unit9/DTP1.png")

# ╔═╡ 1120ad44-3519-4a0e-b464-d3666470ca35
md"#### Part A

What is the magnetic field at the position of the dot in the figure (Figure 1)?
Give your answer as a vector.

Express your answer in terms of the unit vectors $\hat{i}$, $\hat{j}$, and $\hat{k}$. Use the 'unit vector' button to denote unit vectors in your answer."

# ╔═╡ fefd36c1-8607-4825-b72b-4d4f0f357523
md"**Answer:** 
$\begin{gather*}
B = \frac{\mu_0}{4\pi} \frac{qv\sin{\theta}}{r^2}
\end{gather*}$"

# ╔═╡ ffb0edda-d3b5-4154-9df0-95758f3f3f12
let
	v = 2e7u"m/s"
	θ = 45u"°"
	q = e
	x = (2/100)u"m"
	y = (2/100)u"m"
	
	# B = ?
	# Magnetic field of a moving charge
	# B = (μ0 / 4π) * (qvsin(θ) / r^2)
	
	# r = ?
	# Distance formula
	r = sqrt(x^2 + y^2)u"m"
	
	B = (μ0 / 4π) * (q*v*sin(θ))/(r^2)
end

# ╔═╡ c45dde4e-d60f-4543-a2ee-d061f45bc848
md"### Problem 29.9

Although the evidence is weak, there has been concern in recent years over possible health effects from the magnetic fields generated by electric transmission lines. A typical high-voltage transmission line is 20 m above the ground and carries a 200 A current at a potential of 110 kV."

# ╔═╡ 0bcd7967-9648-4f80-8b8b-7a1459f963b7
md"#### Part A

What is the magnetic field strength on the ground directly under such a transmission line?

**Express your answer with the appropriate units.**"

# ╔═╡ ee17d3a7-a845-4b0d-991f-0d1546bd89c8
md"**Answer:**
$B = \frac{\mu_0}{2\pi} \frac{I}{r}$"

# ╔═╡ 0497b136-6780-4e31-9066-5cab808fa9f3
let
	r = 20u"m"
	I = 200u"A"
	
	# B = ?
	# Magnetic field of a wire
	B = (μ0 / 2π) * (I / r)
end

# ╔═╡ a57d36a2-c69a-4a4b-b623-e7067527a8d6
md"#### Part B

What percentage is this of the earth's magnetic field of 50 μT?

$\frac{B_{\text{wire}}}{B_{\text{earth}}}$"

# ╔═╡ 42774779-7c00-46c6-af46-29e6bfa5b362
let
	(r, I) = 20u"m", 200u"A"
	B_wire = (μ0 / 2π) * (I / r)
	
	(B_wire / B_earth) * 100
end

# ╔═╡ 924acf6e-5ada-4a64-ad51-1ff5ce84bb5e
md"# Notice

From this point on, I will no longer write out each problem since it takes too long and my exam is coming up very soon."

# ╔═╡ 7bb28d6d-6d18-4209-b48e-5e87eedec74b
md"### Problem 29.14"

# ╔═╡ d878a54c-a6e3-4fa7-81c9-5b045781f353
let
	I = 12u"A"
	r = (2/100)u"m"
	
	# B = ?
	# Magnetic field of a wire + superposition principle
	# B = (μ0 / 2π) * (I / r)
	
	B1a = (μ0 / 2π) * (I / r)
	B2a = -(μ0 / 2π) * (I / 3r)
	B1b = (μ0 / 2π) * (I / r)
	B2b = (μ0 / 2π) * (I / r)
	B1c = -(μ0 / 2π) * (I / 3r)
	B2c = (μ0 / 2π) * (I / r)
	
	B1a + B2a, (B1a, B2a), B1b + B2b, B1c + B2c, (B1c, B2c)
end

# ╔═╡ 862df6ac-1091-48b6-93a3-6cf64aa27dde
md"### Problem 29.46"

# ╔═╡ 294246d2-c696-4f46-b746-d5f40234eb59
let
	I = 4.0u"A"
	r1 = (1 / 100)u"m"
	r2 = (2.0 / 100)u"m"
	s1 = 2π * r1
	s2 = 2π * r2
	
	# B = ?
	# Magnetic field of a loop + superposition principle
	# B = (μ0 / 2π) * (I / r)
	
	B1 = (μ0 / 4π) * (I / r1)
	B2 = (μ0 / 4π) * (I / r2)
	
	B1 + B2 # Incorrect!
end

# ╔═╡ 9a3ac337-de34-41cb-96cf-7c2dd7cd47e3
md"### Problem 29.44"

# ╔═╡ 5bfab755-ed80-4318-ba3e-5774c89fff9f
md"$B = \frac{\mu_0 IR^2}{2(z^2 + R^2)^{3/2}} = \frac{\mu_0 I}{4R}$

$(z^2 + R^2)^{3/2} = 2R^3$

$z^2 + R^2 = 1.59R^2$

$z^2 = 0.59R^2$

$z = 0.77$"

# ╔═╡ 06f1e08c-95b3-430d-86a1-3de041fe1506
let
	# z = ?
	# Magnetic field of a circular loop
	# B = (μ0 I R^2) / (2(z^2 + R^2)^(3/2))
	
	# Compare to center of loop, z = 0
	# B = (μ0 I) / 2R
	#
	# Half it
	# B = (μ0 I) / 4R
	
	sqrt(2^(2/3) - 1)
end

# ╔═╡ 64d28e04-f67f-4b98-afd6-9c16a15f2277
md"### Problem 29.29"

# ╔═╡ a502e763-da48-4811-ab9b-6d2075c94758
let
	B = 3.0000u"T"
	u = 1.6605e-27u"kg"
	mO2 = 2 * 15.995 * u
	mN2 = 2 * 14.003 * u
	mCO = 12.000 * u + 15.995 * u
	q = 1.6022e-19u"C"
	
	# f = ?
	# Frequency of cyclotron
	# f = qB / (2π * m)
	
	fO2 = q*B / (2π * mO2)
	fN2 = q*B / (2π * mN2)
	fCO = q*B / (2π * mCO)
	fO2, fN2, fCO # Hz
end

# ╔═╡ 634882f3-baf9-4e98-a7c2-03c08314322d
md"### Problem 29.30"

# ╔═╡ 0a95a636-be2d-43cc-ac71-707c88d5f117
let
	v = (0.1c)u"m/s"
	d = (42 / 100)u"m"
	r = (d / 2)u"m"
	q = e
	B = (mp * v) / (q * r)
end

# ╔═╡ 9fa6bc2f-f99f-4d4b-91fa-695d04f0e83b
md"### Problem 29.33"

# ╔═╡ 2b72b700-5b08-4744-b29e-2714ec33580a
let
	m = (2 / 1000)u"kg"
	I = 1.6u"A"
	d = (12 / 100)u"m"
	B = m*g / (I*d)
end

# ╔═╡ 998d6c8b-3af1-4549-b633-13f4977e9afe
md"### Problem 29.34"

# ╔═╡ a18585ce-d13b-4581-9c49-65c54bc3436f
let
	L = 10 / 100
	d = 5 / 1000
	F = 7.2e-5
	V = 9
	R1 = 2
	I1 = V / R1
	I2 = F * 2π * d / (μ0 * I1 * L)
	R2 = V / I2
end

# ╔═╡ d8f53b47-1267-426b-a6d6-15b397dc8d9e
md"### Problem 29.38"

# ╔═╡ f6840354-2325-470c-8fd1-a3246f236550
let
	s = (5.50 / 100)u"m"
	I = (510 / 1000)u"A"
	B = 1.60u"T"
	θ = 30u"°"
	τ = I*s^2*B*sin(θ)
end

# ╔═╡ dc205f5d-0512-4429-8f26-f60e9f07115b
md"## PSW 9 (Chapter 29)"

# ╔═╡ d6e4e26e-cb79-4aa1-8d97-1f2f238aeb10
md"### Problem 29.15"

# ╔═╡ 9f8323d5-1480-490a-b088-be9d69bf6e00
let
	d = (6.0 / 1000)u"m"
	ℰ = 60u"V"
	R100 = 100u"Ω"
	R30 = 30u"Ω"
	R20 = 20u"Ω"
	R = (1/R100 + 1/(R30+R20))^-1
	I = ℰ / R
	I1 = ℰ / R100
	I2 = ℰ / (R30 + R20)
	B = (μ0 / 2π) * (I2 / d)
end

# ╔═╡ 4a0ecf24-5fc7-4586-9313-3c2fc33ea91c
md"### Problem 29.37"

# ╔═╡ c494b302-bf92-44b5-abf2-59956da672d5
let
	l = 1u"m"
	m = (58 / 1000)u"kg"
	r = (4 / 100)u"m"
	θ = 60u"°"
	# 2F = mg
	# ⟹ 2IlB sin(θ) = mg
	# ⟹ μ0 * I^2 sin(θ) / πr = mg
	# ⟹ I = sqrt(mg * πr / (μ0 * sin(θ)))
	I = sqrt(m*g * π*r / (μ0 * sin(θ)))
end

# ╔═╡ c8d2f67e-33ec-4ecd-b7f4-2037c1ac91ec
md"### Problem 29.50"

# ╔═╡ 6bc0b95d-be29-42ba-93ca-bb1bc910256e
let
	d = (2 / 100)u"m"
	L = (8 / 100)u"m"
	B = 0.10u"T"
	I = 1.6u"A"
	N = B * L / (μ0 * I)
end

# ╔═╡ 971c6622-d701-4142-addf-55c2fb8007bd
md"### Problem 29.52"

# ╔═╡ beedbeca-0477-4162-9c9e-05aa9cfd907f
md"
$B = \frac{\mu_0 I a^2}{2(x^2 + a^2)^{3/2}}$"

# ╔═╡ 63619364-64ad-44aa-bbc5-1a847358c892
let
	d = (18 / 100)u"m"
	r = (d / 2)
	B = 6e-12u"T"
	x = r
	I = (B * 2 * (x^2 + r^2)^(3/2)) / (μ0 * r^2)
	I = (B * 2 * (r^2 + r^2)^(3/2)) / (μ0 * r^2)
	I = (B * 2 * (2r^2)^(3/2)) / (μ0 * r^2)
	I = (B * 2 * (sqrt(2) * r)^(3)) / (μ0 * r^2)
end

# ╔═╡ d05ed603-19ce-4c7d-b67d-78e7258378d5
md"### Problem 29.73"

# ╔═╡ 21c3aacf-abb7-4f65-8681-440ee3c13341
let
	m = 4.0u"kg"
	s = 4.0u"m"
	I = 25u"A"
	θ = 25u"°"
	
	# Force acts on center of object
	# τ = Fd cos(θ)
	# ⟹ mg (s / 2) cos(θ) = Is^2B sin(90-θ)
	# ⟹ B = mg cos(θ) / (2Is sin(90-θ))
	B = m*g*cos(θ) / (2*I*s*sin(90u"°"-θ))
end

# ╔═╡ 651147e8-f7f8-4b87-9793-21e9b82a7c91
md"### Problem 29.65"

# ╔═╡ f30306c0-0006-4a6f-873a-07fadcdc5d2d
let
	B = u"T"(29.0u"mT")
	v = 4.9e6u"m/s"
	θ = 30u"°"
	vpp = v*cos(θ)
	vpl = v*sin(θ)
	q = e
	r = me*(vpp) / (q*B)
	
	Δt = 2π*r / vpp
	p = vpl * Δt
end

# ╔═╡ bfec2cfd-b400-4e73-8a40-7b3665209a5d
md"## Diagnostic Test 10 (Chapter 30)"

# ╔═╡ 1b65d5b3-ffb4-4c4c-a071-24cf1cfdd0c4
md"### Problem 30.4"

# ╔═╡ 6a010c2a-f8e6-44db-84ff-8e9a9593a29e
let
	a = u"m"(30u"cm")
	B1 = 2.0u"T"
	B2 = 1.0u"T"
	Φ1 = a^2 * B1
	Φ2 = a^2 * B2
	Φ1 - Φ2
end

# ╔═╡ e5254b57-0930-4083-b8d5-b37ae9292052
md"### Problem 30.5"

# ╔═╡ d7fd0a6d-2df6-4614-abf0-72971f07220b
let
	A = u"m^2"((5*10)u"cm^2")
	B = 5.50e-2u"T"
	θ = 45u"°"
	Φ1 = A*B*cos(θ)
	Φ2 = A*B*cos(θ)
	Φ1 + Φ2
end

# ╔═╡ e6375fb6-ae08-4442-b7c5-26953bd1cd95
md"### Problem 30.8"

# ╔═╡ adcf50c9-8c45-46fa-aca3-10a5c660f80b
let
	ds = u"m"(2.6u"cm")
	dl = u"m"(7.0u"cm")
	A = 1/4 * π * ds^2
	B = 0.16u"T"
	Φ1 = Φ2 = A*B
end

# ╔═╡ 549d2a7f-d307-4c96-9df5-6f936842cc59
md"### Problem 30.11"

# ╔═╡ 4cd51b45-2e77-41a2-9691-2d5e1fc01d3f
let
	s = u"m"(20u"cm")
	B = 0.30u"T"
	θ = 60u"°"
	b = s/2
	h = s*sin(θ)
	A = b*h / 2
	Φ = A*B
end

# ╔═╡ 3945a727-df1d-4717-b9d1-3b14f9e07adf
md"### Problem 30.12

- Yes, clockwise. Use Lenz's law."

# ╔═╡ 9c8a76a8-7caa-4d0d-9608-4e98d3955677
md"### Problem 30.13"

# ╔═╡ bf938d16-4f96-409a-b3e7-39f6873ca275
let
	B = 0.50u"T"
	v = 55u"m/s"
	R = 0.70u"Ω"
	l = u"m"(5.0u"cm")
	ℰ = v*l*B
	I = ℰ / R
end

# ╔═╡ e4ecd474-4d48-4414-93b4-6eb029da45eb
md"### Problem 30.15"

# ╔═╡ b798ffc4-bc44-4add-885f-96b88cf66960
let
	R = 0.30u"Ω"
	I = u"A"(150u"mA")
	s = u"m"(8.0u"cm")
	E = I*R
	A = s^2
	# E = dΦ/dt = A |dB/dt|
	dBdt = E/A
end

# ╔═╡ 1d2210ec-00a9-4960-8686-85df92dae42d
md"### Problem 30.22"

# ╔═╡ d2162fdf-dc4b-4138-8cc8-6ac803d82566
let
	V1 = 13000u"V"
	f = 60u"Hz"
	V2 = 120u"V"
	N2 = 150
	N1 = N2*V1/V2
	
	I2 = 220u"A"
	# I1V1 = I2V2 ⟹ I1 = I2V2/V1
	I1 = I2*V2/V1
	
	N1, I1
end

# ╔═╡ 57086fd7-66cb-4a72-b589-dc5fa3c8c8c2
md"### Problem 30.26"

# ╔═╡ a7972df8-734e-4108-86b6-c0a5d0ede63d
let
	L = (100 / 1000)u"H"
	Rw = 5.0u"Ω"
	ℰ = 9u"V"
	Ri = 3.0u"Ω"
	R = Rw + Ri
	I = ℰ/R
	UL = 1/2 * L * I^2
end

# ╔═╡ 465bc5f9-d40c-4227-8962-da6746b1dcc4
md"### Problem 30.27"

# ╔═╡ 2817d2a7-fb3f-4986-adb9-3fb36a66d1b9
let
	d = u"m"(3.00u"cm")
	A = 1/4 * π * d^2
	ℓ = u"m"(14.0u"cm")
	N = 200
	I = 0.750u"A"
	Lsol = μ0 * N^2 * A / ℓ
	UL = 1/2 * Lsol * I^2
end

# ╔═╡ 6f906af6-1379-42a3-b24d-dd5d257241c9
md"### Problem 30.19"

# ╔═╡ b94bf1ef-fb85-4e1a-92f8-3f47e143f9e6
let
	# F = ma = qE ⟹ a = qE/m
	dBdt = 0.7u"T/s"
	ra = u"m"(1.0u"cm")
	rb = u"m"(0.0u"cm")
	rc = u"m"(1.0u"cm")
	rd = u"m"(2.0u"cm")
	q = e
	Ea = ra/2 * dBdt
	Eb = rb/2 * dBdt
	Ec = rc/2 * dBdt
	Ed = rd/2 * dBdt
	aa = q*Ea / mp # upwards
	ab = q*Eb / mp # a = 0
	ac = q*Ec / mp # downwards
	ad = q*Ed / mp # downwards
	aa,ab,ac,ad
end

# ╔═╡ 1568e950-6ae3-4eee-8c28-8db36795a929
md"### Problem 30.20"

# ╔═╡ 66cb890a-45af-4faf-8ecd-02df1bcdf3e6
let
	d = u"m"(5.0u"cm")
	B = 2.0u"T"
	dBdt = 3.40u"T/s"
	r = u"m"(1.60u"cm")
	E = r/2 * dBdt
end

# ╔═╡ 22fc3d80-341b-4902-89c1-c1a587c28a08
md"## PSW 10 (Chapter 30)"

# ╔═╡ 63b35422-6697-4a1f-8d60-55c977a87360
md"### Problem 30.39"

# ╔═╡ d410ae9c-d876-4ac2-9d7d-44154cc24325
let
	N = 100
	dc = u"m"(5.0u"cm")
	dw = u"m"(0.50u"mm")
	rc = dc / 2
	I = 4.0u"A"
	ρ = 1.7e-8u"Ω"

	# |dB/dt| = ?
	# Faraday's Law
	# E = N|dΦ/dt| = NA |dB/dt| ⟹ |dB/dt| = E/NA
	
	Aw = 1/4 * π * dw^2
	L = dw * N
	R = N * ρ * (2π*rc) / Aw
	E = I * R
	
	A = 1/4 * π * dc^2
	
	dBdt = E/(N*A)
end

# ╔═╡ e0a50b78-31a1-45ee-be74-2c6d8b5f13b8
md"### Problem 30.49"

# ╔═╡ 77c5d223-6de7-454f-b6d3-2895600e2b1a
let
	d = u"m"(18u"cm")
	N = 120
	f = 60u"Hz"
	ℰ = 350u"V"
	
	# B = ?
	# Electromotive force of a generator
	# ℰ = NBωA sinωt ⟹ B = ℰ/(NωAsin(ωt)) = ℰ/(NωA) since peak of sin = 1
	
	ω = 2π * f
	A = 1/4 * π * d^2
	B = ℰ/(N*ω*A)
end

# ╔═╡ 85dee8d0-d364-4744-a5ac-5459f7c1a95c
md"### Problem 30.50"

# ╔═╡ 91d1441c-8d8b-4652-b089-5d06d191d21d
let
	Nc = 40
	dc = u"m"(4.0u"cm")
	R = 0.40u"Ω"
	
	ds = u"m"(4.0u"cm")
	Ls = u"m"(20u"cm")
	Ns = 200
	
	f = 60u"Hz"
	I = 0.20u"A"
	
	# I0 = ?
	# Magnetic field of a solenoid
	# Bsol = μ0 INs / Ls = μ0 (I0 sin(2πft)) Ns / Ls
	
	# Magnetic flux through coil
	# Φm = Nc ABsol = Nc A (μ0 (I0 sin(2πft)) Ns / Ls)
	
	# Induced emf in coil
	# ℰ = -dΦ/dt = Nc A (2πf μ0 (I0 cos(2πft)) Ns / Ls)
	# I = ℰ/R = Nc A (2πf μ0 (I0 cos(2πft)) Ns / Ls) / R
	
	# Solve for I0
	# I0 = (I * Ls * R) / (Nc A 2πf μ0 Ns)
	
	A = 1/4 * π * ds^2
	I0 = I*Ls*R / (Nc*A*2π*f*μ0*Ns) # The correct answer is 6.0 A.
end

# ╔═╡ 2e69b5bd-0b56-4bf2-a338-b4d373dde517
md"### Problem 30.65"

# ╔═╡ e65a8d69-d925-4de2-9edd-c33669b756a8
let
	A = 6.3e-2u"m^2"
	B = 5.3u"T"
	ℰ = 9e-2u"V"
	
	# Δt = ?
	# Faraday's Law
	# ℰ = ΔΦm/Δt ⟹ Δt = ΔΦm/ℰ
	
	# ΔΦm = ?
	# Magnetic flux equation
	ΔΦm = A*B
	
	Δt = ΔΦm/ℰ
end

# ╔═╡ e0d4b7ca-578b-4d25-a9e6-81baafa497b0
md"### Problem 30.80"

# ╔═╡ f44da9f7-87fa-4a44-864b-11e54553b3b0
let
	R = 2.4e-2u"Ω"
	I = 15u"A"
	r = u"m"(2.0u"cm")
	l = u"m"(4.0u"cm")
	x = u"m"(1.0u"cm")
	v = 10u"m/s"
	
	# I_loop = ?
	# Ohm's Law
	# ℰ = IR ⟹ I = ℰ/R
	
	# ℰ = ?
	# Faraday's Law
	# ℰ = dΦ/dt = d/dt(AB) = d/dt(xlB) = vlB = vl(B_r - B_rx)
	
	# B_r = ?
	# Magnetic field of a wire
	B_r = (μ0 / 2π) * (I / r)
	
	# B_rx = ?
	# Magnetic field of a wire
	B_rx = (μ0 / 2π) * (I / (r+x))
	
	ℰ = v*l*(B_r - B_rx)
	
	I = ℰ/R
end

# ╔═╡ ca39044c-f352-4fb9-a8be-355f4a01a17d
md"### Problem 30.85"

# ╔═╡ 092aa2fc-ddc6-4729-911c-aa4e21ad7bd9
let
	d = u"m"(2.1u"cm")
	N = 1200
	L = 1u"m"
	r = u"m"(0.60u"cm")
	ℰ = 5.4e-4u"V/m"
	
	# dI/dt = ?
	# Magnetic field of a solenoid
	# dB/dt = (μ0 N / L) (dI/dt) ⟹ dI/dt = (dB/dt) / (μ0 N / L)
	
	# dB/dt = ?
	# Faraday's Law of induction
	# ℰ = r/2 (dB/dt) ⟹ dB/dt = 2ℰ / r
	
	dBdt = 2ℰ / r
	
	dIdt = dBdt / (μ0 * N / L)
end

# ╔═╡ 3ece80ba-1bde-48a9-93ff-d6b9778b43e2
md"## Diagnostic Test 11 (Chapter 31)"

# ╔═╡ 07586a45-e8b7-466d-99b5-5b1fc20b32eb
md"### Conceptual Question 31.7"

# ╔═╡ 88053dfe-70e5-498a-bfd1-cb7eb33fad96
let
	# Part A
	# Out of the page
	
	# Part B
	# Upward
end

# ╔═╡ 4c49f6cf-0f0e-408c-acde-ad77faa9903c
md"### Problem 31.19"

# ╔═╡ da63cb45-9b93-4423-8fd7-0b6aae9e4a29
let
	d = u"m"(2.0u"mm")
	P = u"W"(1.6u"mW")
	
	# E0 = ?
	# Intensity of electromagnetic wave
	# P/A = 1/2cμ0 E0^2
	# ⟹ E0 = sqrt((P/A) * 2cμ0)
	
	# A = ?
	A = 1/4 * π * d^2
	
	E0 = sqrt((P/A) * 2c*μ0)
	
	# B0 = ?
	# EM Field strength relationship
	# E0 = cB0
	# ⟹ B0 = E0/c
	B0 = E0/c
	
	E0, B0
end

# ╔═╡ 472fc923-c527-47e4-9ea2-e2a762c08f62
md"### Problem 31.21"

# ╔═╡ 916addb5-4a54-422d-b9c9-5b24c3f16e3f
let
	P = u"W"(160u"MW")
	d = u"m"(1.6u"μm")
	
	# E0 = ?
	# Intensity of electromagnetic wave
	# P/A = 1/2cμ0 E0^2
	# ⟹ E0 = sqrt((P/A) * 2cμ0)
	
	# A = ?
	A = 1/4 * π * d^2
	
	E0 = sqrt((P/A) * 2c*μ0)
	
	# Ehydrogen = ?
	# Electric field produced by a point charge
	q = e
	r = u"m"(0.053u"nm")
	Ehydrogen = k*q/r^2
	
	E0, E0 / Ehydrogen
end

# ╔═╡ bfafde7f-8d61-41fb-be8c-d3bf12404fab
md"### Problem 31.22"

# ╔═╡ 892661d3-046f-4df9-9269-89f26ca79b4c
let
	P = 1000u"W"
	λ = u"m"(10u"μm")
	d = u"m"(3.0u"mm")
	
	# F = ?
	# Radiation force due to beam of light
	F = P / c
end

# ╔═╡ 04898c9a-5eca-4d1f-bd19-aec0d16f51d8
md"### Conceptual Question 31.10"

# ╔═╡ 8f1b5656-c3e6-4490-ba16-fbeb3f9c574e
let
	θ = Dict(
		:a => 90u"°",
		:b => 45u"°",
		:c => 30u"°",
		:d => 0u"°",
		:e => 30u"°"
	)
	
	sort(collect(θ), by=x->(cos(x[2])^2), rev=true)
end

# ╔═╡ 705a1476-eb5d-4f76-af51-4cf3bb61d36d
md"## PSW 11 (Chapter 31)"

# ╔═╡ ff9db5b4-9875-4279-8957-4cfd3245d6f7
md"### Problem 31.47"

# ╔═╡ 61c3c8a1-4a00-4c1f-8c82-6594bcdfb006
let
	r = u"m"(4.5e9u"km")
	P = 21u"W"
	
	# I = ?
	# Intensity of point source
	# I = P/4πr^2
	I = P/(4π*r^2)
	
	# E0 = ?
	# Intensity of electromagnetic wave
	# I = 1/2cμ0 E0^2
	# ⟹ E0 = sqrt(2Icμ0)
	E0 = sqrt(2I*c*μ0)
	
	I, E0
end

# ╔═╡ 241d99b8-c672-40f3-8b9d-854413a57630
md"### Problem 31.59"

# ╔═╡ d40d40e9-e141-4161-8cc7-403d30e74304
let
	s = u"m"(10u"cm")
	E0 = u"V/m"(11u"kV/m")
	ΔT = 45
	
	# t = ?
	# 0.85P = E/t
	# ⟹ t = E/0.85P
	
	# P = ?
	# Intensity of electromagnetic wave
	# P/A = 1/2cμ0 E0^2
	# ⟹ P = A/2cμ0 E0^2
	
	begin
		# A = ?
		# Area of one side of the cube
		A = s^2

		P = A/(2c*μ0) * E0^2
	end
	
	# E = ?
	# Specific heat of water
	# E = Q = mcΔT = ρVcΔT
	
	begin
		# ρ = ?
		# Density of water
		ρ = 1000u"kg/m^3"

		# V = ?
		# Volume of water
		V = s^3

		# c = ?
		# Specific heat capacity of water
		cw = 4190u"J/(kg*K)"
	
		E = Q = ρ*V*cw*ΔT
	end
	
	t = E/0.85P
end

# ╔═╡ df7ed866-611b-4b64-94fd-b5876ed39336
md"### Problem 31.60"

# ╔═╡ c74ce47c-697f-4fa6-9d27-bef932bd2d54
let
	m = 80u"kg"
	Δx = 5.0u"m"
	P = 1000u"W"
	t0 = u"s"(1.0u"hr")
	
	# t = ?
	# Initial time plus extra time
	# t = t0 + t1
	
	begin
		# t1 = ?
		# Change in position over time
		# v = Δx1/t1 ⟹ t = Δx1/v
		
		begin
			# Δx1 = ?
			# Change in position after 1.0hr
			# Δx1 = Δx - Δx1

			begin
				# Δx0 = ?
				# Kinematic equation
				# Δx0 = 1/2 a(t0)^2
				
				begin
					# a = ?
					# Newton's second law
					# F = ma ⟹ a = F/m
					
					begin
						# F = ?
						# Force due to beam of light
						# F = P/c
						
						F = P/c
					end
					
					a = F/m
				end
				
				Δx0 = 1/2 * a * t0^2
			end
			
			Δx1 = Δx - Δx0
		end
		
		begin
			# v = ?
			# Kinematic equation
			# v = at0
			
			v = a*t0
		end
		
		t1 = Δx1/v
	end
	
	t = t0 + t1
	u"hr"(t)
end

# ╔═╡ 69e73591-3bdf-4e31-9ce9-4c1f44e207a8
md"### Problem 31.37"

# ╔═╡ 3388d0f4-ace3-4322-89ba-a06ba0840adf
let
	I = 5.0u"A"
	d = u"m"(1.0u"cm")
	R = d / 2
	r = u"m"(1.8u"mm")
	
	# B = ?
	# Magnetic field of a wire
	B1 = (μ0 / 2π) * (I / r)
	
	# B = ?
	# Biot-Savart Law
	B2 = (μ0 / 2π) * (r / R^2) * I
	
	B1, B2
end

# ╔═╡ aa2e1f09-bb0e-452d-b277-32ed87f1d805
md"## Diagnostic Test 12 (Chapter 34)"

# ╔═╡ 49522fe9-e9d9-433c-92a2-072d60e1576e
md"### Problem 34.40"

# ╔═╡ e9661551-68aa-41fc-be08-e88b8444e4f6
let
	s = 30.0u"cm"
	f = -22.0u"cm"
	
	# s′ = ?
	# Mirror equation
	# 1/s + 1/s′ = 1/f
	# ⟹ s′f + sf = ss′
	# ⟹ s′(f - s) = -sf
	# ⟹ s′ = -sf/(f - s)
	s′ = -s*f/(f - s)
end

# ╔═╡ 8d7d25f5-f27e-4b86-a845-15e9a3dd2f72
md"### Problem 34.41"

# ╔═╡ 3548c0a7-1de7-4534-a930-58d80e9efad7
let
	h = 1.3u"cm"
	s = 18.0u"cm"
	f = 56.0u"cm"
	
	# s′ = ?
	# Mirror equation
	# 1/s + 1/s′ = 1/f
	# ⟹ s′f + sf = ss′
	# ⟹ s′(f - s) = -sf
	# ⟹ s′ = -sf/(f - s)
	s′ = -s*f/(f - s)
	
	# h′ = ?
	# Magnification equation
	# M = h′/h = -s′/s
	# ⟹ h′ = -s′/s h
	h′ = -s′/s * h
	
	s′, h′
end

# ╔═╡ b550aa41-be86-4336-91cd-816565045da5
md"### Problem 34.33"

# ╔═╡ 0fe25f6d-0132-4fa4-a1b8-a03963fd1ee7
let
	h = 2.2u"cm"
	s = 36.0u"cm"
	f = 18.0u"cm"
	
	# s′ = ?
	# Lens equation
	# 1/s + 1/s′ = 1/f
	# ⟹ s′f + sf = ss′
	# ⟹ s′(f - s) = -sf
	# ⟹ s′ = -sf/(f - s)
	s′ = -s*f/(f - s)
	
	# h′ = ?
	# Magnification equation
	# M = h′/h = -s′/s
	# ⟹ h′ = -s′/s h
	h′ = -s′/s * h
	
	s′, abs(h′)
end

# ╔═╡ a6e0b275-276f-4c0b-b548-4a4c283a6330
md"### Problem 34.16"

# ╔═╡ f0a5c1d8-0de4-4455-b6e7-73b0426cd04c
let
	# d = ?
	# Transparent hemisphere
	# d = R / n
end

# ╔═╡ ceccbe3d-5c9a-47bf-a168-18154f30729b
md"### Problem 34.11"

# ╔═╡ 6f920972-e2ab-4e62-855e-9bac912831df
let
	y = 1.0u"cm"
	θ1 = 69u"°"
	n1 = 1
	n2 = 1.33
	n3 = 1.50
	
	# θ2 = ?
	# Snell's Law
	# n1 sin(θ1) = n2 sin(θ2)
	# ⟹ θ2 = asin(n1 sin(θ1) / n2)
	θ2 = asind(n1 * sind(θ1) / n2)
	
	# θ3 = ?
	# Snell's Law
	# n2 sin(θ2) = n3 sin(θ3)
	# ⟹ θ3 = asin(n2 sin(θ2) / n3)
	θ3 = asind(n2 * sind(θ2) / n3)
end

# ╔═╡ 3be6b392-ea30-4015-a718-41f43797626e
md"### Problem 34.7"

# ╔═╡ 1c600f48-8f4d-4841-bfcf-14e805e284b8
let
	b = 5.0u"m"
	h = 3.0u"m"
	mid = h / 2
	
	# ϕ = ?
	# Trigonometry
	# ϕ = atan(h/x)
	
	begin
		# x = ?
		# Trigonometry relationship
		# tan(ϕ) = h/x = mid / (b - x)
		# ⟹ (b - x) h = x mid
		# ⟹ bh - xh = x mid
		# ⟹ bh = x(mid + h)
		# ⟹ x = bh / (mid + h)
		
		x = b*h / (mid + h)
	end
	
	ϕ = atand(h/x)
end

# ╔═╡ f4730b14-2902-457d-a5f8-7e9140926b1e
md"### Problem 34.14"

# ╔═╡ 2fbca1ac-29e5-4f5b-8cac-faf6b48045eb
let
	n1 = 1.60
	n2 = 1.45
	
	# θc = ?
	# Critical angle
	θc = asind(n2/n1)u"°"
	
	θmax = 90u"°" - θc
end

# ╔═╡ c9cae5ed-a959-4c20-a4a6-21b6962f7fc5
md"### Problem 34.37"

# ╔═╡ 53439784-13c7-4f08-949d-e60cd41d4494
let
	h = 2.2u"cm"
	s = 15u"cm"
	f = -23u"cm"
	
	# s′ = ?
	# Lens equation
	# 1/s + 1/s′ = 1/f
	# ⟹ s′f + sf = ss′
	# ⟹ s′(f - s) = -sf
	# ⟹ s′ = -sf/(f - s)
	s′ = -s*f/(f - s)
	
	# h′ = ?
	# Magnification equation
	# M = h′/h = -s′/s
	# ⟹ h′ = -s′/s h
	h′ = -s′/s * h
	
	s′, abs(h′)
end

# ╔═╡ e98b7caa-8df6-4292-93f5-f364ddeda2a3
md"### Problem 34.5"

# ╔═╡ 692de57c-99d1-439c-ab59-945db21dfe47
let
	(Ax, Ay) = (10u"cm", 5u"cm")
	(Bx, By) = (15u"cm", 15u"cm")
	
	# d = ?
	# Initial displacement
	# d = d0 + y
	
	d0 = Ay
	
	begin
		# y = ?
		# Use trigonometry relationship
		# tan(ϕ) = (By - Ay)/y = By/((By - Ay) - y)
		# let dy = By - Ay
		# ⟹ dy (dy - y) = By * y
		# ⟹ dy^2 - dy y = By * y
		# ⟹ dy^2 = y * (By + dy)
		# ⟹ y = dy^2 / (By + dy)
		
		dy = By - Ay
		y = dy^2 / (By + dy)
	end
	
	d = d0 + y
end

# ╔═╡ 0efd04be-af2c-45e4-9aaa-b3fe5fb9c7d0
md"### Problem 34.34"

# ╔═╡ da59c2ff-871e-4dee-9ec8-467ed823f11a
let
	h = 1.1u"cm"
	s = 87.0u"cm"
	f = 31.0u"cm"
	
	# s′ = ?
	# Lens equation
	# 1/s + 1/s′ = 1/f
	# ⟹ s′f + sf = ss′
	# ⟹ s′(f - s) = -sf
	# ⟹ s′ = -sf/(f - s)
	s′ = -s*f/(f - s)
	
	# h′ = ?
	# Magnification equation
	# M = h′/h = -s′/s
	# ⟹ h′ = -s′/s h
	h′ = -s′/s * h
	
	s′, abs(h′)
end

# ╔═╡ b520e5e2-702d-4131-9d10-3b12b04bda7e
md"## PSW 12 (Chapter 34)"

# ╔═╡ c843abfd-f681-4850-83c0-f80241b3b122
md"### Problem 34.52"

# ╔═╡ 210917a3-6257-4723-a0ee-5bc04dd87884
let
	x1 = 2.1u"m"
	y1 = 1.0u"m"
	y2 = 3.0u"m"
	n1 = 1.00
	n2 = 1.33
	
	# d = ?
	# d = x1 + x2
	
	begin
		# x2 = ?
		# Trigonometry
		# tan(θ2) = x2/y2 ⟹ x2 = y2 tan(θ2)
		
		begin
			# θ2 = ?
			# Snell's Law
			# n1 sin(θ1) = n2 sin(θ2)
			# ⟹ θ2 = asin(n1 sin(θ1) / n2)

			begin
				# θ1 = ?
				# Trigonometry
				# tan(θ1) = x1/y1 ⟹ θ1 = atan(x1/y1)
				θ1 = atand(x1/y1)
			end
			
			θ2 = asind(n1 * sind(θ1) / n2)
		end
		
		x2 = y2 * tand(θ2)
	end
	
	d = x1 + x2
end

# ╔═╡ ad1e49db-25cf-425a-88dd-47422330e85a
md"### Problem 34.53"

# ╔═╡ b51230db-b12f-4c92-a140-79002eb2c1e0
let
	y = 1.90u"m"
	n1 = 1.00
	s = u"m"(36.0u"cm")
	s′ = u"m"(46.0u"cm")
	x = s′ - s
	
	# n2 = ?
	# Snell's law
	# n1 sin(θ1) = n2 sin(θ2)
	# ⟹ n1 = n2 sin(θ2)
	# ⟹ n2 = n1 / sin(θ2)
	
	begin
		# θ2 = ?
		# Trigonometry
		# tan(θ2) = x/y ⟹ θ2 = atan(x/y)
		
		θ2 = atand(x/y)
	end
	
	n2 = n1 / sind(θ2) # Incorrect!
end

# ╔═╡ 9bf8ac4d-5c33-4dd5-a2d2-5ae1b03ebcd2
md"### Problem 34.63"

# ╔═╡ 8799b871-5a4c-4663-afcc-35e58ccf502e
let
	M = 1.5
	s = 1.8u"cm"
	
	# f = ?
	# Mirror equation
	# 1/s + 1/s′ = 1/f
	# ⟹ s′f + sf = ss′
	# ⟹ f = ss′ / (s′ + s)

	begin
		# s′ = ?
		# Magnification equation
		# M = -s′/s
		# ⟹ s′ = -M * s
		
		s′ = -M * s
	end
	
	f = s*s′ / (s′ + s)
end

# ╔═╡ 9e90dab3-6ba7-4298-889d-047bac5b5059
md"### Problem 34.76"

# ╔═╡ 9df87359-662d-46d0-8983-d45c2798a93c
let
	M = 3
	r = 30u"cm"
	f = r / 2
	
	# s = ?
	# Mirror equation
	# 1/s + 1/s′ = 1/f
	# ⟹ 1/s + 1/3s = 1/f
	# ⟹ 3f - f = 3s
	# ⟹ 2f = 3s
	# ⟹ s = 2f/3
	
	s = 2f/3
end

# ╔═╡ a47cc5f3-9375-4128-bac4-da8bd689b46c
md"### Problem 34.69"

# ╔═╡ ed90dde8-3230-4fe9-87c2-615aab4269bb
let
	r = 2.6u"m"
	M = -2
	
	# f = ?
	# Mirror equation
	# 1/s + 1/s′ = 1/f
	# ⟹ s′f + sf = ss′
	# ⟹ f = ss′ / (s′ + s)
	
	# s = ?
	# Magnification equation
	# M = -s′/s = -(r - s)/s
	# ⟹ sM = s - r
	# ⟹ s = r / (1 - M)
	s = r / (1 - M)
	
	# s′ = ?
	# s + s′ = r
	# ⟹ s′ = r - s
	s′ = r - s
	
	f = s*s′ / (s′ + s)
	
	f, s
end

# ╔═╡ 14f633eb-43f6-44b3-8558-6871f318d908
md"### Problem 34.73"

# ╔═╡ bd8ebbf4-7a57-4216-9690-f7c407fcfc58
let
	s = 13u"cm"
	M = 2
	
	# s′ = ?
	# Magnification equation
	# M = -s′/s ⟹ s′ = -M*s
	s′ = -M * s
end

# ╔═╡ Cell order:
# ╟─baaa0f44-a9d8-11eb-0d0d-53b78cd74315
# ╟─c565da05-80ca-4b72-af73-d5da2f1c2abc
# ╟─a1c99c25-e72e-4c4f-9ee9-855dad795483
# ╟─c5cf2733-8d62-4f97-9c6c-97c6bce90b02
# ╟─7abb1db1-d637-446c-9e55-3457db3db17e
# ╟─be1d2a6e-8c24-4a1e-b84b-aabfad8e6135
# ╟─6c9182b4-2bf5-40a8-8a7e-ecfb1f7e59f3
# ╠═b670ab02-1fe7-4204-9747-237348707d97
# ╟─3240dda1-8d4c-4551-8878-8c2ddd9f12d1
# ╟─8a56ceb5-dbd9-4950-bbfe-50b56c682487
# ╠═1d460401-7c48-4718-914e-ba3fc9f7950a
# ╟─98b7f219-578b-4717-8dfa-5f22f86c04b2
# ╟─f6b01ecd-9629-422c-800e-a41512fa9933
# ╟─81d41ebd-9c50-49a1-b77d-1f6c600477e7
# ╟─067e90ac-b370-4c53-b1d8-8ee65189b036
# ╟─179020bb-048a-4040-b517-0c081a5b68c0
# ╟─8065e0db-4aa8-447f-a130-49feedcddad7
# ╟─5745f4ea-219d-4e60-b269-9e08f010836a
# ╟─885d48fa-4a05-4468-8492-0cae4bfb7b26
# ╟─2d690e4b-3d09-4907-99de-5f0ef4662b7e
# ╟─eae4eef0-1701-406f-966d-736a2b2381f5
# ╟─9ca8f846-5d5b-4b28-85b6-90c5f9c068b6
# ╟─04912a55-5871-4917-8c95-7f03bd4abf1d
# ╟─42f03b7e-9fec-40bc-8d22-e594a22ab54e
# ╟─34b75779-b546-4628-ac0a-1d8fedc231eb
# ╟─fb93dd3c-de36-4087-9870-8365161f7d1f
# ╟─ab703047-2e82-4c13-a9d9-c97ffd42af67
# ╟─253d5697-9088-424f-aa2e-c5df2c7675bf
# ╟─fcdb7ea5-6203-4e74-b746-4470052b5f99
# ╟─5db75338-4b19-4037-942d-979856662d6c
# ╟─74378daa-7994-403e-9c41-86bae271a74d
# ╟─af3ab252-16c6-4e6f-bdc6-9a01fede5a30
# ╟─64bbc192-28dd-4db4-8dab-1cde2a031bc5
# ╟─185600d3-131d-491d-869d-06a865280a5c
# ╟─5fd137c7-a14e-4a53-9c9f-39f0992b1e43
# ╟─8a9474e5-4b73-4a3e-9573-fa0ca066f9de
# ╟─d8c9b9e2-eaa1-40e5-9899-f60d8fb9dddb
# ╟─f6000dca-7d5a-4bb6-93ec-3de97124fe51
# ╟─05c12afa-6ce0-4ab6-aac9-bb6a4f7a20e8
# ╟─f30d8566-72fd-4658-a4cb-fcd2ac33b063
# ╟─b6605cff-3e3c-40ed-b003-547a908a89f3
# ╟─c53a0513-5a65-453b-8833-f4be54af3e0c
# ╟─6be1aa76-6cf2-4e57-bde4-7effcc453073
# ╟─8acec63d-de21-4698-9e51-579c16d2e398
# ╟─1e73fe74-4f6d-4137-b771-2cfac7cf6332
# ╟─762087fa-ffcf-4691-8c67-6837555bbfb0
# ╟─d6dba861-4f6e-4aad-9b8c-1e18ee2639af
# ╟─6cf18ee6-6b70-466f-9e23-32368cb35865
# ╟─c5ee0bee-d2db-4daa-bbcf-5ac9f30b2f12
# ╟─24a53a41-96a8-4bab-a8cf-1f3cd6ad30ff
# ╟─060fd1a0-5548-4eb4-b4c2-f2db077e0d50
# ╟─8eb2caa8-5341-40a7-8ae5-aad8e44c1af1
# ╟─860bbf33-9025-44ee-aa26-7217f0bc7562
# ╟─28acdfbe-1020-4921-8c6c-0e38d0732d78
# ╟─e06efb86-5366-49c3-acb6-f9b209bf5d81
# ╟─6c9233eb-058a-4e8a-9c9b-22964e210dd1
# ╟─c83063bd-0bba-47e7-b869-e169d6e9c03e
# ╟─c9102584-2196-4483-b79f-60089ad9e1b4
# ╟─b30d503e-ab6c-4515-9a68-81327795aa6c
# ╟─85e2b232-6a09-4621-ab97-e2345b676999
# ╟─69bdb37e-2f06-4c78-a5bc-c3fce3cf6be8
# ╟─f9ba57aa-4113-40e0-af24-8d7066baef4c
# ╟─cdc4c352-a21c-4d88-8a6e-28da5974e893
# ╟─bc7ebdc7-3614-43ad-bb1c-695f535c339b
# ╟─3badd910-d0be-435d-8b61-751d2fc46984
# ╟─f5871103-8943-4085-8ec8-f7c19155262c
# ╟─64256f0e-f61a-41d9-9f07-f53f12b81d9f
# ╟─56988b0d-40f0-485c-bfd1-468431e2f906
# ╟─baf581de-7077-4c25-a5df-b5e82490b113
# ╟─11c087b0-7823-41ac-8034-e66875bcaec1
# ╟─ad23f43f-c8ac-48fd-9b21-901658710684
# ╟─a59c5606-b60e-44c8-a7e3-b84cd89b322c
# ╟─69065726-b456-4ab1-b8a6-22e638304388
# ╟─47e713c1-0741-4135-ad0c-8b7ad003c141
# ╟─45baa2c9-e2a9-44fc-a6a3-9e1b149d3ec6
# ╟─a44466e8-0954-4738-9836-e7d445d41a91
# ╟─13f7bece-837b-473e-bb86-df55d3f5dbdf
# ╟─6917fdb5-0538-4995-9ac5-14d7fc92b903
# ╟─018a2522-f201-44a7-8f63-d67411970a90
# ╟─ebe19088-8374-441c-9c1b-c00194737814
# ╟─30625a27-4961-4eff-be88-27a351a3db12
# ╟─66bd1832-dd76-43fa-ab08-018c8e726885
# ╟─08c4b0d3-a431-46dd-a0ae-3bd5a59b81e3
# ╟─eff73afd-3ded-49d2-9411-ec11933fb31f
# ╟─6e2b45e2-67bd-4512-9b3c-6f25dc75824f
# ╟─9cf0faf9-ea42-45da-9788-975cfecdca37
# ╟─67aca9a5-da3f-4a2c-9159-2dfb922217f8
# ╟─37aeddcf-e1cf-40a0-925e-20d600f24845
# ╟─5fb3d735-8df5-4e69-aa47-ff467dee9047
# ╟─c4f15be9-ba69-4b9f-9b5a-407a975c2fbe
# ╟─2c330d4d-8fa2-4c3f-a5b8-8a3ac19fd075
# ╟─a2fbf237-3b84-4331-be33-e13c0f726838
# ╟─84cdc818-8a8c-4888-b3bd-12399e60a739
# ╟─b759a10f-6110-4e66-8121-e1c8bf24efee
# ╟─9c245886-b491-4adf-9ccd-0f8d20326949
# ╟─c352a601-03e9-4f47-9d8e-2e7e806a7433
# ╟─d085be3a-89ec-4672-a47d-f5f2c020885b
# ╟─3d7c7ea7-24a4-4acc-8238-e71118fef4f1
# ╟─27a07162-335c-4d3a-9771-2a3793490631
# ╟─04beeb35-c9b8-4aca-9afa-6d9cefaacc62
# ╟─2f72f311-4bb9-4459-a1ee-3a3b5339b13f
# ╟─082f1121-811b-4404-b561-6ce9ca6a05ce
# ╟─4584596e-c66f-45b3-ad3d-3042f13a1eca
# ╟─99a92b4f-0a27-4681-a372-e6db84db033a
# ╟─3a92f0e7-983c-433d-a83d-7c4e1a52a206
# ╟─ae445aa3-dcd9-4d97-87f7-7be0a2287cf3
# ╟─6c521a07-2a6b-4ce8-a772-68b511bddf50
# ╟─90a8d78d-cdf9-4485-ba31-1364e2c920ae
# ╟─1f9d99d8-d613-4e62-9d46-5ebc61b029d6
# ╟─141ea713-8276-4799-8e9c-f46f14e30c44
# ╟─59508d51-2fab-4cab-816c-6d0c88979af8
# ╟─685e68c4-2be2-4fc7-b22f-9dc78b231236
# ╟─f0d975f2-dc73-476a-9dec-6c7939511066
# ╟─d1a284e5-e3d9-4d9c-b350-f6a9f9d4bf23
# ╟─a76b95fb-bf1e-4fea-ae0b-927017a78d1b
# ╟─368b2131-d30c-42ae-9550-b51073e7592b
# ╟─0acf5486-3702-4e8a-889e-871916d2ecf3
# ╟─bfef7588-5c90-4a37-967e-660eb3e5efcd
# ╟─86fa33b9-17da-4322-b195-fdc99687c518
# ╟─9fdb361f-cb53-4270-a59c-6b967da468ea
# ╟─4c54fa63-06a1-4519-8104-aea78a2bbfbe
# ╟─a68a80e3-b74e-4dbf-93ce-2892bc6dafd5
# ╟─cda191c4-afb2-4512-a930-171f5757a094
# ╟─c721d98c-3586-450c-a22f-a4ff048d12c6
# ╟─b55d0b05-3713-46ea-819e-d180e662a47e
# ╠═16f0dd9e-f5bb-4173-a07c-7feba801837f
# ╟─b87d87a8-da10-4af4-94af-868947f45d02
# ╟─e664b06c-2924-423c-9f1b-52174fca7cc3
# ╟─7ec6edf3-7b6d-4ea2-8a4f-86dd2178eb91
# ╟─6de0da98-8dfe-496d-adc8-82c5c9af499e
# ╟─d518d932-52d5-45de-aaf4-d94dfaf3eb64
# ╟─570a8d6f-b108-4bba-81a4-8adffe79cea5
# ╟─e275bc47-c73c-4cf5-bbdb-bebee2fb08af
# ╟─07adb0ac-6cb2-40ed-ad5f-659a6f58303b
# ╟─276749db-45c7-43b9-a746-e48a6bdede2e
# ╟─4689568d-ba6d-4954-86ba-3fcadb52f957
# ╟─9a0b5bac-f167-4150-beaa-3c770dbc8cac
# ╟─7094b76b-519e-4427-91fe-88d33304fef1
# ╟─82836166-8d43-4c15-a2d8-ac451a1d20ab
# ╟─06389e81-54a5-46df-b7a6-fd11b44c5406
# ╟─5b87298f-9b97-4f7c-aab5-b3d740f9cab0
# ╟─980aa663-98cd-42be-9b92-238a452f537a
# ╟─44d12feb-10cf-48b2-929a-8e6ff39a9496
# ╟─9f4b96a0-2b5e-47d0-8694-1c1d2144fd01
# ╟─2434b3b5-2da8-4c1b-8bf2-522fc75b5cd1
# ╟─72bd9e28-5048-48f2-a110-f5feaa67caee
# ╟─a8dd4343-6913-4e19-bc12-23e89c9e6236
# ╟─239d8478-4571-4155-90e3-95ae1deb4939
# ╟─a748ef26-adc8-4fe5-ad2b-8c8b1d79b54d
# ╟─f584bd06-21b6-41c2-b729-84b77acd2e2f
# ╟─0fbb0fa0-6c8e-497f-856f-2f3f8f2ce735
# ╟─4e172839-92b8-411a-ab77-3f8238d3a5e1
# ╟─51cf30e3-8fdc-4b62-a1a6-9252ed608dc9
# ╟─1183767b-3d27-49c0-91ba-fd65e96cf773
# ╟─9086f546-aa48-438e-b682-b0f27b2bff5c
# ╟─d78a8b7b-4ea8-45ad-9d8d-331a090170a4
# ╟─b7181523-93b0-4865-9c91-9ee965124bfa
# ╟─fe0fb4f9-6d8f-48e7-9809-71c55035ba75
# ╟─39fe00bb-0eb1-4f31-8073-e17186da71e7
# ╟─818d7074-6ce6-4746-a15e-a101ae653ec9
# ╟─da06ac7d-67f3-483c-aad0-98529cf44a28
# ╟─eae1f535-37ac-48dd-8f2c-65b88852fa43
# ╟─d0224ffa-a5ef-465c-89fe-bc293e4d46ad
# ╟─4ff2da18-3d84-4cc8-9588-9fcc017aa4db
# ╟─73709c95-3e75-48b9-9465-b80684920db7
# ╟─6036b824-7567-444a-8bad-a0472aeb549e
# ╟─9a0f2ce9-6ac6-4c9a-a1dc-dc2e93187247
# ╟─3bd6fefb-1475-4044-b637-f2358469d38f
# ╟─87b9e579-9e52-4d85-8c33-8438c548184a
# ╟─8633003f-0de3-466a-974a-9087eaea00ec
# ╟─ffa99665-c461-43ee-9939-e6027e53fad8
# ╟─81deea62-431f-404e-9df4-7536baa0cabd
# ╟─cb6cc92b-2d9a-4ee7-9e82-a175c0d1202f
# ╟─16e94b95-66bd-4b73-8185-e564eb2d6789
# ╟─6516bc36-7df5-4522-90e1-57ddbf01bd9d
# ╟─aab4689d-9e64-486c-8913-99972148d7f5
# ╟─b7a99f37-aeb3-4123-aa05-dadfca72f06e
# ╟─c6563fbe-7118-4ddc-a922-9e9327b46bc5
# ╟─79f4dc36-9ea9-4f22-9e0a-23f7e7bc139e
# ╟─80c5e3e4-61bd-46cd-aa7c-1f6b098269a6
# ╟─cd63ab55-26fe-4015-b171-0a1073eee06d
# ╟─f08902fd-e2b8-47bc-b6fe-ffee0c0b5267
# ╟─ed2b1790-224a-442e-9971-dc8f5313dbcc
# ╟─c32eba5a-fc0e-4eb3-b179-3c4ef4dbc000
# ╟─574b6d09-5147-404b-a0b7-3a7f6c88e251
# ╟─6a8c8c80-3833-42ef-b5e2-b36385d2a456
# ╟─3d9f7f6a-f6d4-4566-80ca-61b791cde540
# ╟─e25ab1b9-ead0-48cd-8bb4-8611cba660dc
# ╟─e18a7261-ef49-4a4d-a961-4d4977554e1d
# ╟─2c9665eb-2e88-4405-8eb6-4804253a34dd
# ╟─bb10b8d6-d5e3-415f-bda7-9f26cd52f3a6
# ╟─ff1c72bf-e271-46df-a288-8619a9f0a2e4
# ╟─c40cfee1-3a46-4b05-ad7e-e2a8126f56cd
# ╟─c24e62c5-08e4-465c-b8cb-80328a8df16f
# ╟─19d8e693-2fa4-4311-8fab-40c636d19169
# ╟─c810aee0-42df-4e43-9a0c-5b3a37e0c892
# ╟─058a4e62-655b-4e86-8ac9-c14c9f303153
# ╟─9594aa75-3585-4a4b-8f16-0e23e999268d
# ╟─4379e2f3-d536-40c1-bff6-dbd652c496ff
# ╟─746b5d5b-5fde-4270-9e52-129f21ac722b
# ╟─40616231-34a0-4308-ac97-05ef93da2c86
# ╟─f8c5aaf6-7cbb-4a87-b08c-fbea27e0658a
# ╟─65c05232-36bb-4df8-8146-4e8237e11758
# ╟─ae4eb3d7-cb85-4655-9e12-fdbb1e99af1b
# ╠═9319bfbb-97c1-44f4-b605-16ee995476c3
# ╟─ef5e8506-4a02-42a1-950d-4a53aecd42d7
# ╟─9f5e3964-3c67-41c8-b194-3dcdd6d485c2
# ╠═5fe3b6d7-2277-4c43-8e21-7cd4203433cc
# ╟─c50bcc01-6ab1-43d6-bdb0-4e9e17b524c0
# ╟─4830439e-3665-44c1-88c4-2b63da020890
# ╟─dde0edeb-b85c-4bca-b5e9-a75255dc50af
# ╟─1120ad44-3519-4a0e-b464-d3666470ca35
# ╟─fefd36c1-8607-4825-b72b-4d4f0f357523
# ╠═ffb0edda-d3b5-4154-9df0-95758f3f3f12
# ╟─c45dde4e-d60f-4543-a2ee-d061f45bc848
# ╟─0bcd7967-9648-4f80-8b8b-7a1459f963b7
# ╟─ee17d3a7-a845-4b0d-991f-0d1546bd89c8
# ╠═0497b136-6780-4e31-9066-5cab808fa9f3
# ╟─a57d36a2-c69a-4a4b-b623-e7067527a8d6
# ╠═42774779-7c00-46c6-af46-29e6bfa5b362
# ╟─924acf6e-5ada-4a64-ad51-1ff5ce84bb5e
# ╟─7bb28d6d-6d18-4209-b48e-5e87eedec74b
# ╠═d878a54c-a6e3-4fa7-81c9-5b045781f353
# ╟─862df6ac-1091-48b6-93a3-6cf64aa27dde
# ╠═294246d2-c696-4f46-b746-d5f40234eb59
# ╟─9a3ac337-de34-41cb-96cf-7c2dd7cd47e3
# ╟─5bfab755-ed80-4318-ba3e-5774c89fff9f
# ╠═06f1e08c-95b3-430d-86a1-3de041fe1506
# ╟─64d28e04-f67f-4b98-afd6-9c16a15f2277
# ╠═a502e763-da48-4811-ab9b-6d2075c94758
# ╟─634882f3-baf9-4e98-a7c2-03c08314322d
# ╠═0a95a636-be2d-43cc-ac71-707c88d5f117
# ╟─9fa6bc2f-f99f-4d4b-91fa-695d04f0e83b
# ╠═2b72b700-5b08-4744-b29e-2714ec33580a
# ╟─998d6c8b-3af1-4549-b633-13f4977e9afe
# ╠═a18585ce-d13b-4581-9c49-65c54bc3436f
# ╟─d8f53b47-1267-426b-a6d6-15b397dc8d9e
# ╠═f6840354-2325-470c-8fd1-a3246f236550
# ╟─dc205f5d-0512-4429-8f26-f60e9f07115b
# ╟─d6e4e26e-cb79-4aa1-8d97-1f2f238aeb10
# ╠═9f8323d5-1480-490a-b088-be9d69bf6e00
# ╟─4a0ecf24-5fc7-4586-9313-3c2fc33ea91c
# ╠═c494b302-bf92-44b5-abf2-59956da672d5
# ╟─c8d2f67e-33ec-4ecd-b7f4-2037c1ac91ec
# ╠═6bc0b95d-be29-42ba-93ca-bb1bc910256e
# ╟─971c6622-d701-4142-addf-55c2fb8007bd
# ╟─beedbeca-0477-4162-9c9e-05aa9cfd907f
# ╠═63619364-64ad-44aa-bbc5-1a847358c892
# ╟─d05ed603-19ce-4c7d-b67d-78e7258378d5
# ╠═21c3aacf-abb7-4f65-8681-440ee3c13341
# ╟─651147e8-f7f8-4b87-9793-21e9b82a7c91
# ╠═f30306c0-0006-4a6f-873a-07fadcdc5d2d
# ╟─bfec2cfd-b400-4e73-8a40-7b3665209a5d
# ╟─1b65d5b3-ffb4-4c4c-a071-24cf1cfdd0c4
# ╠═6a010c2a-f8e6-44db-84ff-8e9a9593a29e
# ╟─e5254b57-0930-4083-b8d5-b37ae9292052
# ╠═d7fd0a6d-2df6-4614-abf0-72971f07220b
# ╟─e6375fb6-ae08-4442-b7c5-26953bd1cd95
# ╠═adcf50c9-8c45-46fa-aca3-10a5c660f80b
# ╟─549d2a7f-d307-4c96-9df5-6f936842cc59
# ╠═4cd51b45-2e77-41a2-9691-2d5e1fc01d3f
# ╟─3945a727-df1d-4717-b9d1-3b14f9e07adf
# ╟─9c8a76a8-7caa-4d0d-9608-4e98d3955677
# ╠═bf938d16-4f96-409a-b3e7-39f6873ca275
# ╟─e4ecd474-4d48-4414-93b4-6eb029da45eb
# ╠═b798ffc4-bc44-4add-885f-96b88cf66960
# ╟─1d2210ec-00a9-4960-8686-85df92dae42d
# ╠═d2162fdf-dc4b-4138-8cc8-6ac803d82566
# ╟─57086fd7-66cb-4a72-b589-dc5fa3c8c8c2
# ╠═a7972df8-734e-4108-86b6-c0a5d0ede63d
# ╟─465bc5f9-d40c-4227-8962-da6746b1dcc4
# ╠═2817d2a7-fb3f-4986-adb9-3fb36a66d1b9
# ╟─6f906af6-1379-42a3-b24d-dd5d257241c9
# ╠═b94bf1ef-fb85-4e1a-92f8-3f47e143f9e6
# ╟─1568e950-6ae3-4eee-8c28-8db36795a929
# ╠═66cb890a-45af-4faf-8ecd-02df1bcdf3e6
# ╟─22fc3d80-341b-4902-89c1-c1a587c28a08
# ╟─63b35422-6697-4a1f-8d60-55c977a87360
# ╠═d410ae9c-d876-4ac2-9d7d-44154cc24325
# ╟─e0a50b78-31a1-45ee-be74-2c6d8b5f13b8
# ╠═77c5d223-6de7-454f-b6d3-2895600e2b1a
# ╟─85dee8d0-d364-4744-a5ac-5459f7c1a95c
# ╠═91d1441c-8d8b-4652-b089-5d06d191d21d
# ╟─2e69b5bd-0b56-4bf2-a338-b4d373dde517
# ╠═e65a8d69-d925-4de2-9edd-c33669b756a8
# ╟─e0d4b7ca-578b-4d25-a9e6-81baafa497b0
# ╠═f44da9f7-87fa-4a44-864b-11e54553b3b0
# ╟─ca39044c-f352-4fb9-a8be-355f4a01a17d
# ╠═092aa2fc-ddc6-4729-911c-aa4e21ad7bd9
# ╟─3ece80ba-1bde-48a9-93ff-d6b9778b43e2
# ╟─07586a45-e8b7-466d-99b5-5b1fc20b32eb
# ╠═88053dfe-70e5-498a-bfd1-cb7eb33fad96
# ╟─4c49f6cf-0f0e-408c-acde-ad77faa9903c
# ╠═da63cb45-9b93-4423-8fd7-0b6aae9e4a29
# ╟─472fc923-c527-47e4-9ea2-e2a762c08f62
# ╠═916addb5-4a54-422d-b9c9-5b24c3f16e3f
# ╟─bfafde7f-8d61-41fb-be8c-d3bf12404fab
# ╠═892661d3-046f-4df9-9269-89f26ca79b4c
# ╟─04898c9a-5eca-4d1f-bd19-aec0d16f51d8
# ╠═8f1b5656-c3e6-4490-ba16-fbeb3f9c574e
# ╟─705a1476-eb5d-4f76-af51-4cf3bb61d36d
# ╟─ff9db5b4-9875-4279-8957-4cfd3245d6f7
# ╠═61c3c8a1-4a00-4c1f-8c82-6594bcdfb006
# ╟─241d99b8-c672-40f3-8b9d-854413a57630
# ╠═d40d40e9-e141-4161-8cc7-403d30e74304
# ╟─df7ed866-611b-4b64-94fd-b5876ed39336
# ╠═c74ce47c-697f-4fa6-9d27-bef932bd2d54
# ╟─69e73591-3bdf-4e31-9ce9-4c1f44e207a8
# ╠═3388d0f4-ace3-4322-89ba-a06ba0840adf
# ╟─aa2e1f09-bb0e-452d-b277-32ed87f1d805
# ╟─49522fe9-e9d9-433c-92a2-072d60e1576e
# ╠═e9661551-68aa-41fc-be08-e88b8444e4f6
# ╟─8d7d25f5-f27e-4b86-a845-15e9a3dd2f72
# ╠═3548c0a7-1de7-4534-a930-58d80e9efad7
# ╟─b550aa41-be86-4336-91cd-816565045da5
# ╠═0fe25f6d-0132-4fa4-a1b8-a03963fd1ee7
# ╟─a6e0b275-276f-4c0b-b548-4a4c283a6330
# ╠═f0a5c1d8-0de4-4455-b6e7-73b0426cd04c
# ╟─ceccbe3d-5c9a-47bf-a168-18154f30729b
# ╠═6f920972-e2ab-4e62-855e-9bac912831df
# ╟─3be6b392-ea30-4015-a718-41f43797626e
# ╠═1c600f48-8f4d-4841-bfcf-14e805e284b8
# ╟─f4730b14-2902-457d-a5f8-7e9140926b1e
# ╠═2fbca1ac-29e5-4f5b-8cac-faf6b48045eb
# ╟─c9cae5ed-a959-4c20-a4a6-21b6962f7fc5
# ╠═53439784-13c7-4f08-949d-e60cd41d4494
# ╟─e98b7caa-8df6-4292-93f5-f364ddeda2a3
# ╠═692de57c-99d1-439c-ab59-945db21dfe47
# ╠═0efd04be-af2c-45e4-9aaa-b3fe5fb9c7d0
# ╠═da59c2ff-871e-4dee-9ec8-467ed823f11a
# ╟─b520e5e2-702d-4131-9d10-3b12b04bda7e
# ╟─c843abfd-f681-4850-83c0-f80241b3b122
# ╠═210917a3-6257-4723-a0ee-5bc04dd87884
# ╟─ad1e49db-25cf-425a-88dd-47422330e85a
# ╠═b51230db-b12f-4c92-a140-79002eb2c1e0
# ╟─9bf8ac4d-5c33-4dd5-a2d2-5ae1b03ebcd2
# ╠═8799b871-5a4c-4663-afcc-35e58ccf502e
# ╟─9e90dab3-6ba7-4298-889d-047bac5b5059
# ╠═9df87359-662d-46d0-8983-d45c2798a93c
# ╟─a47cc5f3-9375-4128-bac4-da8bd689b46c
# ╠═ed90dde8-3230-4fe9-87c2-615aab4269bb
# ╟─14f633eb-43f6-44b3-8558-6871f318d908
# ╠═bd8ebbf4-7a57-4216-9690-f7c407fcfc58

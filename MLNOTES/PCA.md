### Singular Value Decomposition:

**Spectral theorem** states that for any real $n \times n$ matrix $\mathbb{A}$,

-   It's eigen values are real
-   There exists an othogonal matrix $\mathbb{Q}$ such that, $\mathbb{A} = \mathbb{Q}.\varLambda .\mathbb{Q}^T$, where $\varLambda$ is the matrix formed containing eigen values of $\mathbb{A}$ as it's diagonal entries.

$\textbf{SVD\ (Singular Value Decomposition)}$ is a generalization of spectral theorem, such that, any "real" $n \times n$ matrix A can be decomposed in the "SVD" form, ie., $\\[2pt]$
$\mathbb{A}$ can be written as $\mathbb{A} = \mathbb{Q_1}.\sum.\mathbb{Q_2}^T \\[6pt]$
$\mathbb{Q_1}\ (m\times n),\ \mathbb{Q_2} (n \times n)$ are orthogonal i.e, $\mathbb{Q_1}^T.\mathbb{Q_1} = \mathbb{I}$, $\mathbb{Q_2}^T.\mathbb{Q_2} = \mathbb{I}$ and,
```math
\sum = \begin{bmatrix}
D & 0\\
0 & 0
\end{bmatrix}
\& \
\mathbb{D} = \begin{bmatrix}
\sigma_1 & 0 & 0\\
0 & \ddots & 0 \\
0 & 0 & \sigma_n
\end{bmatrix}, \sigma_i > 0
```
**Proof:**  Consider any $m \times n$ matrix $\mathbb{A}$, then $\mathbb{A}^T\mathbb{A}$ is $n \times n$ and also real & symmetric.

There exists a basis of orthonormal eigen vectors $$\{x_1, x_2, \dots, x_n\}$$ such that,  $$\mathbb{A}^T.\mathbb{A}.x_i = \lambda. x_i \ \text{for } i = 1,2,\dots, n$$, $\lVert x_{i} \rVert^2 = 1$ and , $\forall$ i $\neq$ j, $\ x_{i}.x{j} = 0$, now

```math
(A^{T}.A.x_{i}).x_{i} = (\lambda_{i}.x_i).x_i = \lambda_{i}.x_i^{T}.x_i = \lambda_{i}  \tag{$\because \lVert x_i \rVert^2 =1$}
```

and also

```math
(A^{T}.A.x_{i}).x_{i} = (A^{T}.A.x_{i})^{T}.x_i = x_i^{T}.A^{T}.A.x_i = (A.x_i)^{T}.A.x_i =   \lVert A.x_i \rVert^2 \geq 0
```
$\therefore \implies \lVert A.x_i \rVert^2 = \lambda_{i} \geq 0$  

now, order $\lambda$ as $ \lambda_{1}, \lambda_{2}, \dots, \lambda_{r}, \lambda_{r+1}, \dots, \lambda_{n}$  such that,

```math
\lambda_{1}, \lambda_{2}, \dots, \lambda_{r} \geq 0,  \text{ \& } \lambda_{r+1}, \dots, \lambda_{n} =0
``` 
suppose, $ \sigma_{i} = \sqrt{\lambda_i}$ and let,

```math

y_i = \frac{1}{\sigma_i}.A.x_i,\\
\lVert y_{i} \rVert = \frac{1}{\sigma_i}.\lVert A.x_i \rVert = \frac{\sqrt{\lambda_i}}{\sigma_i} = 1
\implies \lVert y_{i} \rVert = 1
```

now, $\forall i \neq j$, 
```math
\begin{array}{rlcc}
y_i.y_j&= \frac{1}{\sigma_i}.A.x_i.\frac{1}{\sigma_j}.A.x_j \\
&= \frac{1}{\sigma_i.\sigma_j}.(A.x_i)^{T}.(A.x_j)\\
&= \frac{1}{\sigma_i.\sigma_j}.x_{i}^{T}.A^{T}.A.x_j\\
&= \frac{1}{\sigma_i.\sigma_j}.x_{i}^{T}.\lambda_j.x_j\\
&= \frac{1}{\sigma_i.\sigma_j}.\lambda_j.x_{i}^{T}.x_j\\
&= 0 \because (x_i^T.x_j = 0 \ \forall i\neq j)\\
\end{array}\\
```

$\therefore y_i.y_j = 0 $ and $\{y_1,y_2, \dots, y_r\}$ forms an orthonormal basis but since $r < m$, extending this basis we get 
for $\{y_1,y_2, \dots, y_m\}$, $y_i > 0 \forall i \leq r\ \& \ \forall \ i \geq r , y_i = 0$

```math
\begin{bmatrix}
--- & y_1^T & --- \\
--- & y_2^T & --- \\
\vdots & \vdots & \vdots \\
--- & y_m^T & --- \\ 
\end{bmatrix}.
\begin{bmatrix}
--- & A_1 & --- \\
--- & A_2 & --- \\
\vdots & \vdots & \vdots \\
--- & A_n & --- \\ 
\end{bmatrix}.
\begin{bmatrix}
\vdots & \dots & \vdots \\
x_1 & \dots & x_n \\
\vdots & \dots & \vdots
\end{bmatrix}
```








### Positivity
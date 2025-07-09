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

There exists a basis of orthonormal eigen vectors $$\{x_1, x_2, \dots, x_n\}$$ such that, $$\mathbb{A}^T.\mathbb{A}.x_i = \lambda. x_i \ \text{for } i = 1,2,\dots, n$$ and, $\forall$ i,j $\neq 0$, $\exists$ 
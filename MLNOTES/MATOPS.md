## Matrix Operations:

### Linear regression:

Given data $\{(x_1, y_1), (x_2, y_2), \dots, (x_n, y_n)\}, x_i \in \mathbb{R}^d, y_i \in \mathbb{R},   i= 1,2,\dots, n$ the loss function would is,

```math
\begin{align}
L(\theta)&= \frac{1}{2} \sum_{i=1}^{n}(x_i^T\theta - y_i)^2
\end{align}
```
for minimizing L: Define 
```math
\begin{array}{cc}
A&= \begin{bmatrix}
x_1^T \\
x_2^T \\
\vdots
\\ x_n^T
\end{bmatrix}
& \leftarrow \quad \text{\{feature matrix\}}
&, Y=
\begin{bmatrix}
y_1 \\
y_2 \\
\vdots
\\ y_n
\end{bmatrix}
\end{array}
\begin{array}{cc}
A\theta = \begin{bmatrix}
x_1^T \theta \\
x_2^T \theta\\
\vdots
\\ x_n^T \theta
\end{bmatrix} \implies 
(A\theta - Y)= \begin{bmatrix}
x_1^T - y_1\\
x_2^T - y_2\\
\vdots
\\ x_n^T - y_n
\end{bmatrix}
\end{array}

\begin{array}{cc}
(A\theta - Y)^T(A\theta - Y)&=  \sum_{1}^{n}(x_i^T\theta - y_i)^2
\end{array}
```
so, $\begin{align}
L(\theta)&= \frac{1}{2} (A\theta - Y)^T(A\theta - Y)
\end{align}$

Minimizing L:
```math
\begin{array}{cc}
\nabla_\theta(A\theta - Y)^T(A\theta - Y)&= 0 \\
\implies A^T(A\theta - Y)&= 0 \\
\implies A^TA\theta&= A^TY \rightarrow \text{least square solution}\\
\end{array}
```
>   can we write $\quad A^TA^{-1} A^TY = \theta$     ($\href {https://youtu.be/x7UJYkGHVJw?t=611}{documentation}$)

### Polynomial Regression:

Consider data $D = \{(x_i, y_i) | i = 1,2,\dots, n\} , x_i, y_i \in \mathbb{R},   i= 1,2,\dots, n$
In case of linear regression a straight line is fitted through data but in case of polynomial regression the curve fitting is generalized to any polynomial, say of degree n,

**Transformed features:**
```math
\begin{align}
\hat{y}(x)&= \theta_0 + \theta_1x + \theta_2x^2 + \dots + \theta_nx^n\\
&= \sum_{1}^{n} \theta_i \phi_j(x)    
\end{align}
```

where, $\phi_j(x) = x^j$
For a given x the tranformed vector $\phi_j(x) = (1, x, x^2, \dots,x^n)$  

```math
\begin{align}
\hat{y}(x)&= \theta^T \phi(x)\\
\end{align}
```
Now linear regression is performed over these transformed features,


```math
\begin{array}{cc}
A&= \begin{bmatrix}
\phi(x_1)^T \\
\phi(x_2)^T \\
\vdots
\\ \phi(x_n^T)
\end{bmatrix}
&, Y=
\begin{bmatrix}
y_1 \\
y_2 \\
\vdots
\\ y_n
\end{bmatrix}
\end{array}




\begin{align}
(A^TA)\theta= A^TY
\end{align}
```

### Regularized version of linear regression aka ridge regression:

Instead of solving $min_\theta $

**Important Pointers:**

-   For a given $\lambda > 0$, $A^TA + \lambda\mathbb{I}$ is always invertible
-   For a give regression problem $A^TA = Y$, find the loss function?

### Eigen Values:


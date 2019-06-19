param N;

param S {1..N, 1..N};

param F {1..N};

param C {1..N};

var x {1..N, 1..N} binary;

var y {1..N} binary;

minimize Total_Cost: sum {i in 1..N, j in 1..N} S[i,j]*x[i,j] + sum {i in 1..N} F[i]*y[i];

subject to Demand {j in 1..N} :

sum {i in 1..N} x[j,i] = 1;

subject to Capacity {i in 1..N} :

sum {j in 1..N} x[j,i] <= C[i]*y[i];

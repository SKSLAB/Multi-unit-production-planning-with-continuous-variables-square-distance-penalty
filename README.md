# Multi-unit production planning with continuous variables (square distance penalty approach) 
##### An optimization test suite involving 1287 and 2624 continuous variables 

This submission can be used to evaluate the performance of optimization techniques on problems with integer and continuous variables. This optimization problem arises for maximization of profit in production planning. However these files can be used as black-box optimization problems.

There are eight minimization optimization problems in this suite (case1.p, case2.p, case3.p, case4.p, case5.p, case6.p, case7.p and cas8.p). 

Case 1, Case 2, Case 5 and Case 6 have a problem dimension of 1287 continuous variables whereas
Case 3, Case 4, Case 7 and Case 8 have a problem dimension of 2624 continuous variables. 

Each of them follows square distance penalty approach and  has the following format
```
[ F ] = case1(X);
```
Input: population (or solution, denoted by X) and its <br>
Output: objective function values (F) of the population members.

The file ProblemDetails.p can be used to determine the lower and upper bounds along with the function handle for each of the cases.

The format is `[lb, ub, fobj] = ProblemDetails(n);`

Input: n is an integer from 1 to 8. <br>
Output: (i) the lower bound (lb), <br>
(ii) the upper bound (ub), and <br>
(iii) function handle (fobj).

The file Script.m shows how to use these files along with an optimization algorithm (SanitizedTLBO).


**Note:** <br> 
  1. The square distance penalty comes in while handling domain hole constraint, which is the minimum between square of X<sub>j</sub> and (X<sub>j</sub>-l<sub>j</sub>). Here X<sub>j</sub> refers to the jth dimension of solution and l<sub>j</sub> refers to minimum non-zero production level.

  2. Case 1 - 4 have the same problem structure but employ different data; Case 5 - 8 has same set of data as compared to Case 1 - 4, but do not employ a certain feature (flexible) of the problem.

  2. The objective function files are capable of determining the objective function values of multiple solutions (i.e., if required, the entire population can be sent to the objective function file).

**Reference:** Sandeep Singh Chauhan, Prakash Kotecha,An efficient multi-unit production planning strategy based on continuous variables, Applied Soft Computing,2018,ISSN 1568-4946, https://doi.org/10.1016/j.asoc.2018.03.012.

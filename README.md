# Error_Ellipse_Function 
This function helps you compute error ellipses in Matlab.
It takes 4 arguments: myploto(p, Cx, level, dof).
p is a matrix that needs x and y: like [1000, 2000].
Cx is a square matrix that contains the variances and covariances associated with one or several variables: like [C_xcap(1,1), C_xcap(1,2); C_xcap(1,2), C_xcap(2,2)].
level is the confidence interval. for expample if you want a 95% confidence interval just write: 0.95.
dof is the degree of freedom that you should calculate before using the function.

You can calculate absolute and relative error ellipses with this function. Below is a sample image of the function output. 


![image](https://user-images.githubusercontent.com/82656773/199255258-27f11b2e-7ab9-432f-b406-e22190bcbdd4.png)

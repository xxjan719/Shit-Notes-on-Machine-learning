<!--
* @Description:
* @Author:XXJAN
* @Company(School):LZU
* @Date:2020-11-4 14:40:23
* @LastEditors:XXJAN
* @LastEditTime:2020-11-4 14:40:23
-->
# Shit Notes on Deep Learning Studying  (Personality)
@[XXJAN](https://github.com/xxjan719/)

This notes may be my first learning note in deep learning.Although I am also a new explorer in this field,but I want to try it hard to understand this popular and restate it into this README.md.At the same times I  use  the books called Deep learning which is written by **Zhihua Zhou** and courses by bilibili.If you want to contect me,please follow this [page](https://xxjan719@github.io)
Fundamental Elements for Deep Learning

**Cost Function**<br>
It is called the cost function if a funtion satisfies the difference the real value <img src="http://latex.codecogs.com/svg.latex?y" title="http://latex.codecogs.com/svg.latex?y" /> between every evaluated value <img src="http://latex.codecogs.com/svg.latex?h(\theta)" title="http://latex.codecogs.com/svg.latex?h(\theta)" /> which can measure the model.And it is denoted by <img src="http://latex.codecogs.com/svg.latex?C(\theta)" title="http://latex.codecogs.com/svg.latex?C(\theta)" />.If  more samples exists, values on the cost function can be substituted to the mean value,denoted by <img src="http://latex.codecogs.com/svg.latex?J(\theta)" title="http://latex.codecogs.com/svg.latex?J(\theta)" />.And it is easy to get the properites of the  cost function. <br>
* The cost function can not be unique for every algohritm.
* The cost function includes the parameter <img src="http://latex.codecogs.com/svg.latex?\theta" title="http://latex.codecogs.com/svg.latex?\theta" />
* <img src="http://latex.codecogs.com/svg.latex?J(\theta)" title="http://latex.codecogs.com/svg.latex?J(\theta)" /> is not a vector.
* <img src="http://latex.codecogs.com/svg.latex?J(\theta)" title="http://latex.codecogs.com/svg.latex?J(\theta)" /> can be used to evaluate the quality of the model. The smaller the cost function value is, the better the model and parameters conform to the training sample (x, y);



## Regression Model<br>
**Regression Model with one variation**<br>
*Aim*: Use a linear function to fit some data<br>
*The main element for this Algorithm*:<br>
* Set the Hypothesis<br>
<img src="http://latex.codecogs.com/svg.latex?y=\theta_0&plus;\theta_1(x)" title="http://latex.codecogs.com/svg.latex?y=\theta_0+\theta_1(x)" /><br>
* Fix the Cost Function<br>
<img src="http://latex.codecogs.com/svg.latex?L(\beta)=\frac{1}{2m}\sum_{i=1}^{m}(h_{\theta}(x^{(i)})-y^{(i)})^2" title="http://latex.codecogs.com/svg.latex?L(\beta)=\frac{1}{2m}\sum_{i=1}^{m}(h_{\theta}(x^{(i)})-y^{(i)})^2" /><br>
* Gradient descent Methods*<br>
Gradient is a very important concept in **calculus**. The meaning of gradient was mentioned before.
* In a univariate function, the gradient is actually the derivative of the function, representing the slope of the tangent of the function at a given point.
* In a multivariate function, the gradient is a vector, and the vector has a direction. The direction of the gradient indicates the fastest rising direction of the function at a given point.<br>
In mathematics,it can be explained that the <img src="http://latex.codecogs.com/svg.latex?J" title="http://latex.codecogs.com/svg.latex?J" /> is the function denoted by <img src="http://latex.codecogs.com/svg.latex?\Theta&space;" title="http://latex.codecogs.com/svg.latex?\Theta " />.And we standed on the position <img src="http://latex.codecogs.com/svg.latex?\Theta_0" title="http://latex.codecogs.com/svg.latex?\Theta_0" />,where we will go through to the minisize position(called the hill of mountain).And we must certain the direction of advancement, that is, the reverse of the gradient, and then walk a distance of step length, which is <img src="http://latex.codecogs.com/svg.latex?\alpha" title="http://latex.codecogs.com/svg.latex?\alpha" />. After walking this step length, we reach the point <img src="http://latex.codecogs.com/svg.latex?\Theta_1" title="http://latex.codecogs.com/svg.latex?\Theta_1" />!
<img src="https://upload-images.jianshu.io/upload_images/1234352-af8dd9722c762c13.png"><br>
Example 1:<br>
If the binary function is<br>
  <img src="http://latex.codecogs.com/svg.latex?J(\theta)=\theta_0^{2}&plus;\theta_1^{2}" title="http://latex.codecogs.com/svg.latex?J(\theta)=\theta_0^{2}+\theta_1^{2}" /><br>
And this gradient follows that<br>
<img src="http://latex.codecogs.com/svg.latex?\triangledown&space;J(\theta)=(2\theta_0,2\theta_1)" title="http://latex.codecogs.com/svg.latex?\triangledown J(\theta)=(2\theta_0,2\theta_1)" /><br>
we set <img src="http://latex.codecogs.com/svg.latex?\Theta_0=(2,3)" title="http://latex.codecogs.com/svg.latex?\Theta_0=(2,3)" /> and finish this iterative<br>
<img src="http://latex.codecogs.com/svg.latex?\Theta_1=\Theta_0-0.1\times&space;(2\times&space;2,2\times3)=(1.6,2.4)" title="http://latex.codecogs.com/svg.latex?\Theta_1=\Theta_0-0.1\times (2\times 2,2\times3)=(1.6,2.4)" /><br>
<img src="http://latex.codecogs.com/svg.latex?\Theta_2=\Theta_1-0.1\times&space;(2\times&space;1.6,2\times&space;2.4)=(1.28,1.92)" title="http://latex.codecogs.com/svg.latex?\Theta_2=\Theta_1-0.1\times (2\times 1.6,2\times 2.4)=(1.28,1.92)" /><br>
etc
then we can have this processing result
<img src="https://pic1.zhimg.com/v2-bad845089a76548c461bd2807f234f50_r.jpg">
And this code is in the regression model doucment,you can check whether I am write this algorithm down right or not.<br>
https://editor.codecogs.com/<br>
## References<br>
[1].https://www.jianshu.com/p/c7e642877b0e

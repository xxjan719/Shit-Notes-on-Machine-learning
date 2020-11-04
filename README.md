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

**Regression Model**<br>
**Regression Model with one variation**<br>
*Aim*: Use a linear function to fit some data<br>
*The main element for this Algorithm*:<br>
* Set the Hypothesis(<img src="http://latex.codecogs.com/svg.latex?y=\theta_0&plus;\theta_1(x)" title="http://latex.codecogs.com/svg.latex?y=\theta_0+\theta_1(x)" />)
* Fix the Cost Function(<img src="http://latex.codecogs.com/svg.latex?L(\beta)=\frac{1}{2m}\sum_{i=1}^{m}(h_{\theta}(x^{(i)})-y^{(i)})^2" title="http://latex.codecogs.com/svg.latex?L(\beta)=\frac{1}{2m}\sum_{i=1}^{m}(h_{\theta}(x^{(i)})-y^{(i)})^2" />)
* Gradient descent Methods*


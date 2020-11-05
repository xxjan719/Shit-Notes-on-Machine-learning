import numpy as np

def error_function(theta_1,theta_2):
    '''Error function J definition.'''
    diff = (theta_1)^2+(theta_2)^2
    return diff

def gradient_function(theta):
    '''Gradient of the function J definition.'''
    theta_1=theta[0]
    theta_2=theta[1]
    diff = np.array([2*(theta_1),2*(theta_2)]).reshape(2,1)
    return diff

def gradient_descent(theta_1,theta_2):
    '''Perform gradient descent.'''
    alpha=0.1
    theta=np.array([(theta_1),(theta_2)]).reshape(2,1)
    gradient = gradient_function(theta)
    for i in range(100):
        theta=theta-(alpha)*gradient
        print(theta)
        gradient=gradient_function(theta)
    #while not np.all(np.absolute(gradient) <= 1e-5):
     #theta = theta - alpha * gradient
     #print(theta)
     #gradient = gradient_function(theta_1, theta_2)
    return theta
# Size of the points dataset.

theta_1=2
theta_2=3

optimal = gradient_descent(theta_1,theta_2)
print('optimal:', optimal)
print('error function:', error_function(theta_1,theta_2))

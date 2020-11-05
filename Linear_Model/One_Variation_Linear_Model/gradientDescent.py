#this code often is uesd to measure the multi-variartion regression gradient descent

import numpy as np 
import matplotlib.pyplot as plt 

# y = np.array([2,3,3,5,8,10,10,13,15,15,16,19,19,20,22,22,25,28])
# x = np.arange(1,len(y)+1)
# plt.figure()
# plt.scatter(x,y)
# plt.grid(True)
# plt.show()

# sample length
m = 18

# generate matrix X
X0 = np.ones((m, 1))
X1 = np.arange(1, m+1).reshape(m, 1)
X = np.hstack((X0, X1))

# matrix y
y = np.array([2,3,3,5,8,10,10,13,15,15,16,19,19,20,22,22,25,28]).reshape(m,1)

# alpha
alpha = 0.01

def cost_function(theta, X, y):
    diff = np.dot(X, theta) - y
    return (1./2*m) * np.dot(np.transpose(diff), diff)

def gradient_function(theta, X, y):
    diff = np.dot(X, theta) - y
    return (1./m) * np.dot(np.transpose(X), diff)

def gradient_descent(X, y, alpha):
    theta = np.array([1, 1]).reshape(2, 1)
    gradient = gradient_function(theta, X, y)
    while not np.all(np.absolute(gradient) <= 1e-5):
        theta = theta - alpha * gradient
        gradient = gradient_function(theta, X, y)
    return theta

[theta0, theta1] = gradient_descent(X, y, alpha)
plt.figure()
plt.scatter(X1,y)
plt.plot(X1, theta0 + theta1*X1, color='r')
plt.title('linear regression based on the gradient descent algorithm')
plt.grid(True)
plt.show()


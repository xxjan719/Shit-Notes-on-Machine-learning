import numpy as np 
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
x = np.linspace(-3.1,3.1,300)
y = np.linspace(-3.1,3.1,300)
x,y = np.meshgrid(x, y)
z = x**2 + y**2
dot = np.array([[2,3],[1.6,2.4],[1.28,1.92],[5.09e-10, 7.64e-10]])
fig = plt.figure(figsize = (10,6))
ax = fig.gca(projection = '3d')
cm = plt.cm.get_cmap('YlGnBu')
surf = ax.plot_surface(x, y, z, cmap=cm)
fig.colorbar(surf,shrink=0.5, aspect=5)
ax.scatter3D(dot[:,0], dot[:,1], dot[:,0]**2 + dot[:,1]**2, marker='H',c='r')
for i in range(len(dot)-1):
    ax.text(dot[i,0]+0.4, dot[i,1], dot[i,0]**2 + dot[i,1]**2, r'$\Theta_%d$' % i)
ax.text(dot[3,0]+0.4, dot[3,1]+0.4, dot[3,0]**2 + dot[3,1]**2-0.4, r'min')
plt.show()

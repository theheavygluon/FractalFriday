import numpy as np
import matplotlib.pyplot as plt

n=500
pi = np.pi 

Z=np.zeros([n,n],float)

xl=np.linspace(-6,6,n)
yl=np.linspace(0,pi,n)

for u,x in enumerate(xl):
    for v,y in enumerate(yl):
        z=0
        c=complex(x,y)
        for i in range(100):
            z=np.sin(z)+c
            if abs(z)>100:
                Z[v,u]=1
                break

plt.imshow(Z,origin="lower")
plt.show()



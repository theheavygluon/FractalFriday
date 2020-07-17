import numpy as np
import matplotlib.pyplot as plt

n=500
Z=np.zeros([n,n],float)

xl=np.linspace(-2*np.pi,2*np.pi,n)
yl=np.linspace(-3,3,n)

for u,x in enumerate(xl):
    for v,y in enumerate(yl):
        z=0
        c=complex(x,y)
        for i in range(100):
            z=np.cos(z)+c
            if abs(z)>300:
                Z[v,u]=1
                break

plt.imshow(Z,origin="lower")
plt.show()

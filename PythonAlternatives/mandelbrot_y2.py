import numpy as np
import matplotlib.pyplot as plt

n=1000
Z=np.zeros([n,n],int)

xg=np.linspace(-2,2,n)
yg=np.linspace(-2,2,n)

for u,x in enumerate(xg):
    for v,y in enumerate(yg):
        z=0
        c=complex(x,y)
        for i in range(100):
            z=z*z+c
            if abs(z)>3:
                Z[v,u]=1
                break


plt.imshow(Z)
plt.show()

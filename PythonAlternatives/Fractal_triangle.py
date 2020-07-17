import numpy as np
import matplotlib.pyplot as plt
import time

ax=np.zeros((1,15001))
ay=np.zeros((1,15001))
ax[0][0]=0.7
ay[0][0]=0.7

a=np.random.randint(low=1,high=6,size=15001)
for i in range(0,15001):
    if a[i]==1:
        x=0
        y=0
    elif a[i]==2:
        x=0
        y=0
    elif a[i]==3:
        x=2
        y=0
    elif a[i]==4:
        x=2
        y=0
    elif a[i]==5:
        x=1
        y=2
    else:
        x=1
        y=2
    ax[0][i]=(ax[0][i-1]+x)/2
    ay[0][i]=(ay[0][i-1]+y)/2

plt.figure(1)
for i in range(15000):
    plt.plot(ax[0][i],ay[0][i],'b.')
plt.show()
            
        




import numpy as np
import matplotlib.pyplot as plt
import time

x=np.zeros((1,10001))
y=np.zeros((1,10001))
x[0][0]=0.01
y[0][0]=0.01

r=np.random.randint(low=0,high=10000,size=10000)

for i in range(0,10000):
    if r[i]<100:
        x[0][i+1]=0
        y[0][i+1]=y[0][i]*0.16
    elif r[i]<8500:
        x[0][i+1]=0.85*x[0][i]+0.04*y[0][i]
        y[0][i+1]=-0.04*x[0][i]+0.85*y[0][i]+1.6
    elif r[i]<9300:
        x[0][i+1]=0.2*x[0][i]-0.26*y[0][i]
        y[0][i+1]=0.23*x[0][i]+0.22*y[0][i]+1.6
    else:
        x[0][i+1]=-0.15*x[0][i]+0.28*y[0][i]
        y[0][i+1]=0.26*x[0][i]+0.24*y[0][i]+0.44

plt.figure(1)
for i in range(10000):
    plt.plot(x[0][i],y[0][i],'b.')
plt.show()

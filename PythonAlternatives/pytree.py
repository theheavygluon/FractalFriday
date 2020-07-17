import matplotlib.pyplot as plt
import numpy as np
import random 


def draw_tree(xold,yold,theta,length):
    ratio= 0.6
    xnew=xold+length*np.cos(theta)
    ynew=yold+length*np.sin(theta)
    if length>0.009:
        plt.plot([xold,xnew],[yold,ynew], '-r')
        draw_tree(xnew,ynew,theta+np.pi/5,length*ratio)
        draw_tree(xnew,ynew,theta-np.pi/5,length*ratio)

    
def main():
    draw_tree(1,1,np.pi/2,1)
    plt.show()
main()

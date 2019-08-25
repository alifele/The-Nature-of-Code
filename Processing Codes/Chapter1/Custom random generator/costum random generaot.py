import numpy as np
import matplotlib.pyplot as plt
dist = []


for i in range (1000000):
    r1 = np.random.rand()
    r2 = np.random.rand()
    rand = r1**2
    
    if (r2<rand):
        dist.append(r1)
        
        
        
plt.hist(dist, bins =400)
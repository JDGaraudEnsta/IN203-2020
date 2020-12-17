#!/usr/bin/env python3
import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt('timers.out')

dt_seq = data[0,1]
nb_proc = data[-1,0]

print('reference sequentielle =', dt_seq)

plt.ylim((0,nb_proc))

plt.plot(data[:,0], dt_seq/data[:,1], label='mesure')
plt.plot([1, nb_proc], [1, nb_proc], ':', label='speedup ideal')
plt.legend()
plt.show()


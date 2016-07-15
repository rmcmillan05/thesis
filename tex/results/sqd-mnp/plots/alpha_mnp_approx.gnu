alpha_orig = './data/alpha_exact.dat'
alpha_approx = './data/alpha_approx.dat'

lwd = 2.5

set xrange [0:10]
set xlabel '$\omega$ (\si{\electronvolt})'

plot alpha_orig u 1:3 w l ls 1 lc rgb 'blue' lw lwd t 'Re$\left[\alpha_\text{MNP}\right]$' , \
     alpha_orig u 1:2 w l ls 1 lc rgb 'red' lw lwd t 'Im$\left[\alpha_\text{MNP}\right]$' , \
     alpha_approx u 1:2 every 1000 w p ls 2 lc rgb 'red' lw lwd t '' , \
     alpha_approx u 1:3 every 1000 w p ls 2 lc rgb 'blue' lw lwd t '' 

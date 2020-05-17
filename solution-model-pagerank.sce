//Resolviendo prob. de valores y vectores propios
//para el vector de clasificacion r
clc
A=[0,1,1,1,1,1,1,1,1,0,0,1,0; 
     1,0,1,1,1,1,1,1,1,0,0,1,0;
     1,1,0,0,0,1,1,1,1,1,0,1,0; 
     1,1,0,0,1,0,1,1,1,0,0,0,0;
     1,1,0,1,0,0,1,1,1,0,0,1,0;
     1,1,1,0,0,0,1,1,1,0,0,0,0;
     1,1,1,1,1,1,0,1,1,0,0,1,0;
     1,1,1,1,1,1,1,0,1,0,0,1,0;
     1,1,1,1,1,1,1,1,0,1,0,1,1;
     0,0,1,0,0,0,0,0,1,0,0,0,0;
     0,0,0,0,0,0,0,0,0,0,0,0,0;
     1,1,1,0,1,0,1,1,1,0,0,0,0;
     0,0,0,0,0,0,0,0,1,0,0,0,0]
[V,D]=spec(A)
disp(V)
disp(D)
//El primer valor vector es unica real, ese es el que necesitamos
evals=diag(D)
disp(evals)
vp1=evals(1)
disp(vp1)

//Encontramos la constante de proporcionalidad alpha
alpha=1/vp1
disp(alpha)

//Encontramos el vector r como el vector propio correspondiente al primer valor propio
r=V(:,1)
disp(r)

//Normalizando el vector clasificación
r=r/sum(r)
disp(r)

//Utilizando el Método de la Potencia
x0=[0;1;1;1;1;1;1;1;1;0;0;1;0]
//Para 10 iteraciones
for k=1:10
    x0=A*x0
    x0=x0/sum(x0)
end
disp("Para 10 iteraciones:")
disp(x0)

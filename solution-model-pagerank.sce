//Resolviendo prob. de valores y vectores propios
//para el vector de clasificacion r (PER, ARG, VEN, URY, PRY, ECU, COL, CHL, BRA, SUR, GUY, BOL, GUF)
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
disp("Matriz de vectores propios")
disp(V) //Matriz de vectores propios
disp("Matriz diagonal de valores propios")
disp(D) //Matriz diagonal de valores propios
disp("El mayor valor real, ese es el que necesitamos")
evals=diag(D) //vector de valores propios
disp(evals)
vp=evals(13)//mayor valor real de todos los valores propios
disp("Mayor valor propio:") 
disp(vp)

disp("Encontramos la constante de proporcionalidad alpha")
alpha=1/vp //constante de proporcionalidad
disp(alpha)

disp("Encontramos el vector r como el vector propio correspondiente al primer valor propio")
r=V(:,1)
disp(r)

disp("Normalizando el vector clasificación")
r=r/sum(r)
disp(r)

disp("Utilizando el Método de la Potencia")
x0=[0;1;1;1;1;1;1;1;1;0;0;1;0]
//Para 10 iteraciones
for k=1:10
    x0=A*x0 
    x0=x0/sum(x0)
end
disp("Para 10 iteraciones:")
disp(x0)

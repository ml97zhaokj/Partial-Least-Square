clc
x=[1,2,3,4,5,6]
y=[3,7,8,8,9,7]
[~,k]=size(x)
x0=ones(k,k+1)
for i=1:k
    for j=1:k
        x0(i,j)=x(1,i)^(k+1-j)
    end
end
ANSS=inv(x0'*x0)*x0'*y'
loss=y'-x0*ANSS
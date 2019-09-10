clc
x=[1,2,3,4,5,6,7,8]
y=[9,6,5,4,3,4,2,1]
[~,k]=size(x)
x0=ones(2,k)
for i=1:k
    x0(1,i)=x(1,i);
end
X=x0'
ANSS=inv(X'*X)*X'*y'
a=ANSS(1,1)
b=ANSS(2,1)
sum=0
for i=1:k
   loss=y(1,k)-(a*x(1,k)+b)
   sum=sum+loss
end
sum


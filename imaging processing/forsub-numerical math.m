function [X] = forsub( A,B )
n=length(B);
X=zeros(n,1);
X(n)=B(n)/A(n,n);
for k=1:n
    X(k)=(B(k)-A(k,1:k-1)*X(1:k-1))/A(k,k);
end
X=X'
end
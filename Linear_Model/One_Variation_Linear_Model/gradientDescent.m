function theta=gradientDescent(X,y,theta,alpha,num_iters)

m=length(y);
for iter =1:num_iters
     H=X*theta;
     Sum=[0;0];
     
     for i=1:m
        Sum(1,1)=Sum(1,1)+(H(i)-y(i));
     end
     
     for i=1:m
        Sum(2,1)=Sum(2,1)+(H(i)-y(i))*X(i,2)';
     end
theta=theta-(alpha*Sum)/m;
end
end

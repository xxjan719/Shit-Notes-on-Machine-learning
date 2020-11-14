%perceptron==============================================================
data=[3 3 1;4 3 1;1.5 0 1;0.5 0.9 1;2 1 1;0.5 0.5 -1;0 0 -1;-2 -2 -1;-3 0 -1;1 -1 -1]; 
X=data(:,[1,2]);Y=data(:,3);
neg=find(Y==-1);pos=find(Y==1);
x1=-4:0.8:4;
plot(X(neg,1),X(neg,2),'k+','LineWidth',2,'MarkerSize',7')
hold on
plot(X(pos,1),X(pos,2),'ko','MarkerFaceColor','y','MarkerSize',7)

b=0;
learning_rate=0.4;
W=[0;0]; 
[n,m]=size(X);
error=1;
while error>0
    error=0;
    for i=1:n
        y=W'*X(i,:)'+b;
        if (Y(i)*y<=0)
            error=error+1;
            delta_W=learning_rate*Y(i)*X(i,:);
            W=W+delta_W;
            b=b+learning_rate*Y(i);
            y1=(-W(1)*x1-b)/W(2);
            plot(x1,y1,'-b');
            pause(0.5);
        end
    end
end
plot(x1,y1,'-r','Linewidth',3);

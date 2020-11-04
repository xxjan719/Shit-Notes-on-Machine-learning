function theta=gradientDescent(X,y,theta,alpha,num_iters)
%https://www.jianshu.com/p/c7e642877b0e
%https://blog.csdn.net/jizhidexiaoming/article/details/80386360?utm_medium=distribute.pc_relevant.none-task-blog-title-2&spm=1001.2101.3001.4242
%https://blog.csdn.net/onthewaygogoing/article/details/68485682
%https://blog.csdn.net/catherined/article/details/82015857
%https://blog.csdn.net/catherined/article/details/81873721?utm_source=blogxgwz6&utm_medium=distribute.pc_relevant.none-task-blog-title-2&spm=1001.2101.3001.4242
%https://blog.csdn.net/weixin_35732969/article/details/80506276?utm_medium=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-2.channel_param&depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-2.channel_param
%https://blog.csdn.net/fair_li/article/details/106540284

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

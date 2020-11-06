%%load the data============================================================
ex2data=load('C:\\Users\\lenovo\\Desktop\\ex2data.txt');
% define the variation=====================================================
exam1=ex2data(:,1);
exam2=ex2data(:,2);
admitted=ex2data(:,3);
X=ex2data(:, [1, 2]); %the most important defination
y=ex2data(:, 3);% the  most important defination
%%data visualization====================================================================
negative_exam1=[];
negative_exam2=[];
positive_exam1=[];
positive_exam2=[];
%count the admited number
count_1=0;
count=0;
for i=1:length(admitted)
if admitted(i)==0
count=count+1;
negative_exam1(i)=exam1(i);
negative_exam2(i)=exam2(i);
else
count_1=count_1+1;
positive_exam1(i)=exam1(i);
positive_exam2(i)=exam2(i);
end
end
x=find(positive_exam1==0);
positive_exam1(x)=[];
yy=find(positive_exam2==0);
%positive_exam2=;
positive_exam2(yy)=[];
x1=find(negative_exam1==0);
%negative_exam1=;
negative_exam1(x1)=[];
x2=find(negative_exam2==0);
%negative_exam2=
negative_exam2(x2)=[];
%plotData(X, y);  %调用函数（筛选的数据、画图的规则）
scatter(positive_exam1,positive_exam2,'b','filled')
hold on
scatter(negative_exam1,negative_exam2,'r','filled')
hold on
%两个轴的名称
xlabel('Exam 1 score');
ylabel('Exam 2 score');
legend('Admitted','Not Admitted');
hold off
[m, n] = size(X);
% 在列向量的左边添加一列全为1的列向量
X = [ones(m, 1) X];
% 初始化拟合参数
initial_theta = zeros(n + 1, 1);
% 计算并显示初始的代价和梯度
[cost, grad] = costfunction(initial_theta, X, y)

%  为函数fminunc设置选项
options = optimset('GradObj', 'on', 'MaxIter', 400);
%  运行函数fminunc来获得optimal theta
%  这个函数将返回参数 theta 和代价 cost 
[theta, cost] = fminunc(@(t)(costfunction(t, X, y)), initial_theta, options);

%画出决策边界
hold on
%两个轴的名称
hold on
if size(X, 2) <= 3
    % 选两个点确定一条直线
    plot_x = [min(X(:,2))-2,  max(X(:,2))+2];

    % 计算决策边界线
    plot_y = (-1./theta(3)).*(theta(2).*plot_x + theta(1));

    % 绘制坐标
    plot(plot_x, plot_y,'g')
    
    %标记符号所对应的名称，按先后顺序
    legend('Admitted', 'Not admitted', 'Decision Boundary')
    axis([30, 100, 30, 100]) %设置坐标范围，axis([xmin xmax ymin ymax])
else
    % 网格范围，头为-1，尾为1.5，共有50各元素，每个元素等距
    u = linspace(-1, 1.5, 50);
    v = linspace(-1, 1.5, 50);

    z = zeros(length(u), length(v));
    % 在网格上评估 z = theta*x 
    for i = 1:length(u)
        for j = 1:length(v)
            z(i,j) = mapFeature(u(i), v(j))*theta;
        end
    end
    z = z'; % 在调用轮廓之前转置z很重要

    % contour(u,v,z,n)是画等值线
    contour(u, v, z, [0, 0], 'LineWidth', 2)
end
hold off

fprintf('\nProgram paused. Press enter to continue.\n');
pause;  

%预测和准确性
prob = sigmoid([1 45 85] * theta);
fprintf('For a student with scores 45 and 85, we predict an admission probability of %f\n', prob);
%fprintf('Expected value: 0.775 +/- 0.002\n\n');

p = predict(theta, X);

fprintf('Train Accuracy: %f\n', mean(double(p == y)) * 100); %训练精确度
fprintf('Expected accuracy (approx): 89.0\n');  %期待的结果
fprintf('\n');


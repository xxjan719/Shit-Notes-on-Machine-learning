%% varience defination
%csv only stands for the pure data,not std. 
data=csvread('C:\\Users\\lenovo\\Desktop\\watermelon.csv',1,1);
X=data(:,[1,2]);
Y=data(:,3);
%% visualization of data
pos=find(Y==1);
neg=find(Y==0);
plot(X(pos,1),X(pos,2),'k+','LineWidth',2,'MarkerSize',7')
hold on
plot(X(neg,1),X(neg,2),'ko','MarkerFaceColor','y','MarkerSize',7)
hold on
xlabel('Density')
ylabel('Properation')
%% do logsitic model
[m,n]=size(X);
X=[ones(m,1) X];
% Initialize fitting parameters
initial_theta = zeros(n + 1, 1);
options = optimset('GradObj', 'on', 'MaxIter', 400);
[theta, cost] = fminunc(@(t)(costfunction(t, X, Y)), initial_theta, options);
hold on;
if size(X, 2) <= 3
    % Only need 2 points to define a line, so choose two endpoints
    plot_x = [min(X(:,2))-2,  max(X(:,2))+2];
    % Calculate the decision boundary line
    plot_y = (-1./theta(3)).*(theta(2).*plot_x + theta(1));
    plot(plot_x, plot_y)
    % Legend, specific for the exercise
    legend('Good watermelon','Bad watermelon', 'Decision Boundary')
    axis([0, 1, 0, 0.6])
else
    % Here is the grid range
    u = linspace(-1, 1.5, 50);
    v = linspace(-1, 1.5, 50);
    z = zeros(length(u), length(v));
    % Evaluate z = theta*x over the grid
    for i = 1:length(u)
        for j = 1:length(v)
            z(i,j) = mapFeature(u(i), v(j))*theta;
        end
    end

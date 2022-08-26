table = readtable("Dataset_Year_2019.xlsx",'PreserveVariableNames',true);
Cellarray = table2cell(table);
i = Cellarray(:,1:end-1);
o= Cellarray(:,end);

% converting the unique strings to number in column 9
[I,~,ib] = unique(i(:,9), 'stable');
ib = reshape(ib, size(i(:,9)));
ib = num2cell(ib);
i(:,9) = ib;

% converting the unique strings to number in column 12
[L,~,ib] = unique(i(:,12), 'stable');
ib = reshape(ib, size(i(:,12)));
ib = num2cell(ib);
i(:,12) = ib;

i=cell2mat(i);
i=i.';
o=cell2mat(o);
o=o.';

net=newff(minmax(i),[15,50,40,30,20,10,1],{'logsig','tansig','tansig','tansig','tansig','tansig','purelin'},'trainlm');
net = init(net);                     % Used to initialize the network (weight and biases)
net.trainParam.show =1;              % The result of error (mse) is shown at each iteration (epoch)
net.trainParam.epochs = 150;       % Maximum limit of the network training iteration process (epoch)
net.trainParam.goal =1e-12;          % Stopping criterion based on error (mse) goal
net=train(net,i,o);                % Start training the network


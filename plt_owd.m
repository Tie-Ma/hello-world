clear all
data = xlsread('owd.xlsx','title')
task_num = size(data,2)/2
color = ['r','g'];
task = 'task';
for i=1:task_num
    task_seq = num2str(i);
    x = data(:,2*i-1)
    y = data(:,2*i)*10^6
    plot(x,y,color(1,i))
    hold on
end

legend('owd')
title('owd-time¹ØÏµÍ¼')
xlabel('time(s)')
ylabel('owd(us)')


initial_input = [0.7 0.2 0.1];
transition_matrix = [0.77 0.2 .03; 0.66 0.2 .14; 0 .25 .75];
output = zeros (50,3);
t = 1:50;
output(1,:) = initial_input;
for i = 2:50    
    output(i,:) = initial_input * (transition_matrix)^(i-1);
end
Win = output(:,1);
plot(t,Win)
hold on
Draw = output(:,2);
plot(t,Draw)
hold on
Lose = output(:,3);
plot(t,Lose)
legend('show')
legend('Win', 'Draw', 'Lose')
xlabel ('time')
ylabel('Probability when 4 players are playing at home')
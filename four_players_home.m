initial_input = [0.688 0.288 0.022];
transition_matrix = [(21/31) (9/31) (1/31); (8/13) (5/13) 0; 0 0 1];
output = zeros (50,3);
t = 1:100;
output(1,:) = initial_input;
for i = 2:100    
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
legend('Pass', 'Loss', 'Assists')
xlabel ('time')
ylabel('Markov for a defender')
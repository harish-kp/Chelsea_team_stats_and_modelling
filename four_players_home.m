initial_input = [0.759 0.189 0.05];
transition_matrix = [0.77 0.2 0.03; 0.66 0.2 0.14; 0 0.25 0.75];
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
legend('Wins', 'Draws', 'Losses')
xlabel ('Iteration')
ylabel('State probaibility for the player')
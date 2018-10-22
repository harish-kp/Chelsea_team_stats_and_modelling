initial_input = [0.68 0.28 0.04];
transition_matrix = [(35/45) (9/45) (1/45); (8/45) (37/45) 0; (1/45) 0 (44/45)];
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
xlabel ('Iteration')
ylabel('State probaibility for the player')
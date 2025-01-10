close all;
clear all;
clc;

%% .....................................Init Case............................................. %%

A = [1000 1000 1000 1000 1000 200 200 600 600;
     1000 1000 1000 1000 1000 200 200 600 600;
     1000 1000 1000 1000 1000 200 200 400 400;
     1000 1000 1000 1000 1000 200 200 400 400;
     1000 1000 1000 1000 1000 1000 1000 1000 1000;
     1000 1000 1000 1000 1000 1000 1000 1000 1000;
     1000 1000 1000 1000 1000 1000 1000 1000 1000;
     1000 1000 1000 1000 1000 1000 1000 1000 1000;
     1000 1000 1000 1000 1000 1000 1000 1000 1000];
 

%% .............................Salp swarm algorthim..................................................... %%


SearchAgents_no=50; % Number of search agents
Max_iteration=1000; % Maximum numbef of iterations
fobj=@objective_function; % objective function

[FoodFitness,FoodPosition,FoodPosition_change,Convergence_curve]=SSA(A,SearchAgents_no,Max_iteration,fobj);

%% ..................................Display results................................................ %%
diary DisplayResultsDiaryFile.txt
[PowerMax_org,sortedIrows_org,Minimum_Diff_Currents_org] = getInfo(A)

disp('Original Arrangement')
disp(A)

[PowerMax_Optimal,sortedIrows_Optimal,Minimum_Diff_Currents_Optimal] = getInfo(FoodPosition)

disp('Optimal Arrangement')
disp(FoodPosition)

disp('Power Enhancement (%):')
PowerEnhancement = 100*(PowerMax_Optimal-PowerMax_org)/PowerMax_Optimal;
disp(PowerEnhancement)

% Calculate matrix B and C
B = reshape(1:numel(A), size(A));
C = zeros(size(B));

for col = 1:size(B, 2)
    C(FoodPosition_change{col}(:, 2), col) = B(FoodPosition_change{col}(:, 1), col);
end

disp('Matrix B:');
disp(B);
disp('Matrix C:');
disp(C);
diary off
%% .................................................................................. %%

figure;
plot(1:Max_iteration, Convergence_curve, 'LineWidth', 2);
xlabel('Iteration');
ylabel('Best Fitness');
title('Best Fitness over Iterations');
grid on;

%% .................................................................................. %%


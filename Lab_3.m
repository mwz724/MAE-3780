%% Materials Lab 3 Write-Up
% Plotting ultrasonic vs actual distance measurements
% Michelle Zhou

close all

% actual measurements that I chose to place the obj/sensor at
actual1 = [1:10];
actual2 = [2:2:20];

%% Target 1: perpendicular to a hard surface: a metal plate
data_1 = actual2;
x_1 = actual2;
plot(x_1, data_1, 'o')
hold on
plot(x_1, data_1, '-r')
xlabel('Sonar sensor reported distance (in)')
ylabel('Actual distance with ruler (in)')
title('Sonar sensor vs actual distance for Target 1: perpendicular to a hard surface: a metal plate')
axis([0 20 0 20])

%% Target 2: at approximately a 45° angle to a hard surface: the lab bench
figure
data_2 = [2	3	5	5	7	6	6	20	16	128];
x_2 = actual1;
plot(x_2, data_2, 'o')
hold on

p = polyfit(x_2, data_2, 1);
plot(x_2, p(1)*x_2 + p(2), 'r', 'DisplayName', 'Fit')
xlabel('Sonar sensor reported distance (in)')
ylabel('Actual distance with ruler (in)')
title('Sonar sensor vs actual distance for Target 2: at approximately a 45° angle to a hard surface: the lab bench')
axis([0 10 0 130])

%% Target 3: A soft or porous surface: my down vest
figure
data_3 = [2	5 6	7	9	5	12	5	16	18];
x_3 = actual2;
plot(x_3, data_3, 'o')
hold on

p = polyfit(x_3, data_3, 1);
plot(x_3, p(1)*x_3 + p(2), 'r', 'DisplayName', 'Fit')
xlabel('Sonar sensor reported distance (in)')
ylabel('Actual distance with ruler (in)')
title('Sonar sensor vs actual distance for Target 3: A soft or porous surface: my down vest')
axis([0 20 0 20])

%% Target 4: An irregularly-shaped object: Helping Hands alligator clips stand
figure
data_4 = actual2;
x_4 = actual2;
plot(x_4, data_4, 'o')
hold on
p = polyfit(x_4, data_4, 1);
plot(x_4, p(1)*x_4 + p(2), 'r', 'DisplayName', 'Fit')
xlabel('Sonar sensor reported distance (in)')
ylabel('Actual distance with ruler (in)')
title('Sonar sensor vs actual distance for Target 4: An irregularly-shaped object: Helping Hands alligator clips stand')
axis([0 20 0 20])

%% Target 5: One of the wooden cubes from the robot competition 
figure
data_5 = actual2;
x_5 = actual2;
plot(x_5, data_5, 'o')
hold on
p = polyfit(x_5, data_5, 1);
plot(x_5, p(1)*x_5 + p(2), 'r', 'DisplayName', 'Fit')
xlabel('Sonar sensor reported distance (in)')
ylabel('Actual distance with ruler (in)')
title('Sonar sensor vs actual distance for Target 5: One of the wooden cubes from the robot competition')
axis([0 20 0 20])

%% Target 6: When another sensor is nearby, facing the same direction as your sensor 
figure
data_6 = actual1;
x_6 = actual1;
plot(x_6, data_6, 'o')
hold on
p = polyfit(x_6, data_6, 1);
plot(x_6, p(1)*x_6 + p(2), 'r', 'DisplayName', 'Fit')
xlabel('Sonar sensor reported distance (in)')
ylabel('Actual distance with ruler (in)')
title('Sonar sensor vs actual distance for Target 6: When another sensor is nearby, facing the same direction as your sensor')
axis([0 10 0 10])

%% Target 7: When two sensors are directly facing each other 
figure
data_7 = [0	1	2	4	2	6	7	8	9	10];
x_7 = actual1;
plot(x_7, data_7, 'o')
hold on
p = polyfit(x_7, data_7, 1);
plot(x_7, p(1)*x_7 + p(2), 'r', 'DisplayName', 'Fit')
xlabel('Sonar sensor reported distance (in)')
ylabel('Actual distance with ruler (in)')
title('Sonar sensor vs actual distance for Target 7: When two sensors are directly facing each other')
axis([0 10 0 10])

%% Target 8: One more scenario or object of your choice: my waterbottle, a curved surface 
figure
data_8 = actual2;
x_8 = actual2;
plot(x_8, data_8, 'o')
hold on
p = polyfit(x_8, data_8, 1);
plot(x_8, p(1)*x_8 + p(2), 'r', 'DisplayName', 'Fit')
xlabel('Sonar sensor reported distance (in)')
ylabel('Actual distance with ruler (in)')
title('Sonar sensor vs actual distance for Target 8: One more scenario or object of your choice: my waterbottle, a curved surface')
axis([0 20 0 20])



%% Combined graph
figure
plot(x_1, data_1, '-o')
hold on
plot(x_2, data_2, '-o')
plot(x_3, data_3, '-s')
plot(x_4, data_4, '-*')
plot(x_5, data_5, '-s')
plot(x_6, data_6, '-^')
plot(x_7, data_7, '-.')
plot(x_8, data_8, '-*')

xlabel('Sonar sensor reported distance (in)')
ylabel('Actual distance with ruler (in)')
title('Sonar sensor vs actual distance for each target')
legend('Target 1', 'Target 2', 'Target 3', 'Target 4', 'Target 5', 'Target 6', 'Target 7', 'Target 8')

axis([0 20 0 20])



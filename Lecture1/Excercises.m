%% Variables
start = clock
size(start)
help clock
startString = datestr(start)
save startTime start
save startTime startString

%% Scalars
tau = 1.5*(60*60*24)
endOfClass = 5*(tau/1.5)
knowledgeAtEnd = 1 - exp(-endOfClass/tau)
disp(['At the end of ' num2str(endOfClass) ', I will know ' num2str(knowledgeAtEnd) '% of MATLAB'])

%% Vector Operations
start = [2020,12,21,23,2,46.113957000000000]
secPerMin = 60
secPerHour = 60*secPerMin
secPerDay = secPerHour*24
secPerMonth = secPerDay*30.5
secPerYear = secPerMonth*12
secondConversion = [secPerYear secPerMonth secPerDay secPerHour secPerMin 1]
currentTime = clock
elapsedTime = currentTime - start
t = secondConversion * elapsedTime.' %elapsed time in seconds
currentKnowledge = 1 - exp(-t/tau)
disp(['At this time, I know ' num2str(currentKnowledge) '% of MATLAB'])

%% Vector Indexing
tVec = linspace(0, endOfClass, 10000);
knowledgeVec = 1 - exp(-tVec/tau);

%% General Indexing
[minVal, minInd] = min(abs(knowledgeVec - 0.5))
halfTime = tVec(minInd)
disp(['I will know half of matlab after ' num2str(halfTime/secPerDay) ' days'])

%% Plotting
figure
plot(tVec/secPerDay, knowledgeVec)

%% Directories

ntrials = 100; % number of trials

% get input from command window for initials of your participant
% label your result file using unique ID to avoid the file being overwritten
int = input('Participant Initial: ', 's');
nameID = upper(int);

% Initialize a result matrix
% Do this outside the for loop to save time
% Tips: create a cell array using function "cell"
result = cell(100,3);


% get current pathway
current = pwd();

% if there is no result folder, create one
if ~isdir([current '/Participant_Data/' nameID])
    mkdir([current '/Participant_Data/' nameID]);
end

% number of trials, number of results you want to print

for itrial = 1:ntrials
    %experiment commmands are inside this loop
    % this is psuedo code 
    location = 1;
    response  = 2;
    accuracy = 0;
    
    %% Specifying the results you want to print
    result{itrial,1} = location; % just specify any previously defined variable that you want to save,
    %itrial means it is saving on every trial (assuming your trial loop is named "itrial")
    result{itrial,2} = response; % just specify any previously defined variable that you want to save...
    result{itrial,3} = accuracy; % just specify any previously defined variable that you want to save...
end

% navigate into the result folder and save your results
cd([current '/Participant_Data/' nameID]);
save Results.mat,result;
% check in your current pathway to see if a mat file has been createdhelp
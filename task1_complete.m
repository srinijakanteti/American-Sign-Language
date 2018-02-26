clc
gestures =   {'ABOUT', 'AND', 'CAN', 'COP', 'DEAF','DECIDE','FATHER', 'FIND', 'GO OUT', 'HEARING'};
actions = [1,1,1,1,1,1,1,1,1,1];
mapObj = containers.Map(gestures,actions);
%empty cell array for 10 indices
mergedData{10} = [];
path = uigetdir(pwd, 'Select Folder Containing your Data');
cd(path)
files = dir(fullfile(path, '*.csv'));
filesArray = {files.name};
for fileName = filesArray
    for key = keys(mapObj)
        %skip the files/Gestures that are not there in the above list
         if contains(cellstr(lower(fileName(1))),cellstr(lower(key(1))))             
             fileName = char(fileName)
             
             T = readtable(fileName);
             data=T(1:44,1:33);
             
             tempArray = table2array(data);
             dataTable = array2table(tempArray.');
             
             currentGestureIndex =  find(not(cellfun('isempty', strfind(gestures,char(key)))));
             mergedData{currentGestureIndex} = vertcat(mergedData{currentGestureIndex}, dataTable);
             
         end
    end
end

fid = fopen(char(fileName),'r');
headerline  = fgetl(fid);
headers = textscan(headerline,'%s','Delimiter',',');
fclose(fid);  

headers = cell2table(strsplit(headerline,","));
headers = headers(:,1:33);
%directory where the final 10 csv will be stores
outputDirectory = uigetdir(pwd, 'Select Destination folder to write files');
cd(outputDirectory);
for key = keys(mapObj)
    currentGestureIndex =  find(not(cellfun('isempty', strfind(gestures,char(key)))));       
    n = height(mergedData{currentGestureIndex})/33;
    headervalue = repmat(headers,1,round(n));
    serialno=arrayfun(@num2str,1:33*round(n),'uni',0);
    index = repmat(1:round(n),[33 1]);
    index = index(:);
    columnNames = {'ActionID','SensorName'};
    tempArray = table2array(headervalue);
    sensorArray = tempArray.';
    %create the appropriate actionArray
    actionArray = strings(round(n)*33,1);
    actionArray(:) = strcat('Action ', num2str(index(:)));
    %create the header table by concat of the above two
    headersArray = horzcat(actionArray, sensorArray);
    headersTable = array2table(headersArray);
    headersTable.Properties.RowNames = serialno;
    headersTable.Properties.VariableNames=columnNames;
    mergedData{currentGestureIndex} = horzcat(headersTable,mergedData{currentGestureIndex});
    filename = char(key)+".csv";
    writetable(mergedData{currentGestureIndex},filename);
end

disp("done")
clear
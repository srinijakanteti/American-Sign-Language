clc
figure('units','normalized','outerposition',[0 0 1 1]);
% for i = 1:length(fftStats)
% 	meanacc = [];
% 	rmsacc = [];
% 	stdacc = [];
% 
% 	for j = 1:6
% 		m=fftStats{i}(:,:,j);
% 		meanacc = vertcat(meanacc,m(1,:));
% 		rmsacc = vertcat(rmsacc,m(2,:));
% 		stdacc = vertcat(stdacc, m(3,:));
% 	end
% 
% 	meangyro = [];
% 	rmsgyro = [];
% 	stdgyro = [];
% 	for j = 23:28
% 		m=fftStats{i}(:,:,j);
% 		meangyro = vertcat(meangyro,m(1,:));
% 		rmsgyro = vertcat(rmsgyro,m(2,:));
% 		stdgyro = vertcat(stdgyro,m(3,:));
% 	end
% 
% 
% 	meanori = [];
% 	rmsori = [];
% 	stdori = [];
% 	for j = 29:2:34
% 		m=fftStats{i}(:,:,j);
% 		meanori = vertcat(meanori,m(1,:));
% 		rmsori = vertcat(rmsori,m(2,:));
% 		stdori = vertcat(stdori,m(3,:));
% 	end
% 	for j = 30:2:34
% 		m=fftStats{i}(:,:,j);
% 		meanori = vertcat(meanori,m(1,:));
% 		rmsori = vertcat(rmsori,m(2,:));
% 		stdori = vertcat(stdori,m(3,:));
% 	end
% 
% 
% 	subplot(1,2,1); plot3(meanacc(1,:),meanacc(2,:),meanacc(3,:)); title("Left Hand"); 
%     xlabel('Mean ALX'); set(get(gca,'xlabel'),'rotation',32); ylabel('Mean ALY'); set(get(gca,'ylabel'),'rotation',-40); zlabel('Mean ALZ');
% 	grid on	
% 	subplot(1,2,2); plot3(meanacc(4,:),meanacc(5,:),meanacc(6,:)); title("Right Hand");
%     xlabel('Mean ARX'); set(get(gca,'xlabel'),'rotation',32); ylabel('Mean ARY'); set(get(gca,'ylabel'),'rotation',-40);zlabel('Mean ARZ');
% 	h = rotate3d; 
%     grid on
% 	path = "/home/srinija/Documents/MATLAB/American-Sign-Language/output/images/"+"mean_acc";
% 	filename = "mean_acc"+filesArray{i}(1:end-4)
%     saveas(gca, fullfile(char(path), char(filename)), 'jpeg');
% 	
% 
% 	clf('reset')
% 	subplot(1,2,1); plot3(meangyro(1,:),meangyro(2,:),meangyro(3,:)); title("Left Hand");
% 	grid on
% 	subplot(1,2,2); plot3(meangyro(4,:),meangyro(5,:),meangyro(6,:)); title("Right Hand");
% 	grid on
% 	path = "/home/srinija/Documents/MATLAB/American-Sign-Language/output/images/"+"mean_gyro";
% 	filename = "mean_gyro"+filesArray{i}(1:end-4)
% 	saveas(gca, fullfile(char(path), char(filename)), 'jpeg');
% 	
% 	clf('reset')
% 	subplot(1,2,1); plot3(meanori(1,:),meanori(2,:),meanori(3,:)); title("Left Hand");
% 	grid on
% 	subplot(1,2,2); plot3(meanori(4,:),meanori(5,:),meanori(6,:)); title("Right Hand");
% 	grid on
% 	path = "/home/srinija/Documents/MATLAB/American-Sign-Language/output/images/"+"mean_orie";
% 	filename = "mean_orie"+filesArray{i}(1:end-4)
% 	saveas(gca, fullfile(char(path), char(filename)), 'jpeg');
% 	
% 
% 
% 	clf('reset')
% 	subplot(1,2,1); plot3(rmsacc(1,:),rmsacc(2,:),rmsacc(3,:)); title("Left Hand");
% 	grid on	
% 	subplot(1,2,2); plot3(rmsacc(4,:),rmsacc(5,:),rmsacc(6,:)); title("Right Hand");
% 	grid on
% 	path = "/home/srinija/Documents/MATLAB/American-Sign-Language/output/images/"+"rms_acc";
% 	filename = "rms_acc"+filesArray{i}(1:end-4)
% 	saveas(gca, fullfile(char(path), char(filename)), 'jpeg');
% 	
% 	clf('reset')
% 	subplot(1,2,1); plot3(rmsgyro(1,:),rmsgyro(2,:),rmsgyro(3,:)); title("Left Hand");
% 	grid on
% 	subplot(1,2,2); plot3(rmsgyro(4,:),rmsgyro(5,:),rmsgyro(6,:)); title("Right Hand");
% 	grid on
% 	path = "/home/srinija/Documents/MATLAB/American-Sign-Language/output/images/"+"rms_gyro";
% 	filename = "rms_gyro"+filesArray{i}(1:end-4)
% 	saveas(gca, fullfile(char(path), char(filename)), 'jpeg');
% 	
% 	clf('reset')
% 	subplot(1,2,1); plot3(rmsori(1,:),rmsori(2,:),rmsori(3,:)); title("Left Hand");
% 	grid on
% 	subplot(1,2,2); plot3(rmsori(4,:),rmsori(5,:),rmsori(6,:)); title("Right Hand");
% 	grid on
% 	path = "/home/srinija/Documents/MATLAB/American-Sign-Language/output/images/"+"rms_orie";
% 	filename = "rms_orie"+filesArray{i}(1:end-4)
% 	saveas(gca, fullfile(char(path), char(filename)), 'jpeg');
% 	
% 
% 	clf('reset')
% 	subplot(1,2,1); plot3(stdacc(1,:),stdacc(2,:),stdacc(3,:)); title("Left Hand");
% 	grid on	
% 	subplot(1,2,2); plot3(stdacc(4,:),stdacc(5,:),stdacc(6,:)); title("Right Hand");
% 	grid on
% 	path = "/home/srinija/Documents/MATLAB/American-Sign-Language/output/images/"+"std_acc";
% 	filename = "std_acc"+filesArray{i}(1:end-4)
% 	saveas(gca, fullfile(char(path), char(filename)), 'jpeg');
% 	
% 	clf('reset')
% 	subplot(1,2,1); plot3(stdgyro(1,:),stdgyro(2,:),stdgyro(3,:)); title("Left Hand");
% 	grid on
% 	subplot(1,2,2); plot3(stdgyro(4,:),stdgyro(5,:),stdgyro(6,:)); title("Right Hand");
% 	grid on
% 	path = "/home/srinija/Documents/MATLAB/American-Sign-Language/output/images/"+"std_gyro";
% 	filename = "std_gyro"+filesArray{i}(1:end-4)
% 	saveas(gca, fullfile(char(path), char(filename)), 'jpeg');
% 	
% 	clf('reset')
% 	subplot(1,2,1); plot3(stdori(1,:),stdori(2,:),stdori(3,:)); title("Left Hand");
% 	grid on
% 	subplot(1,2,2); plot3(stdori(4,:),stdori(5,:),stdori(6,:)); title("Right Hand");
% 	grid on
% 	path = "/home/srinija/Documents/MATLAB/American-Sign-Language/output/images/"+"std_orie";
% 	filename = "std_orie"+filesArray{i}(1:end-4)
% 	saveas(gca, fullfile(char(path), char(filename)), 'jpeg');
% 		
% end

SensorNames = {'ALX','ALY','ALZ','ARX','ARY','ARZ','EMG0L','EMG0R','EMG1L','EMG1R','EMG2L','EMG2R','EMG3L','EMG3R','EMG4L','EMG4R','EMG5L','EMG5R','EMG6L','EMG6R','EMG7L','EMG7R','GLX','GLY','GLZ','GRX','GRY','GRZ','OPL','OPR','ORL','ORR','OYL','OYR'};
colorspec = {[0.9 0.3 0.9];[0.6 0.5 0.2];[0.9 0.8 0.1];[0.8 1 0];[0 1 1];[1 0 0];[0 1 0];[0 0 1]; [1 0.5 0.1];[0 0 0];};
for i=1:size((dwtStats),3)
    data_mean=dwtStats(1,:,i);
    data_rms=dwtStats(2,:,i);
    data_max=dwtStats(3,:,i);
    data_min=dwtStats(4,:,i);
    
    
% %     hold on
%     plot(data_mean,'Color', colorspec{i});set(gca,'XTick',1:34,'XTickLabel',SensorNames);xtickangle(-45);
% %     [~, hobj, ~, ~] = legend({'ABOUT','AND','CAN','COP','DEAF', 'DECIDE', 'FATHER', 'FIND', 'GO OUT', 'HEARING'},'Fontsize',12,'Location','Northwest');
%     [~, hobj, ~, ~] = legend({filesArray{i}(1:end-4)},'Fontsize',12,'Location','Northwest');
%     hl = findobj(hobj,'type','line');
%     set(hl,'LineWidth',2.5);
%     ht = findobj(hobj,'type','text')
%     set(ht,'FontSize',12);
%     ylabel('Mean values');
%     xlabel('Sensor names');
%     title("mean of dwt");
%     grid on
%     path = "/home/srinija/Documents/MATLAB/American-Sign-Language/output/images/"+"mean_dwt";
%     filename = "mean_dwt"+filesArray{i}(1:end-4)
% % 	filename = "overlapped_mean_dwt"
%     saveas(gca, fullfile(char(path), char(filename)), 'jpeg');
    
%     hold on
%     plot(data_rms,'Color', colorspec{i});set(gca,'XTick',1:34,'XTickLabel',SensorNames);xtickangle(-45);
%     [~, hobj, ~, ~] = legend({'ABOUT','AND','CAN','COP','DEAF', 'DECIDE', 'FATHER', 'FIND', 'GO OUT', 'HEARING'},'Fontsize',12,'Location','Northwest');
%     %[~, hobj, ~, ~] = legend({filesArray{i}(1:end-4)},'Fontsize',12,'Location','Northwest');
%     hl = findobj(hobj,'type','line');
%     set(hl,'LineWidth',2.5);
%     ht = findobj(hobj,'type','text')
%     set(ht,'FontSize',12);
%     ylabel('RMS values');
%     xlabel('Sensor names');
%     title("rms of dwt");
%     grid on
%     path = "/home/srinija/Documents/MATLAB/American-Sign-Language/output/images/"+"rms_dwt";
%     %filename = "rms_dwt"+filesArray{i}(1:end-4)
% 	filename = "overlapped_rms_dwt"
%     saveas(gca, fullfile(char(path), char(filename)), 'jpeg'); 
 

%     hold on
%     plot(data_max,'Color', colorspec{i});set(gca,'XTick',1:34,'XTickLabel',SensorNames);xtickangle(-45);
%     [~, hobj, ~, ~] = legend({'ABOUT','AND','CAN','COP','DEAF', 'DECIDE', 'FATHER', 'FIND', 'GO OUT', 'HEARING'},'Fontsize',12,'Location','Northwest');
%     %[~, hobj, ~, ~] = legend({filesArray{i}(1:end-4)},'Fontsize',12,'Location','Northwest');
%     hl = findobj(hobj,'type','line');
%     set(hl,'LineWidth',2.5);
%     ht = findobj(hobj,'type','text')
%     set(ht,'FontSize',12);
%     ylabel('Max values');   
%     xlabel('Sensor names');
%     title("max of dwt");
%     grid on
%     path = "/home/srinija/Documents/MATLAB/American-Sign-Language/output/images/"+"max_dwt";
%     %filename = "max_dwt"+filesArray{i}(1:end-4)
% 	filename = "overlapped_max_dwt"
%     saveas(gca, fullfile(char(path), char(filename)), 'jpeg');
%    
    hold on
    plot(data_min,'Color', colorspec{i});set(gca,'XTick',1:34,'XTickLabel',SensorNames);xtickangle(-45);
    [~, hobj, ~, ~] = legend({'ABOUT','AND','CAN','COP','DEAF', 'DECIDE', 'FATHER', 'FIND', 'GO OUT', 'HEARING'},'Fontsize',12,'Location','Northwest');
    %[~, hobj, ~, ~] = legend({filesArray{i}(1:end-4)},'Fontsize',12,'Location','Northwest');
    hl = findobj(hobj,'type','line');
    set(hl,'LineWidth',2.5);
    ht = findobj(hobj,'type','text')
    set(ht,'FontSize',12);
    ylabel('Min values');     
    xlabel('Sensor names');
    title("min of dwt");
    grid on
    path = "/home/srinija/Documents/MATLAB/American-Sign-Language/output/images/"+"min_dwt";
    %filename = "min_dwt"+filesArray{i}(1:end-4)
	filename = "overlapped_min_dwt"
    saveas(gca, fullfile(char(path), char(filename)), 'jpeg');
end


    
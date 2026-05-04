%%%%%%%%%%%%%% Requirement 1 %%%%%%%%%%%%%%%

throttle_pos = single(85.5);

gear_status = uint8(5);

whos throttle_pos gear_status


%%%%%%%%%%%%%% Requirement 2 %%%%%%%%%%%%%%%

LiDAR_Buffer = zeros(10,10,3,'uint8');

class(LiDAR_Buffer)


%%%%%%%%%%%%%% Requirement 3 %%%%%%%%%%%%%%%

% Dynamic allocation
tic
for i = 1:10000
    dyn_array(i) = i;
end
t1 = toc;
fprintf('Elapsed time is %f seconds. (Dynamic)\n', t1);

% Preallocated
stat_array = zeros(1,10000);

tic
for i = 1:10000
    stat_array(i) = i;
end
t2 = toc;
fprintf('Elapsed time is %f seconds. (Preallocated)\n', t2);


%%%%%%%%%%%%%% Requirement 4 %%%%%%%%%%%%%%%

Temp_Filter = randn(1000,1000);

clear Temp_Filter

clear functions


%%%%%%%%%%%%%% Requirement 5 %%%%%%%%%%%%%%%

pad_seq = uint8([255; 255]);

Padding_Block = repmat(pad_seq, 1, 2);

zero_block = uint8(zeros(2,2));

CAN_Payload = [zero_block Padding_Block];
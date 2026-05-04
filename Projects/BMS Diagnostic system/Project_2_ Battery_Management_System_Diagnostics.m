%%%%%%%%%%%%%% Requirement 1 %%%%%%%%%%%%%%%

N = input('Enter number of battery modules (must be > 2): ');
while N <= 2
    N = input('Invalid! Try again: ');
end

Volt_Matrix = diag(3.7 * ones(1, N));

chem = input('Enter battery chemistry: ', 's');

fprintf('BMS Initialized for %s chemistry.\n', chem);


%%%%%%%%%%%%%% Requirement 2 %%%%%%%%%%%%%%%

Critical_Cells = Volt_Matrix(end-1:end, end-1:end);


%%%%%%%%%%%%%% Requirement 3 %%%%%%%%%%%%%%%

Norm_Power = (Critical_Cells.^2) ./ 4.2;


%%%%%%%%%%%%%% Requirement 4 %%%%%%%%%%%%%%%

status_flag = [0 1];

Flag_Matrix = repmat(status_flag, 2, 1);


%%%%%%%%%%%%%% Requirement 5 %%%%%%%%%%%%%%%

CAN_Packet = [Norm_Power Flag_Matrix];


%%%%%%%%%%%%%% Requirement 6 %%%%%%%%%%%%%%%

I_mat = [5 2; 2 4];
V_vec = [14; 12];

if det(I_mat) ~= 0
    R_vec = inv(I_mat) * V_vec;
end

trace_val = trace(I_mat);

fprintf('The trace of the current matrix is %d\n', trace_val);


%%%%%%%%%%%%%% Requirement 7 %%%%%%%%%%%%%%%

mode = setBMSMode("Charge");

disp(mode + " Mode");


%%%%%%%%%%%%%% Function (must be at end) %%%%%%%%%%%%%%%

function out = setBMSMode(state)
    switch state
        case "Drive"
            out = "Active Discharging";
        case "Charge"
            out = "Active Balancing";
        otherwise
            out = "Standby";
    end
end
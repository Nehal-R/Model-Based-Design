%%%%%%%%%%%%%% Project Requirement 1: Initialize Sensor Metadata %%%%%%%%%%%%%%%

sensor_name = "Thermal_Alpha";

sensor_id = int32(round(105.8));

RawData = [10 20 30; 40 50 60; 70 80 90];


%%%%%%%%%%%%%% Project Requirement 2: Extract ROI %%%%%%%%%%%%%%%

ROI_Data = RawData(1:2, [2 end]);


%%%%%%%%%%%%%% Project Requirement 3: Calibrate Sensor Data %%%%%%%%%%%%%%%

Calibrated_Data = (ROI_Data.^2) ./ 10;


%%%%%%%%%%%%%% Project Requirement 4: Generate Padding Sequence %%%%%%%%%%%%%%%

pad_val = [5 5];

PadMatrix = repmat(pad_val, 2, 1);


%%%%%%%%%%%%%% Project Requirement 5: Assemble Transmission Data %%%%%%%%%%%%%%%

TransmissionData = [Calibrated_Data PadMatrix];
%or TransmissionData = horzcat(Calibrated_Data, PadMatrix);


%%%%%%%%%%%%%% Project Requirement 6: Evaluate System Model %%%%%%%%%%%%%%%

A = [1 2; 2 2];
b = [2; 6];

A_inv = inv(A);

x = A_inv * b;

trace_A = trace(A);
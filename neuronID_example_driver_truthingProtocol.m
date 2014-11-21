% Only the following two projects are currently supported
% as an initial test case
token = 'mitra14N788';
%token = 'mitra14IHC1035';
serverLocation = 'http://braingraph1.cs.jhu.edu/';
% data location
outputDir = '/sample_data/';

% resolution (0 is full resolution)
resolution = 0;

xArgs = [11200,12100]; % mitra14IHC1035
yArgs = [3100,4500];
zArgs = [102,103];

labelOut = '/sample_data/test_output';

%get data
ocp_get_cshl_data(serverLocation, token, resolution, outputDir, xArgs, yArgs, zArgs);

% do truthing in ITK snap and save segmentation

%put data
put_truthing_data('/sample_data/test_segmentation.nii', labelOut,-1)

function run_1_fem()

addpath(genpath('source_code'))
addpath(genpath('source_input'))
close('all')

%% run
run_sub('ht');
% run_sub('mf');

end

function run_sub(model_type)

% sim_name
file_init = 'data/init.mat';
folder_fem = ['data/fem_' model_type];

% type
var_type.geom_type = 'rel';
var_type.excitation_type = 'rel';

% master_fem
sweep = get_data_sweep(model_type, 'matrix', 2);
master_fem(file_init, folder_fem, model_type, var_type, sweep);

sweep = get_data_sweep(model_type, 'random', 6000);
master_fem(file_init, folder_fem, model_type, var_type, sweep);

end
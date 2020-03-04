function master_assemble(folder_fem, file_fem, const)

% name
fprintf('################## master_assemble\n')

% run
fprintf('assemble\n')
[n_tot, n_sol, inp, out_fem] = get_assemble(folder_fem);

fprintf('approx\n')
out_approx = get_approx(n_sol, inp, const);

% disp
fprintf('size\n')
fprintf('    n_tot = %d\n', n_tot)
fprintf('    n_sol = %d\n', n_sol)

% save
fprintf('save\n')
save(file_fem, 'n_sol', 'inp', 'out_fem', 'out_approx', 'const')

fprintf('################## master_assemble\n')

end

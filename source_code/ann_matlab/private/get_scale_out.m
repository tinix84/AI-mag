function out_mat = get_scale_out(var_out, norm_param_out, out_ref, out_nrm)

for i=1:length(var_out)
    % extract
    name_tmp = var_out{i}.name;
    var_trf_tmp = var_out{i}.var_trf;
    use_nrm_tmp = var_out{i}.use_nrm;
    norm_param_tmp = norm_param_out{i};
    
    value_tmp = out_ref.(name_tmp);
    scale_tmp = out_nrm.(name_tmp);
    
    % scale
    if use_nrm_tmp==true
        value_tmp = value_tmp./scale_tmp;
    end
    
    % transform and normalize
    value_tmp = get_var_trf(value_tmp, var_trf_tmp, 'scale');
    value_tmp = get_var_norm_value(value_tmp, norm_param_tmp, 'scale');
    
    % assign
    out_mat(i,:) = value_tmp;
end

end
function data = get_struct_merge(varargin)

cell = [];
field = [];
for i=1:length(varargin)
    cell = [cell ; struct2cell(varargin{i})];
    field = [field ; fieldnames(varargin{i})];
end
data = cell2struct(cell, field);

end
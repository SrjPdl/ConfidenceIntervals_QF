function validate_func_indices(func_indices)
    if nargin < 1
        error('Please provide function indices as input, e.g., 1, [1 2 5], or 1:7');
    end
    if ~isvector(func_indices) || ~all(isnumeric(func_indices)) || any(func_indices < 1)
        error('Function indices must be a vector of positive integers.');
    end
end

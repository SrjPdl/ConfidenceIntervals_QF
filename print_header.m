function print_header(func_idx, fileID)
    header = sprintf('Results for Function %d\n-----------------------------------------------------\n\n', func_idx);
    fprintf(fileID, '%s', header);
    fprintf('%s', header);
end

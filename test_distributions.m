function test_distributions(func_idx, dist_idx, params, distribution_types, Ns, num_samples, fileID)
    for i = 1:size(params, 1)
        [dist_params, true_theta] = extract_distribution_params(dist_idx, params, i);
        distribution_header = sprintf('Using %s distribution (%s) as input\n----------------------------------------------\n\n', ...
            distribution_types{dist_idx}, dist_params);
        fprintf(fileID, '%s', distribution_header);
        fprintf('%s', distribution_header);

        for n_idx = 1:length(Ns)
            N = Ns(n_idx);
            frac_missed = calculate_fraction_missed(N, num_samples, dist_idx, params(i, :), true_theta, func_idx);
            result_string = sprintf('N: %5d\t fraction missed: %.4f\n', N, frac_missed);
            fprintf('%s', result_string);
            fprintf(fileID, '%s', result_string);
        end

        fprintf(fileID, '\n');
        fprintf('\n');
    end
end

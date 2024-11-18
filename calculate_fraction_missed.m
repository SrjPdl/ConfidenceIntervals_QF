function frac_missed = calculate_fraction_missed(N, num_samples, dist_idx, param_values, true_theta, func_idx)
    hits = 0;
    for K = 1:num_samples
        X = generate_samples(N, dist_idx, param_values);
        [A, B] = ci(X, func_idx);
        if A <= true_theta && true_theta <= B
            hits = hits + 1;
        end
    end
    frac_missed = 1 - hits / num_samples;
end

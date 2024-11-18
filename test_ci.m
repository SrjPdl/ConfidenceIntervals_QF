function test_ci(func_indices)
    validate_func_indices(func_indices);

    Ns = [10, 100, 1000, 10000];
    num_samples = 10000; 
   
    [normal_params, uniform_params, bernoulli_thetas] = define_distribution_params();

    results_dir = 'results';
    if ~exist(results_dir, 'dir')
        mkdir(results_dir);
    end

    for func_idx = func_indices
        file_name = fullfile(results_dir, sprintf('function_%d_results.txt', func_idx));
        fileID = fopen(file_name, 'w');
        print_header(func_idx, fileID);

        distribution_types = {'normal', 'uniform', 'bernoulli'};
        for dist_idx = 1:3
            switch dist_idx
                case 1
                    params = normal_params;
                case 2
                    params = uniform_params;
                case 3
                    params = bernoulli_thetas;
                otherwise
                    error('Invalid distribution index');
            end
            test_distributions(func_idx, dist_idx, params, distribution_types, Ns, num_samples, fileID);
        end

        fclose(fileID);
    end
end

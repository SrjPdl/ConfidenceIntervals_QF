function X = generate_samples(N, dist_idx, params)
    switch dist_idx
        case 1 % Normal distribution
            mu = params(1);
            sigma = sqrt(params(2));
            X = sample_normal(N, sigma, mu);
        case 2 % Uniform distribution
            a = params(1);
            b = params(2);
            X = sample_uniform(N, a, b);
        case 3 % Bernoulli distribution
            theta = params(1);
            X = sample_bernoulli(N, theta);
        otherwise
            error('Invalid distribution index');
    end
end

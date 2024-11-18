function [dist_params, true_theta] = extract_distribution_params(dist_idx, params, i)
    switch dist_idx
        case 1 % Normal distribution
            mu = params(i, 1);
            sigma = params(i, 2);
            dist_params = sprintf('mean=%.2f, std=%.2f', mu, sigma);
            true_theta = mu;
        case 2 % Uniform distribution
            a = params(i, 1);
            b = params(i, 2);
            dist_params = sprintf('a=%.2f, b=%.2f', a, b);
            true_theta = (a + b) / 2; 
        case 3 % Bernoulli distribution
            theta = params(i);
            dist_params = sprintf('theta=%.2f', theta);
            true_theta = theta;
        otherwise
            error('Invalid distribution index');
    end
end

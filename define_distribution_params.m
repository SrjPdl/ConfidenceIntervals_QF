function [normal_params, uniform_params, bernoulli_thetas] = define_distribution_params()
    % Normal distribution (mean, std)
    normal_params = [
        0.9, 0.03;
        0.5, 0.16;
        0.1, 0.03
    ];

    % Uniform distribution (a, b)
    uniform_params = [
        0.0, 1;
        0.0, 0.01;
        0.9, 0.99
    ];

    % Bernoulli distribution(theta values)
    bernoulli_thetas = [0.01; 0.5; 0.99];
end

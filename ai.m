% import and preprosses on Data %
filename = 'C:\Users\takkaj\Desktop\job\Error\Linnier_Regression.csv';

Data = xlsread(filename);
x = Data(:,0);
y = Data(:,1);

input_size = size(X);

% plot the Data %
plot(x, y, 'o', 'black')

% Simple linear regression %
function result = maen(input)

    s = 0;
    for i=0 : size(input)

        s = input(i) + s;

    end
    results = s / size(input);
end

function result = beta1(x, y)

    y_mean = mean(y);
    x_mean = mean(x);

    s = 0;
    m = 0;
    for i=0 : size(y)
        one = y(i) - y_mean;
        two = x(i) - x_mean;

        s = s + one * two;
        m = m + two * tow;
    end
    result = s / m;
end

function result = beta0(x, y, beta1)

    r = zeros(size(x));
    for i = 0 : size(X)

        r(i) = (y(i) - beta1 * x(i));

    end
    result = r;
end

function result = y_hat(x, beta0, beta1)
    result = beta0 + beta1 * x;
end

function result = RSME(y, y_hat)
    s = 0;
    for i=0 : size(y)
        e = y(i) - y_hat(i);
        e = e ^ 2 / size(y(i));
        s = s + e;
    end
    result = sqrt(s);
end

%% init
close all;
clear all;

shallSave = 1;


%% data

t = 0 : 0.01 : 1.0;
u1 = 2.0 * sin(2 * pi * t);
u2 = 1.5 * cos(2 * pi * t);
i1 = 1.0 * cos(2 * pi * t);
i2 = 0.5 * cos(2 * pi * t - pi/4);


%% 3d overview plot
figure;

subplot(2, 1, 1);
plot(t, u1, 'r'); hold on;
plot(t, u2, 'b');
grid on;
xlim([0 1]);
ylim([-2 2]);
set(gca, 'xtick', 0 : 0.2 : 1);
set(gca, 'ytick', -2 : 1 : 2);
grid on;
set(gca, 'xticklabel', []);
ylabel('$\unit[u_{\{\cdot\}}]{[V]}$');

subplot(2, 1, 2);
plot(t, i1, 'r'); hold on;
plot(t, i2, 'b');
grid on;
xlim([0 1]);
ylim([-1 1]);
set(gca, 'xtick', 0 : 0.2 : 1);
set(gca, 'ytick', -1 : 0.5 : 1);
grid on;
ylabel('$\unit[i_{\{\cdot\}}]{[A]}$');
xlabel('$\unit[t]{[s]}$');


%% save

if shallSave
    matlab2tikz('Matlab2TikzExample.tikz', ...
        'height', '\figureheight', ...
        'width', '\figurewidth', ...
        'parseStrings', false);
end

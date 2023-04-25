
var_plot_1 = out.x1;
data = var_plot_1.signals.values;
time = var_plot_1.time;
stairs(time,data,'Color','r','LineStyle','-', 'LineWidth',1)
xlabel("Czas(s)")
ylabel("Wartość")
set(gca,'fontsize', 12)
    hold on
var_plot_2 = out.x2;
data = var_plot_2.signals.values;
time = var_plot_2.time;
stairs(time,data,'Color','b','LineStyle','-', 'LineWidth',1)
set(gca,'fontsize', 12)
var_plot_3 = out.x3;
data = var_plot_3.signals.values;
time = var_plot_3.time;
stairs(time,data,'Color','g','LineStyle','-', 'LineWidth',1)
set(gca,'fontsize', 12)
var_plot_4 = out.u;
data = var_plot_4.signals.values;
time = var_plot_4.time;
stairs(time,data,'Color','cyan','LineStyle','-', 'LineWidth',1)
set(gca,'fontsize', 12)
hold off
title("Porównanie wartości poszczególnych parametrów dla bieguna zb = 0.03")
legend("x1", "x2","x3","u")
ylim([-2 3])
% print('zad3warpocz.png','-dpng','-r400')
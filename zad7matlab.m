
var_plot_1 = out.x1_obj;
data = var_plot_1.signals.values;
time = var_plot_1.time;
subplot(2,2,1)
stairs(time,data,'Color','r','LineStyle','-', 'LineWidth',0.9)
xlabel("Czas(s)")
ylabel("Wartość")
set(gca,'fontsize', 8)
title("x1")
% xticks(0:1:10);
    hold on
var_plot_1_2 = out.x1_obv;
data = var_plot_1_2.signals.values;
time = var_plot_1_2.time;
stairs(time,data,'Color','b','LineStyle','--', 'LineWidth',0.9)
legend("x1 obiektu","x1 obserwatora","Location", "southeast")
hold off
var_plot_2 = out.x2_obj;
data = var_plot_2.signals.values;
time = var_plot_2.time;
subplot(2,2,2)
stairs(time,data,'Color','r','LineStyle','-', 'LineWidth',0.9)
set(gca,'fontsize', 8)
% xticks(0:1:10);
title("x2")
xlabel("Czas(s)")
ylabel("Wartość")
hold on
var_plot_2_2 = out.x2_obv;
data = var_plot_2_2.signals.values;
time = var_plot_2_2.time;
stairs(time,data,'Color','b','LineStyle','--', 'LineWidth',0.9)
legend("x2 obiektu","x2 obserwatora","Location", "southeast")
var_plot_3 = out.x3_obj;
data = var_plot_3.signals.values;
time = var_plot_3.time;
subplot(2,2,3)
stairs(time,data,'Color','r','LineStyle','-', 'LineWidth',0.9)
set(gca,'fontsize', 8)
hold on
var_plot_3_2 = out.x3_obv;
data = var_plot_3_2.signals.values;
time = var_plot_3_2.time;
stairs(time,data,'Color','b','LineStyle','--', 'LineWidth',0.9)
legend("x2 obiektu","x2 obserwatora","Location", "southeast")
% xticks(0:1:10);
var_plot_4 = out.uo;
data = var_plot_4.signals.values;
time = var_plot_4.time;
set(gca,'fontsize', 8)
% xticks(0:1:10);
title("x3")
xlabel("Czas(s)")
ylabel("Wartość")
subplot(2,2,4)
stairs(time,data,'Color','cyan','LineStyle','-', 'LineWidth',0.7)
set(gca,'fontsize', 8)
% xticks(0:1:10);
xlabel("Czas(s)")
ylabel("Wartość")
hold off
title("U")
% legend("x1", "x2","x3","u")
% ylim([-2 3])
print('zad7_001.png','-dpng','-r400')
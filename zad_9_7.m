
var_plot_1 = out.x_1_npr_obj_7;
data = var_plot_1.signals.values;
time = var_plot_1.time;
subplot(2,2,1)
stairs(time,data,'Color','r','LineStyle','-', 'LineWidth',0.9)
xlabel("Czas(s)")
ylabel("Wartość")
set(gca,'fontsize', 8)
title("x1")
% xticks(0:1:10);
hold off
var_plot_2 = out.x_2_nprobj_7;
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
var_plot_2_2 = out.x_2_nprobv_7;
data = var_plot_2_2.signals.values;
time = var_plot_2_2.time;
stairs(time,data,'Color','b','LineStyle','--', 'LineWidth',0.9)
legend("x2 obiektu","x2 obserwatora","Location", "southeast")
var_plot_3 = out.x_3_nprobj_7;
data = var_plot_3.signals.values;
time = var_plot_3.time;
subplot(2,2,3)
stairs(time,data,'Color','r','LineStyle','-', 'LineWidth',0.9)
set(gca,'fontsize', 8)
hold on
var_plot_3_2 = out.x_3_nprobv_7;
data = var_plot_3_2.signals.values;
time = var_plot_3_2.time;
stairs(time,data,'Color','b','LineStyle','--', 'LineWidth',0.9)
legend("x3 obiektu","x3 obserwatora","Location", "southeast")
% xticks(0:1:10);
var_plot_4 = out.u_npr_7;
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
% print('zad9_8001.png','-dpng','-r400')
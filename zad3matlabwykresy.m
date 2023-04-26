var_plot_1 = out.first_ver;
data = var_plot_1.signals.values;
time = var_plot_1.time;
stairs(time,data,'Color','r','LineStyle','-', 'LineWidth',1.5)
xlabel("Czas(s)")
ylabel("Wartość na wyjściu")
set(gca,'fontsize', 12)
    hold on
var_plot_2 = out.second_ver;
data = var_plot_2.signals.values;
time = var_plot_2.time;
stairs(time,data,'Color','b','LineStyle','--', 'LineWidth',1.5)
set(gca,'fontsize', 12)
title("Modele dla obu wersji metody bezpośredniej bez warunków początkowych")
legend("1 wersja metody bezpośredniej", "2 wersja metody bezpośredniej")
print('zad3bezwarpocz.png','-dpng','-r400')
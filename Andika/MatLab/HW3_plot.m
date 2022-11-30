figure('Position', [1, 1, 400, 800])
tiledlayout(2,1)

nexttile
plot(1:dpsiter,dpsdata);
xlabel("iteration")
ylabel("dpslack value")
axis padded
nexttile
plot(1:dpsiter,costdata);
xlabel("iteration")
ylabel("totalcost")
axis padded

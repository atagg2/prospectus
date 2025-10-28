# import packages
import HDF5 as H5
import Plots as PL

# specify pyplot
PL.pyplot()

# load trajectory data
x_hist = H5.h5read("/Users/atagg/Documents/research/trajectory-optimization-paper/optimal_trajectory/x_hist.h5", "x_hist")
u_hist = H5.h5read("/Users/atagg/Documents/research/trajectory-optimization-paper/optimal_trajectory/u_hist.h5", "u_hist")

# define scaling
x_scaling = [60.0, 10.0, 1.0, 300.0, 50.0, 5.0]
u_scaling = [400.0, 400.0, 400.0, pi/2, pi/2, pi/2, 25*pi/180]

# unscale trajectory and controls
x_hist .*= x_scaling
u_hist .*= u_scaling

# discretize time
t = range(0.0, 7.5, length(x_hist[1,:,end]))

# create subplots
pv = PL.plot(t, x_hist[1,:,end], xlabel = "Time (s)", ylabel = "Velocity (m/s)", label = false)
pth = PL.plot(t, x_hist[6,:,end]*180/pi, xlabel = "Time (s)", ylabel = "Pitch (deg)", label = false)
po = PL.plot(t[1:end-1], u_hist[1,:,end]*60/2/pi, xlabel = "Time (s)", ylabel = "Rotor RPM", label = "Front", ylims = [-10, 5000], legend = :topleft)
PL.plot!(po, t[1:end-1], u_hist[2,:,end]*60/2/pi, label = "Middle")
PL.plot!(po, t[1:end-1], u_hist[3,:,end]*60/2/pi, label = "Back")
pt = PL.plot(t[1:end-1], u_hist[4,:,end]*180/pi, xlabel = "Time (s)", ylabel = "Rotor Tilt (deg)", label = "Front")
PL.plot!(pt, t[1:end-1], u_hist[5,:,end]*180/pi, label = "Middle")
PL.plot!(pt, t[1:end-1], u_hist[6,:,end]*180/pi, label = "Back")

# create full plot
p = PL.plot(pv, pth, po, pt)

# save figure
PL.savefig(p, "/Users/atagg/Documents/research/prospectus/figures/trajectory.png")

# load force data
cf_wing_vpm = H5.h5read("/Users/atagg/Documents/research/trajectory-optimization-paper/vpm_data/cf_wing_vpm.h5", "cf_wing_vpm")
cf_wing_vlm = H5.h5read("/Users/atagg/Documents/research/trajectory-optimization-paper/vlm_data/cf_wing_vlm.h5", "cf_wing_vlm")

# allocate plotting data
vlm_lift_wing = zeros(400)
vlm_drag_wing = zeros(400)
vpm_lift_wing = zeros(length(cf_wing_vpm[:,1,1]))
vpm_drag_wing = zeros(length(cf_wing_vpm[:,1,1]))

# calculate aggregate forces
for i in eachindex(vlm_lift_wing)
   vlm_lift_wing[i] = sum(cf_wing_vlm[i,:,3])
   vlm_drag_wing[i] = sum(cf_wing_vlm[i,:,1])
end
for i in eachindex(vpm_lift_wing)
   vpm_lift_wing[i] = sum(cf_wing_vpm[i,:,3])
   vpm_drag_wing[i] = sum(cf_wing_vpm[i,:,1])
end

# discretize time
tf = 7.5
nt = 400
ts = range(0.0, tf, nt)
t_vpm = range(0.0, 7.5, length(cf_wing_vpm[:,1,1]))

# plot forces
p_lift_wing = PL.plot(ts, vlm_lift_wing,
           xlabel = "Time (s)",
           ylabel = "Lift (N)",
           label = "VLM",
           legend = :topleft)
PL.plot!(p_lift_wing, t_vpm, vpm_lift_wing,
           label = "VPM")

p_drag_wing = PL.plot(ts, vlm_drag_wing,
           xlabel = "Time (s)",
           ylabel = "Drag (N)",
           label = "VLM",
           legend = :topleft)
PL.plot!(p_drag_wing, t_vpm, vpm_drag_wing,
         label = "VPM")

# create full plot
p_forces = PL.plot(p_lift_wing, p_drag_wing, layout = (1,2), size = (1400, 500), guidefont=20, tickfont=20, legendfont=20) 

# save figure
PL.savefig(p_forces, "/Users/atagg/Documents/research/prospectus/figures/comparison.png")

# load neural time step reduction data
ode_data = H5.h5read("/Users/atagg/Documents/research/prospectus/data/neural_timestep_reduction.h5", "neural_timestep_reduction")
ode_solution = H5.h5read("/Users/atagg/Documents/research/prospectus/data/ode_solution.h5", "ode_solution")

# discretize time
t = range(0.0, 1.0, length(ode_data[1,:]))
t_sol = range(0.0, 1.0, length(ode_solution))

# generate plot
pode = PL.plot(t, ode_data[1,:], xlabel = "Time", ylabel = "State", markershape = :circle, label = "Naive Integration")
PL.plot!(pode, t, ode_data[2,:], markershape = :circle, label = "Neural time step reduction")
PL.plot!(pode, t_sol, ode_solution, label = "True solution")

# save figure
PL.savefig(pode, "/Users/atagg/Documents/research/prospectus/figures/neural_time_step.png")

# load method of characteristics data
z = H5.h5read("/Users/atagg/Documents/research/prospectus/data/z.h5", "z")
zp = H5.h5read("/Users/atagg/Documents/research/prospectus/data/zp.h5", "zp")
y = H5.h5read("/Users/atagg/Documents/research/prospectus/data/y.h5", "y")
yp = H5.h5read("/Users/atagg/Documents/research/prospectus/data/yp.h5", "yp")

# discretize time
t = range(0.0, 1.0, length(z[1,:]))

# create standard method plot
palette = PL.palette(:auto)
ps = PL.plot(t, y[1,:], xlabel = "Time", ylabel = "Latent State", label="Actual", color=palette[1], legend = :bottomleft)
PL.plot!(t, yp[1,:], ls=:dash, color=palette[1], label = "Predicted")
PL.plot!(t, y[2,:], color=palette[2], label = false)
PL.plot!(t, yp[2,:], ls=:dash, color=palette[2], label = false)
PL.plot!(t, y[3,:], color=palette[3], label = false)
PL.plot!(t, yp[3,:], ls=:dash, color=palette[3], label = false)
PL.plot!(t, y[4,:], color=palette[4], label = false)
PL.plot!(t, yp[4,:], ls=:dash, color=palette[4], label = false)
PL.plot!(t, y[5,:], color=palette[5], label = false)
PL.plot!(t, yp[5,:], ls=:dash, color=palette[5], label = false)
PL.plot!(t, y[6,:], color=palette[6], label = false)
PL.plot!(t, yp[6,:], ls=:dash, color=palette[6], label = false)

# create method of characteristics plot
pm = PL.plot(t, z[1,:], xlabel = "Time", zlabel = "Latent State", label=false, color=palette[1], legend = :bottomright)
PL.plot!(t, zp[1,:], ls=:dash, color=palette[1], label = false)
PL.plot!(t, z[2,:], color=palette[2], label = false)
PL.plot!(t, zp[2,:], ls=:dash, color=palette[2], label = false)
PL.plot!(t, z[3,:], color=palette[3], label = false)
PL.plot!(t, zp[3,:], ls=:dash, color=palette[3], label = false)
PL.plot!(t, z[4,:], color=palette[4], label = false)
PL.plot!(t, zp[4,:], ls=:dash, color=palette[4], label = false)
PL.plot!(t, z[5,:], color=palette[5], label = false)
PL.plot!(t, zp[5,:], ls=:dash, color=palette[5], label = false)
PL.plot!(t, z[6,:], color=palette[6], label = false)
PL.plot!(t, zp[6,:], ls=:dash, color=palette[6], label = false)

# create full plot
p_moc = PL.plot(ps, pm, size=(1400,500), guidefont=20, tickfont=20, legendfont=20)

# save figure
PL.savefig(p_moc, "/Users/atagg/Documents/research/prospectus/figures/method_of_characteristics.png")



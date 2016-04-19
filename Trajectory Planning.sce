t = linspace(-%pi,%pi,500)';
function z=traj(x, y),z=1.5*sin(x^2)*cos(y),endfunction
clf();comet3d(cos(t),sin(t),traj)

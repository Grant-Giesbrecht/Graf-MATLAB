classdef GrafAxis
	
	properties
		gs
		position
		span
		relative_size
		x_axis
		y_axis_L
		y_axis_R
		z_axis
		grid_on
		traces
		title
	end
	
	methods
		function obj=GrafAxis(gs)
			obj.gs = gs;
			obj.position = [0, 0]; % Position as row-column from top-left
			obj.span = [1, 1];
			obj.x_axis = GrafScale(gs);
			obj.y_axis_L  =GrafScale(gs);
			obj.y_axis_R = GrafScale(gs);
			obj.z_axis = GrafScale(gs);
			obj.grid_on = false;
			obj.traces = []; %TODO: Does this need to be a struct?
			obj.title = "";
		end
		
		function mimic(obj, ax)
			
			% obj.gs = gs;
			% obj.position = [0, 0]; % Position as row-column from top-left
			% obj.span = [1, 1];
			obj.x_axis = GrafScale(gs, 0, ax);
			obj.y_axis_L  =GrafScale(gs, 1, ax);
			% obj.y_axis_R = GrafScale(gs);
			% obj.z_axis = GrafScale(gs);
			obj.grid_on = (ax.XGrid) || (ax.YGrid);
			% obj.traces = []; %TODO: Does this need to be a struct?
			obj.title = ax.Title;
			
		end
	end
	
end
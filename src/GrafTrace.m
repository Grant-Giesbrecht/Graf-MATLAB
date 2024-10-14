classdef GrafTrace
	
	properties
		use_yaxis_L
		color
		x_data
		y_data
		z_data
		line_type
		marker_type
		marker_size
		line_width
		display_name
	end
	
	methods
		function obj=GrafTrace()
			obj.use_yaxis_L = false;
			obj.color = [1, 0, 0];
			obj.x_data = [];
			obj.y_data = [];
			obj.z_data = [];
			obj.line_type = "-";
			obj.marker_type = ".";
			obj.marker_size = 1;
			obj.line_width = 1;
			obj.display_name = "";
		end
		
		function mimic(obj, line)
			
		end
		
	end
	
end
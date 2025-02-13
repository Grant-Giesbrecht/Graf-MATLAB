classdef GrafTrace
	
	properties
		
		trace_type
		
		use_yaxis_R
		x_data
		y_data
		z_data
		line_type
		marker_type
		marker_size
		line_width
		display_name
		include_in_legend
		
		line_color
		alpha
		marker_color
	end
	
	methods
		function obj=GrafTrace(line)
			
			obj.trace_type = "TRACE_LINE2D";
			
			obj.use_yaxis_R = false;
			obj.x_data = [];
			obj.y_data = [];
			obj.z_data = [];
			obj.line_type = "-";
			obj.marker_type = ".";
			obj.marker_size = 1;
			obj.line_width = 1;
			obj.display_name = "";
			obj.include_in_legend = true;
			
			obj.line_color = [1, 0, 0];
			obj.alpha = 1;
			obj.marker_color = [1, 0, 0];
			
			if exist('line', 'var')
				obj.mimic(line);
			end
			
		end
		
		function obj=mimic_2dline(obj, line)
			
			% Get color and transparency of line
			color_tup = line.Color;
			if numel(color_tup) == 3
				obj.line_color = color_tup;
				obj.alpha = 1;
			elseif numel(color_tup) == 4
				obj.line_color = color_tup(1:3);
				obj.alpha = color_tup(4);
			end
			
			% Get marker color
			if (line.MarkerFaceColor == 'none')
				obj.marker_color = obj.line_color;
			else
				obj.marker_color = line.MarkerFaceColor(1:3); % Remove transparency if present
			end
			
			% Get data
			obj.x_data = line.XData;
			obj.y_data = line.YData;
			% obj.z_data = line.ZData;
			
			% Get line type
			obj.line_type = line.LineStyle;
			
			mlab_marker_code = line.Marker;
			if strcmp(mlab_marker_code, '.')
				obj.marker_type = '.';
			elseif strcmp(mlab_marker_code, '+')
				obj.marker_type = '+';
			elseif strcmp(mlab_marker_code, '^')
				obj.marker_type = '^';
			elseif strcmp(mlab_marker_code, 'v')
				obj.marker_type = 'v';
			elseif strcmp(mlab_marker_code, 'square')
				obj.marker_type = '[]';
			elseif strcmp(mlab_marker_code, 'o')
				obj.marker_type = 'o';
			elseif strcmpi(mlab_marker_code, 'none')
				obj.marker_type = 'None';
			elseif strcmp(mlab_marker_code, 'x')
				obj.marker_type = 'x';
			elseif strcmp(mlab_marker_code, '|')
				obj.marker_type = '|';
			elseif strcmp(mlab_marker_code, '_')
				obj.marker_type = '_';
			elseif strcmp(mlab_marker_code, '*')
				obj.marker_type = '*';
			elseif strcmp(mlab_marker_code, 'pentagram')
				obj.marker_type = '*';
			elseif strcmp(mlab_marker_code, 'hexagram')
				obj.marker_type = '*';
			else
				obj.marker_type = '.';
				
			% Get sizes
			obj.marker_size = line.MarkerSize;
			obj.line_width = line.LineWidth;
			obj.display_name = line.DisplayName;
			
		end
		
	end
	
end
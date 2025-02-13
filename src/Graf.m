classdef Graf
	
	properties
		style
		info
		supertitle
		axes
	end
	
	methods
		
		function obj=Graf(description, conditions, fig)
			
			obj.style = stuct();
			obj.style.supertitle_font = GrafFont;
			obj.style.title_font = GrafFont;
			obj.style.graph_font = GrafFont;
			obj.style.label_font = GrafFont;
			
			obj.info = struct();
			obj.info.description = description;
			obj.info.conditions = conditions;
			obj.info.version = "0.0.0";
			obj.info.source_language = "MATLAB";
			obj.info.source_library = "GrAF";
			
			obj.supertitle = "";
			
			obj.axes = [];
			
			% Check for optional fig to initalize with
			if exists('fig', 'var')
				obj.mimic(fig);
			end
		end
		
		function mimic(fig)
			
			% Scan over figure axes
			for ax = fig.Children
				obj.axes(end+1) = GrafAxis(ax);
			end
			
			
		end
		
	end
	
end
classdef Graf
	
	properties
		style
		info
		supertitle
		axes
	end
	
	methods
		
		function obj=Graf(description, conditions)
			
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
		end
		
		function mimic(fig)
			
			
			
		end
		
	end
	
end
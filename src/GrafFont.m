classdef GrafFont
	properties
		use_native
		size
		font
		bold
		italic
	end
	methods
		function obj=GrafFont()
			obj.use_native = false;
			obj.size = 12;
			obj.font = "sanserif";
			obj.bold = false;
			obj.italic = false;
		end
	end
end
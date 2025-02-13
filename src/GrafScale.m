classdef GrafScale
	properties
		gs
		is_valid
		val_min
		val_max
		tick_list
		minor_tick_list
		tick_label_list
		label
	end
	
	methods
		function obj=GrafScale(gs, scale_id, ax)
			% Scale_id should be:
			% 0 - x
			% 1 - y
			% 2 - z
			
			obj.gs = gs;
			obj.is_valid = false;
			obj.val_min = 0;
			obj.val_max = 1;
			obj.tick_list = [];
			obj.minor_tick_list = [];
			obj.tick_label_list = [];
			obj.label = "";
			
			if exists('ax', 'var')
				obj.mimic(ax, scale_id)
			end
		end
		
		function mimic(obj, ax, scale_id)
			
			if scale_id == 0 % x-axis
				obj.is_valid = true;
				obj.val_min = ax.XLim(1);
				obj.val_max = ax.XLim(2);
				obj.tick_list = ax.XTick;
				obj.minor_tick_list = [];
				obj.tick_label_list = ccell2mat(ax.XTickLabel);
				obj.label = ax.XLabel.String;
			elseif scale_id == 1 % y-axis
				obj.is_valid = true;
				obj.val_min = ax.YLim(1);
				obj.val_max = ax.YLim(2);
				obj.tick_list = ax.YTick;
				obj.minor_tick_list = [];
				obj.tick_label_list = ccell2mat(ax.YTickLabel);
				obj.label = ax.YLabel.String;
			else % z-axis
				obj.is_valid = true;
				obj.val_min = ax.ZLim(1);
				obj.val_max = ax.ZLim(2);
				obj.tick_list = ax.ZTick;
				obj.minor_tick_list = [];
				obj.tick_label_list = ccell2mat(ax.ZTickLabel);
				obj.label = ax.ZLabel.String;
			end
			
		end
	end
end
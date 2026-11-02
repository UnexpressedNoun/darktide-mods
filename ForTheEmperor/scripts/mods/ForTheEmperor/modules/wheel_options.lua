local ChatManagerConstants = require("scripts/foundation/managers/chat/chat_manager_constants")
local VOQueryConstants = require("scripts/settings/dialogue/vo_query_constants")

local ChannelTags = ChatManagerConstants.ChannelTag

local WHEEL_OPTION =
	table.enum("ammo", "attention", "emperor", "enemy", "health", "help", "location", "no", "thanks", "yes", "take_this", "i_need_that", "daemonhost", "sorry")

local wheel_options = {
	[WHEEL_OPTION.ammo] = {
		display_name = "loc_communication_wheel_display_name_need_ammo",
		icon = "content/ui/materials/hud/communication_wheel/icons/ammo",
		voice_event_data = {
			voice_tag_concept = VOQueryConstants.concepts.on_demand_com_wheel,
			voice_tag_id = VOQueryConstants.trigger_ids.com_wheel_vo_need_ammo,
		},
		chat_message_data = {
			text = "loc_communication_wheel_need_ammo",
			channel = ChannelTags.MISSION,
		},
	},
	[WHEEL_OPTION.attention] = {
		display_name = "loc_communication_wheel_display_name_attention",
		icon = "content/ui/materials/hud/communication_wheel/icons/attention",
		tag_type = "location_attention",
		voice_event_data = {
			voice_tag_concept = VOQueryConstants.concepts.on_demand_com_wheel,
			voice_tag_id = VOQueryConstants.trigger_ids.com_wheel_vo_over_here,
		},
	},
	[WHEEL_OPTION.emperor] = {
		display_name = "loc_for_the_emperor",
		icon = "content/ui/materials/icons/system/escape/achievements",
		voice_event_data = {
			voice_tag_concept = VOQueryConstants.concepts.on_demand_com_wheel,
			voice_tag_id = VOQueryConstants.trigger_ids.com_wheel_vo_for_the_emperor,
		},
	},
	[WHEEL_OPTION.enemy] = {
		display_name = "loc_communication_wheel_display_name_enemy",
		icon = "content/ui/materials/hud/communication_wheel/icons/enemy",
		tag_type = "location_threat",
		voice_event_data = {
			voice_tag_concept = VOQueryConstants.concepts.on_demand_com_wheel,
			voice_tag_id = VOQueryConstants.trigger_ids.com_wheel_vo_enemy_over_here,
		},
	},
	[WHEEL_OPTION.daemonhost] = {
		display_name = "loc_communication_wheel_display_name_deamonhost",
		icon = "content/ui/materials/hud/communication_wheel/icons/enemy",
		tag_type = "location_threat",
		voice_event_data = {
			voice_tag_concept = VOQueryConstants.concepts.on_demand_com_wheel,
			voice_tag_id = VOQueryConstants.trigger_ids.com_wheel_vo_enemy_daemonhost_witch,
		},
		chat_message_data = {
			text = "ccw_command_daemonhost",
			channel = ChannelTags.MISSION,
		},
	},
	[WHEEL_OPTION.i_need_that] = {
		display_name = "loc_communication_wheel_display_name_i_need_that",
		icon = "content/ui/materials/hud/interactions/icons/help",
		voice_event_data = {
			voice_tag_concept = VOQueryConstants.concepts.on_demand_com_wheel,
			voice_tag_id = VOQueryConstants.trigger_ids.com_wheel_vo_need_that,
		},
		chat_message_data = {
			text = "ccw_command_i_need_that",
			channel = ChannelTags.MISSION,
		},
	},
	[WHEEL_OPTION.take_this] = {
		display_name = "loc_communication_wheel_display_name_take_this",
		icon = "content/ui/materials/hud/interactions/icons/help",
		tag_type = "location_attention",
		voice_event_data = {
			voice_tag_concept = VOQueryConstants.concepts.on_demand_com_wheel,
			voice_tag_id = VOQueryConstants.trigger_ids.com_wheel_vo_take_this,
		},
		chat_message_data = {
			text = "ccw_take_this",
			channel = ChannelTags.MISSION,
		},
	},
	[WHEEL_OPTION.sorry] = {
		display_name = "loc_communication_wheel_display_name_sorry",
		icon = "content/ui/materials/hud/communication_wheel/icons/thanks",
		tag_type = "",
		voice_event_data = {
			voice_tag_concept = VOQueryConstants.concepts.on_demand_com_wheel,
			voice_tag_id = "",
		},
		chat_message_data = {
			text = "ccw_sorry",
			channel = ChannelTags.MISSION,
		},
	},
	[WHEEL_OPTION.health] = {
		display_name = "loc_communication_wheel_display_name_need_health",
		icon = "content/ui/materials/hud/communication_wheel/icons/health",
		voice_event_data = {
			voice_tag_concept = VOQueryConstants.concepts.on_demand_com_wheel,
			voice_tag_id = VOQueryConstants.trigger_ids.com_wheel_vo_need_health,
		},
		chat_message_data = {
			text = "loc_communication_wheel_need_health",
			channel = ChannelTags.MISSION,
		},
	},
	[WHEEL_OPTION.help] = {
		display_name = "loc_communication_wheel_need_help",
		icon = "content/ui/materials/hud/interactions/icons/help",
		voice_event_data = {
			voice_tag_concept = VOQueryConstants.concepts.on_demand_com_wheel,
			voice_tag_id = "",
		},
	},
	[WHEEL_OPTION.location] = {
		display_name = "loc_communication_wheel_display_name_location",
		icon = "content/ui/materials/hud/communication_wheel/icons/location",
		tag_type = "location_ping",
		voice_event_data = {
			voice_tag_concept = VOQueryConstants.concepts.on_demand_com_wheel,
			voice_tag_id = VOQueryConstants.trigger_ids.com_wheel_vo_lets_go_this_way,
		},
	},
	[WHEEL_OPTION.no] = {
		icon = "content/ui/materials/icons/list_buttons/cross",
		display_name = "loc_social_menu_confirmation_popup_decline_button",
		voice_event_data = {
			voice_tag_concept = VOQueryConstants.concepts.on_demand_com_wheel,
			voice_tag_id = VOQueryConstants.trigger_ids.com_wheel_vo_no,
		},
	},
	[WHEEL_OPTION.thanks] = {
		display_name = "loc_communication_wheel_display_name_thanks",
		icon = "content/ui/materials/hud/communication_wheel/icons/thanks",
		voice_event_data = {
			voice_tag_concept = VOQueryConstants.concepts.on_demand_com_wheel,
			voice_tag_id = VOQueryConstants.trigger_ids.com_wheel_vo_thank_you,
		},
		chat_message_data = {
			text = "loc_communication_wheel_thanks",
			channel = ChannelTags.MISSION,
		},
	},
	[WHEEL_OPTION.yes] = {
		display_name = "loc_social_menu_confirmation_popup_confirm_button",
		icon = "content/ui/materials/icons/list_buttons/check",
		voice_event_data = {
			voice_tag_concept = VOQueryConstants.concepts.on_demand_com_wheel,
			voice_tag_id = VOQueryConstants.trigger_ids.com_wheel_vo_yes,
		},
	},
}

return {
	WHEEL_OPTION = WHEEL_OPTION,
	wheel_options = wheel_options,
}

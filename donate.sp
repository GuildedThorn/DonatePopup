#include <sourcemod>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo = {
    name        = "DonatePopup",
    author      = "GuildedThorm",
    description = "A plugin that shows the donations links page in a web broweser after running !donate",
    version     = "1.0",
    url         = "https://guildedthorn.com/"
};

public void OnPluginStart()
{
    RegConsoleCmd("!donate", Print_Donation);
}


public Action Print_Donation(int client, int args)
{
    if (IsClientInGame(client) && !IsFakeClient(client)){
    	//Change Title and url params to the needed changes (Hardcoded because config is unecessary)
        ShowMOTDPanel(client, "Donate Here", "Edit Url Here!", 2);
    }
    return Plugin_Handled;
}

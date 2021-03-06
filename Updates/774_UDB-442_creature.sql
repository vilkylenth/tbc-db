-- Gnome Citizen 
-- missing added - TBC-DB free guids reused
DELETE FROM creature WHERE guid IN (137933,137934,137935,137936,137937,137938,137939,137940,137941);
DELETE FROM creature_addon WHERE guid IN (137933,137934,137935,137936,137937,137938,137939,137940,137941);
DELETE FROM creature_movement WHERE id IN (137933,137934,137935,137936,137937,137938,137939,137940,137941);
DELETE FROM game_event_creature WHERE guid IN (137933,137934,137935,137936,137937,137938,137939,137940,137941);
DELETE FROM game_event_creature_data WHERE guid IN (137933,137934,137935,137936,137937,137938,137939,137940,137941);
DELETE FROM creature_battleground WHERE guid IN (137933,137934,137935,137936,137937,137938,137939,137940,137941);
DELETE FROM creature_linking WHERE guid IN (137933,137934,137935,137936,137937,137938,137939,137940,137941) 
OR master_guid IN (137933,137934,137935,137936,137937,137938,137939,137940,137941);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
-- respawntime - 25sec re. for event
(137933,39623,0,1,0,0,-4814.49,-1296.1,501.868,2.18166,25,0,0,42,0,0,0),
(137934,39623,0,1,0,0,-4842.38,-1245.92,501.771,5.39307,25,0,0,42,0,0,0),
(137935,39623,0,1,0,0,-4834.71,-1245.82,501.81,4.57276,25,0,0,42,0,0,0),
(137936,39623,0,1,0,0,-4840.55,-1246.74,501.791,3.33358,25,0,0,42,0,0,0),
(137937,39623,0,1,0,0,-4816.85,-1304.51,501.868,0.506146,25,0,0,42,0,0,0),
(137938,39623,0,1,0,0,-4815.47,-1303.94,501.868,3.54302,25,0,0,42,0,0,0),
(137939,39623,0,1,0,0,-4818.12,-1252.02,501.874,0.261799,25,0,0,42,0,0,0),
(137940,39623,0,1,0,0,-4815.91,-1251.376,501.896,3.788,25,0,0,42,0,0,0),
(137941,39623,0,1,0,0,-4842.37,-1247.4,501.785,0.923429,25,0,0,42,0,0,0);
DELETE FROM creature_addon WHERE guid = 137933;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(137933,0,3,0,0,0,0,NULL);
-- movement
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (137934,137936,137937,137938,137939,137940,137941); 
DELETE FROM creature_movement WHERE id IN (137934,137936,137937,137938,137939,137940,137941);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES  
-- #1st group
(137937,1,-4816.85,-1304.51,501.868,10000,3962301,0.506146,0,0),
(137938,1,-4815.47,-1303.94,501.868,10000,3962302,3.54302,0,0),
-- #2nd group
(137939,1,-4818.12,-1252.02,501.874,12000,3962301,0.261799,0,0),
(137940,1,-4815.91,-1251.376,501.896,12000,3962302,3.788,0,0),
-- #3rd group
(137934,1,-4842.38,-1245.92,501.771,10000,3962301,5.39307,0,0),
(137936,1,-4840.55,-1246.74,501.791,10000,3962302,3.33358,0,0),
(137941,1,-4842.37,-1247.4,501.785,14000,3962301,0.923429,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3962301,3962302); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(3962301,3,1,1,0,0,0,0,273,274,6,11,0,0,0,0,''),
(3962302,7,1,273,0,0,0,0,6,1,11,274,0,0,0,0,'');



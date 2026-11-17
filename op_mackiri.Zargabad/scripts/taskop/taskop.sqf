Params ["_target", "_caller", "_id"];
task_OP = true;
PublicVariable "task_OP";

[_target, _id] remoteExecCall ["removeAction", (allPlayers - (entities "HeadlessClient_F"))];
Sleep 2;
titleText ["Diese Dokumente könnte Mütterchen Russland interessieren!","PLAIN DOWN"];
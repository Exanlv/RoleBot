import 'package:nyxx/nyxx.dart';

import 'classes/Command.dart';
import 'classes/ServerConfig.dart';
import 'commands/public/HelpCommand.dart';

List<Command> commands = [
	new Command(
		['HELP'],
        (MessageEvent message_event, ServerConfig server_config, List<String> args, Map<String, String> env) => new HelpCommand(message_event, server_config, args, env),
		5
	),
];

/**
 * Eval
 * 
 * Log-Channel
 *  Set
 *  Remove
 *  List
 * Self-Assign
 *  Role
 *      Add
 *      Remove
 *      List
 *  Emote
 *      Add
 *      Remove
 *      List
 *  Category
 *      Add
 *      Remove
 *      List
 *      Swap
 *      Change
 * Active Channels
 *  Add
 *  Remove
 *  List
 * Mod-Roles
 *  Add
 *  Remove
 *  List
 * Prefix
 *  Set
 * Public
 *  Roles
 *  Getrole
 *  Removerole
 *  Help
 */

void test(MessageEvent message_event) {
    message_event.message.channel.send(content: 'HI THERE!!');
}

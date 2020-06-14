
import 'package:nyxx/nyxx.dart';
import '../classes/ServerConfig.dart';
import '../commands.dart' show commands;
import '../classes/Command.dart';


void handle_message(MessageEvent message_event, Map<String, String> env) async {
	List<String> args = message_event.message.content.split(" ");

    Command command = find_command(args, commands);

    if (command == null) {
        return;
    }

    try {
        dynamic command_instance = command.command(message_event, new ServerConfig(), args, env);
        command_instance.handle();
    } catch (e) {
        print(e);
    }
}

Command find_command(List<String> args, List<Command> commands) {
    Command command_to_use;

    for (int i = 0; i < commands.length; i++) {
        if (commands[i].trigger.contains(args[0].toUpperCase())) {
            command_to_use = commands[i];

            break;
        }
    }

    if (command_to_use != null && command_to_use.sub_commands.length > 0 && args.length > 1) {
        args.removeAt(0);
        Command new_command = find_command(args, command_to_use.sub_commands);

        if (new_command != null) {
            command_to_use = new_command;
        }
    }

    return command_to_use;
}
import 'package:nyxx/nyxx.dart';

import '../../classes/ServerConfig.dart';
import '../BaseCommand.dart';

class HelpCommand extends BaseCommand {
    HelpCommand(
        MessageEvent message_event,
        ServerConfig server_config,
        List<String> args,
        Map<String, String> env
    ): super(
        message_event,
        server_config,
        args,
        env
    );

    void handle() {
        this.message_event.message.channel.send(content: 'Hi!');
    }
}
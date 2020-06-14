import 'package:nyxx/nyxx.dart';

import '../classes/ServerConfig.dart';

class BaseCommand {
    MessageEvent message_event;
    ServerConfig server_config;
    List<String> args;
    Map<String, String> env;
    
    BaseCommand(
        MessageEvent message_event,
        ServerConfig server_config,
        List<String> args,
        Map<String, String> env
    ) {
        this.message_event = message_event;
        this.server_config = server_config;
        this.args = args;
        this.env = env;
    }
}
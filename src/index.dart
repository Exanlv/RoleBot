import 'package:nyxx/Vm.dart';
import 'package:nyxx/nyxx.dart';

import 'package:dotenv/dotenv.dart' show load, env;

import 'handlers/MessageHandler.dart';

void main() {
	load('.env');
	configureNyxxForVM();

	Nyxx bot = Nyxx(env['DISCORD']);

	bot.onMessageReceived.listen((MessageEvent event) {
        handle_message(event, env);
	});
}

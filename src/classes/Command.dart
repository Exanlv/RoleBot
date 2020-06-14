class Command {
	List<String> trigger;
	var command;
	int permission;
	List<Command> sub_commands = [];

	Command(List<String> trigger, command, int permission, [List<Command> sub_commands]) {
		this.trigger = trigger;
		this.command = command;
		this.permission = permission;

		if (sub_commands != null) {
			this.sub_commands = sub_commands;
		}
	}
}
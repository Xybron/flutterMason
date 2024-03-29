import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context, {List<String>? arguments}) async {
  var targetDirectory = Directory("./lib");

  // List of needed bricks
  List<Brick> bricks = [
    Brick(
        location: BrickLocation(
            path: "${Directory.current.path}/application_layer",
            version: "0.1.0"),
        name: "application"),
    Brick(
        location: BrickLocation(
            path: "${Directory.current.path}/domain_layer", version: "0.1.0"),
        name: "domain"),
    Brick(
        location: BrickLocation(
            path: "${Directory.current.path}/presentation_layer",
            version: "0.1.0"),
        name: "presentation"),
    Brick(
        location: BrickLocation(
            path: "${Directory.current.path}/infrastructure_layer",
            version: "0.1.0"),
        name: "infra"),
  ];

  try {
    // Generate the various layer bricks
    bricks.forEach((brick) async {
      // Init a brick generator
      var generator = await MasonGenerator.fromBrick(
        brick,
      );

      // Generate a brick to the specified target directory
      await generator.generate(DirectoryGeneratorTarget(targetDirectory),
          vars: context.vars, logger: context.logger);

      context.logger.success(
          "${context.vars['name']} ${brick.name} layer generated in ${targetDirectory.path}.");
    });

    // TODO!: Must implement this like a promise
    context.logger.success("${context.vars['name']} feature completed.");
  } catch (e) {
    context.logger.err(e.toString());
  }
}

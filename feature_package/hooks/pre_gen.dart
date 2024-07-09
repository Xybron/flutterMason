import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context, {List<String>? arguments}) async {
  final targetDirectory = Directory("./lib/feature");

  // List of needed bricks
  List<Brick> bricks = [
    Brick(
      location: BrickLocation(
        git: GitPath(
          'https://github.com/Xybron/flutterMason.git',
          path: 'application_layer',
        ),
      ),
      name: 'application',
    ),
    Brick(
      location: BrickLocation(
        git: GitPath(
          'https://github.com/Xybron/flutterMason.git',
          path: 'domain_layer',
        ),
      ),
      name: 'domain',
    ),
    Brick(
      location: BrickLocation(
        git: GitPath(
          'https://github.com/Xybron/flutterMason.git',
          path: 'presentation_layer',
        ),
      ),
      name: 'presentation',
    ),
    Brick(
      location: BrickLocation(
        git: GitPath(
          'https://github.com/Xybron/flutterMason.git',
          path: 'infrastructure_layer',
        ),
      ),
      name: 'infra',
    ),
  ];

  try {
    // Generate the various layer bricks
    for (var brick in bricks) {
      // Init a brick generator
      var generator = await MasonGenerator.fromBrick(brick);

      // Generate a brick to the specified target directory
      await generator.generate(
        DirectoryGeneratorTarget(targetDirectory),
        vars: context.vars,
        logger: context.logger,
      );

      context.logger.success(
          "${context.vars['name']} ${brick.name} layer generated in ${targetDirectory.path}.");
    }

    // Run the build_runner command after all bricks are generated
    var result =
        await Process.run('dart', ['pub', 'run', 'build_runner', 'build']);

    if (result.exitCode == 0) {
      context.logger.success('build_runner build completed successfully.');
    } else {
      context.logger.err('build_runner build failed:\n${result.stderr}');
    }

    context.logger.success("${context.vars['name']} feature completed.");
  } catch (e) {
    context.logger.err(e.toString());
  }
}

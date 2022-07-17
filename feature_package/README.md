# LAYER PACKAGE
A brick to create your layer package including your application, presentation, domain, and infrastructure layer!

This brick makes use of the MasonGenerator and wraps 4 other bricks to create a fully fledged package.

## How to use 🚀

```
mason make layer_package --package_name "authentication repository" --package_description "Authentication Package"
```

## Variables ✨

| Variable              | Description             | Default                       | Type     |
| --------------------- | ----------------------- | ----------------------------- | -------- |
| `package_name`        | The name of the package | data repository               | `string` |
| `package_description` | The package description | A default package description | `string` |

## Bricks Used 🧱

| Brick                                                | Version |
| ---------------------------------------------------- | ------- |
| [service](https://brickhub.dev/bricks/service/0.0.3) | 0.0.3   |
| [model](https://brickhub.dev/bricks/model/0.3.5)     | 0.3.5   |

## Outputs 📦

# Nevermore Game Template
Added using [unrooot/nevermore-templates](https://github.com/unrooot/nevermore-templates).

Starting point to build projects that are powered by [NevermoreEngine](https://github.com/Quenty/NevermoreEngine).

---

## Prerequesites
It is recommended that you are somewhat familiar with how to use the command-line and know how to use Rojo.

To quote the [official Nevermore documentation](https://quenty.github.io/NevermoreEngine/docs/intro):

> ### "Getting started with Nevermore is not easy."

## Dependencies
Install the following applications and make sure you can run them in your operating system's terminal:
* [npm (included with node.js)](https://nodejs.org/en/download/)
* [aftman](https://github.com/LPGhatguy/aftman) (or [foreman](https://github.com/Roblox/foreman))
* [rojo](https://rojo.space/)

You can download aftman with `cargo`, which is included with the the [Rust programming language](https://rustup.rs/).
```sh
cargo install aftman
```

## Setup
Download or clone this repository onto your computer.
```
git clone https://github.com/unrooot/nevermore-templates
```

Once you've done this, create a folder that will serve as your project's root directory. If you are making a game, copy/paste the contents of the `game` folder from this repository into the new project folder that you created.

## Configuration
These are the files you should pay attention to:

* `./default.project.json`
	- This is the file that tells Rojo where to sync the files on your computer into Studio. The included files have been mostly pre-configured, but make sure to update the project name.

* `./package.json`
	- Nevermore packages are managed with [npm](https://www.npmjs.com/). This file stores your project's dependencies.

* `./aftman.toml` or `./foreman.toml`
	- aftman/foreman controls the version of rojo that you're using.

The `modules` directory can have Client, Shared, and Server folders which will replicate any modules inside of them accordingly.

* `modules/Client/GameServiceClient.lua` and `modules/Server/GameServiceServer.lua`
	- Initializes services on the client/server.

## Nevermore Usage
Nevermore is designed to use npm to manage packages. You can install some of the most common ones in with the command:
```sh
# example
npm install @quenty/package

# common packages
npm install @quenty/maid
npm install @quenty/signal
npm install @quenty/binder
npm install @quenty/rx
npm install @quenty/blend
```
If you're serving a Nevermore project for the first time that has dependencies, install them with:
```sh
npm install
```

### Serve to Roblox game:
Serve rojo from your project's root directory. You can do so with:
```sh
rojo serve
```
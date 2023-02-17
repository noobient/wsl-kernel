# wsl-kernel

## Usage

Build the Docker image with:

```
./docker-build.sh
```

Run the WSL kernel builder container with:

```
./docker-run.sh
```

The resulting kernel image and modules (if any) will be found in `C:\wsl\new`.

If everything went well, rename `C:\wsl\new` to `C:\wsl\current`. To tell WSL to
use this kernel, copy the provided `.wslconfig` file to your `%UserProfile%`
directory.

To "reboot" into your new kernel, open admin PowerShell, then issue:

```
wsl --shutdown
```

Then open a WSL terminal again which causes it to (re)start.

You can specify which loadables and builtins to compile via the `kernel.conf`
file. Yeah, it's a mess at the moment, it will be cleaned up sometime.

**Note:** if you turn certain modules into loadables, you may break Docker
Desktop, as it depends on certain modules (especially network-related ones), and
it assumes all of them are builtins, as they normally are. Therefore it won't
even try to load them and thus it never starts up again. In this case just
disable your custom kernel via `.wslconfig`, or use an other version that still
works with Docker Desktop. Also check out the provided `wsl.conf`.

**Note:** if you convert your distro to systemd via `wsl.conf`, you must ensure
you open a WSL terminal first, before starting Docker Desktop.

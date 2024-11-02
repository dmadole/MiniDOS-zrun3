# MiniDOS-zrun3

This is a Z-Machine interpreter for Mini/DOS originally written by Mike Riley for Elf/OS that I have updated with a newly-designed virtual memory scheme to improve performance. In looking into the performance issues with his version, I determined that the virtual memory implementation was the greatest bottleneck and so addressed this first in efforts to improve speed.

On a machine with a fast disk subsystem, this update approximately doubles the game speed, reducing command response times from 4-6 seconds to 2-3 seconds versus the last version[^1] published by Mike.

Besides steamlining the overall virtual memory deisgn, this also includes changes to perform story file reads using the incidental behavior of O_SEEK to load the sector into the DTA, rather than using O_READ. This had been previously implemented by Mike, but his sources were not published, so this fork includes a complete re-implementation as part of the new design.

While save and restore appear to superficially work in the version, the way they are implemented in the original needs to be updated to work wit varied memory sizes and reviewed in general.

This version is compatible with both Mini/DOS and Elf/OS.

### History

Zork games, originally published by Infocom, were available for a number of microcomputers, and were implemented with a common "story" file, which was a program that ran on a virtual machines called the "Z-Machine." Each release for a different computer simply was packaged with an interpreter for that computer.

There is a specification for the Z-Machine here that is very helpful in understanding how this is implemented:

https://inform-fiction.org/zmachine/standards/z1point1

The original Zork versions can be downloaded here, from which the story files (zork1.dat, zork2.dat, zork3.dat) can be extracted from the ZIP archives:

http://infocom-if.org/downloads/downloads.html

### Footnotes

[^1]: https://groups.io/g/cosmacelf/message/36186

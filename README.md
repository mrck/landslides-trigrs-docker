# landslides-trigrs-docker
Provides a Docker image using a docker file for executing landslides-trigrs.

## Project Dependencies

### TRIGRS

The project TRIGRS is courtesy of the U.S. Geological Survey. The project is hosted at [https://code.usgs.gov/usgs/landslides-trigrs/](https://code.usgs.gov/usgs/landslides-trigrs/), and is licensed as [public domain](https://code.usgs.gov/usgs/landslides-trigrs/blob/master/LICENSE.md).

Visit the USGS at [https://usgs.gov](https://usgs.gov).

### MPICH

TRIGRS requires MPICH, which is not currently available as a package in the used base image. This has been added as a layer, compiled from source. See the project page at [http://www.mpich.org/](http://www.mpich.org/).

### Docker image
The docker image uses `centos` as base image.

### Used yum packages
Used packages (with its dependencies):
gfortran gcc-gfortran gdb make wget gcc-c++ gsl gsl-devel

Not all packages may be needed in the final image. A multi-stage build could create a smaller image, by removing everything that is needed for initial compilation.

## Automated checks
### Build Status
AppVeyor

[![Build status](https://ci.appveyor.com/api/projects/status/23o9temke1x1p3u3?svg=true)](https://ci.appveyor.com/project/mrck/landslides-trigrs-docker)

### Licensing
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fmrck%2Flandslides-trigrs-docker.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fmrck%2Flandslides-trigrs-docker?ref=badge_shield)
[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](https://opensource.org/licenses/MIT)

Used dependencies and licenses are documented in [NOTICE.md](NOTICE.md)

[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fmrck%2Flandslides-trigrs-docker.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Fmrck%2Flandslides-trigrs-docker?ref=badge_large)

### Code Conventions
[![Code Factor](https://www.codefactor.io/repository/github/mrck/landslides-trigrs-docker/badge?style=plastic)](https://www.codefactor.io/repository/github/mrck/landslides-trigrs-docker/badge?style=plastic)
[![Reviewed by Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com)

### Dependencies
[![Dependabot](https://badgen.net/badge/Dependabot/enabled/green?icon=dependabot)](https://dependabot.com/)

## Contribution

You may contribute to this project by creating issues and pull-requests. Please refer to [Code of Conduct](CODE_OF_CONDUCT.md) and [Contributing](CONTRIBUTING.md) for more details.


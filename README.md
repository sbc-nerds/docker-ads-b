# Docker adsb
Docker containers for adsb receiving and submission to multiple websites

Currently supporting inputs from any dump1090 compatible device including:
* Any RTLSDR USB device
* Any network AVR or BEAST device
* Any serial AVR or BEAST device

supporting outputs to the following sites:
* https://adsbexchange.com
* http://www.adsbhub.org
* https://flightaware.com
* https://wwww.flightradar24.com
* https://opensky-network.org
* https://planefinder.net

and local viewing via:
* planefinder web UI
* VirtualRadar web UI

# Status
| Branch | Status |
|--------|--------|
| latest | [![Build Status](https://travis-ci.org/bradsjm/adsb.svg?branch=latest)](https://travis-ci.org/bradsjm/adsb) |
| dev    | [![Build Status](https://travis-ci.org/bradsjm/adsb.svg?branch=dev)](https://travis-ci.org/bradsjm/adsb) |

| dump1090 | adsbexchange | adsbexchange-mlat | adsbhub | flightaware | flightradar24 | openskynetwork | planefinder | virtualradar |
|----------|--------------|-------------------|---------|-------------|---------------|----------------|-------------|--------------|
| [![](https://images.microbadger.com/badges/image/bradsjm/adsb-dump1090.svg)](https://microbadger.com/images/bradsjm/adsb-dump1090)   | [![](https://images.microbadger.com/badges/image/bradsjm/adsb-adsbexchange.svg)](https://microbadger.com/images/bradsjm/adsb-adsbexchange)   | [![](https://images.microbadger.com/badges/image/bradsjm/adsb-adsbexchange-mlat.svg)](https://microbadger.com/images/bradsjm/adsb-adsbexchange-mlat)   | [![](https://images.microbadger.com/badges/image/bradsjm/adsb-adsbhub.svg)](https://microbadger.com/images/bradsjm/adsb-adsbhub)   | [![](https://images.microbadger.com/badges/image/bradsjm/adsb-flightaware.svg)](https://microbadger.com/images/bradsjm/adsb-flightaware)   | [![](https://images.microbadger.com/badges/image/bradsjm/adsb-flightradar24.svg)](https://microbadger.com/images/bradsjm/adsb-flightradar24)   | [![](https://images.microbadger.com/badges/image/bradsjm/adsb-openskynetwork.svg)](https://microbadger.com/images/bradsjm/adsb-openskynetwork)   | [![](https://images.microbadger.com/badges/image/bradsjm/adsb-planefinder.svg)](https://microbadger.com/images/bradsjm/adsb-planefinder)   | [![](https://images.microbadger.com/badges/image/bradsjm/adsb-virtualradar.svg)](https://microbadger.com/images/bradsjm/adsb-virtualradar)   |
| [![](https://images.microbadger.com/badges/version/bradsjm/adsb-dump1090.svg)](https://microbadger.com/images/bradsjm/adsb-dump1090) | [![](https://images.microbadger.com/badges/version/bradsjm/adsb-adsbexchange.svg)](https://microbadger.com/images/bradsjm/adsb-adsbexchange) | [![](https://images.microbadger.com/badges/version/bradsjm/adsb-adsbexchange-mlat.svg)](https://microbadger.com/images/bradsjm/adsb-adsbexchange-mlat) | [![](https://images.microbadger.com/badges/version/bradsjm/adsb-adsbhub.svg)](https://microbadger.com/images/bradsjm/adsb-adsbhub) | [![](https://images.microbadger.com/badges/version/bradsjm/adsb-flightaware.svg)](https://microbadger.com/images/bradsjm/adsb-flightaware) | [![](https://images.microbadger.com/badges/version/bradsjm/adsb-flightradar24.svg)](https://microbadger.com/images/bradsjm/adsb-flightradar24) | [![](https://images.microbadger.com/badges/version/bradsjm/adsb-openskynetwork.svg)](https://microbadger.com/images/bradsjm/adsb-openskynetwork) | [![](https://images.microbadger.com/badges/version/bradsjm/adsb-planefinder.svg)](https://microbadger.com/images/bradsjm/adsb-planefinder) | [![](https://images.microbadger.com/badges/version/bradsjm/adsb-virtualradar.svg)](https://microbadger.com/images/bradsjm/adsb-virtualradar) |
| [![](https://images.microbadger.com/badges/commit/bradsjm/adsb-dump1090.svg)](https://microbadger.com/images/bradsjm/adsb-dump1090)  | [![](https://images.microbadger.com/badges/commit/bradsjm/adsb-adsbexchange.svg)](https://microbadger.com/images/bradsjm/adsb-adsbexchange)  | [![](https://images.microbadger.com/badges/commit/bradsjm/adsb-adsbexchange-mlat.svg)](https://microbadger.com/images/bradsjm/adsb-adsbexchange-mlat)  | [![](https://images.microbadger.com/badges/commit/bradsjm/adsb-adsbhub.svg)](https://microbadger.com/images/bradsjm/adsb-adsbhub)  | [![](https://images.microbadger.com/badges/commit/bradsjm/adsb-flightaware.svg)](https://microbadger.com/images/bradsjm/adsb-flightaware)  | [![](https://images.microbadger.com/badges/commit/bradsjm/adsb-flightradar24.svg)](https://microbadger.com/images/bradsjm/adsb-flightradar24)  | [![](https://images.microbadger.com/badges/commit/bradsjm/adsb-openskynetwork.svg)](https://microbadger.com/images/bradsjm/adsb-openskynetwork)  | [![](https://images.microbadger.com/badges/commit/bradsjm/adsb-planefinder.svg)](https://microbadger.com/images/bradsjm/adsb-planefinder)  | [![](https://images.microbadger.com/badges/commit/bradsjm/adsb-virtualradar.svg)](https://microbadger.com/images/bradsjm/adsb-virtualradar)  |
| [![Docker Pulls](https://img.shields.io/docker/pulls/bradsjm/adsb-dump1090.svg)](https://hub.docker.com/r/bradsjm/adsb-dump1090/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/bradsjm/adsb-adsbexchange.svg)](https://hub.docker.com/r/bradsjm/adsb-adsbexchange/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/bradsjm/adsb-adsbexchange-mlat.svg)](https://hub.docker.com/r/bradsjm/adsb-adsbexchange-mlat/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/bradsjm/adsb-adsbhub.svg)](https://hub.docker.com/r/bradsjm/adsb-adsbhub/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/bradsjm/adsb-flightaware.svg)](https://hub.docker.com/r/bradsjm/adsb-flightaware/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/bradsjm/adsb-flightradar24.svg)](https://hub.docker.com/r/bradsjm/adsb-flightradar24/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/bradsjm/adsb-openskynetwork.svg)](https://hub.docker.com/r/bradsjm/adsb-openskynetwork/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/bradsjm/adsb-planefinder.svg)](https://hub.docker.com/r/bradsjm/adsb-planefinder/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/bradsjm/adsb-virtualradar.svg)](https://hub.docker.com/r/bradsjm/adsb-virtualradar/)    |

# How to use
## Edit variables
Edit the 'variables' files with the required keys and locations for each of the services

### variables-dump1090.env
Nothing to configure here

### variables-adsbexchange.env
* ADSBEXCHANGE_PORT

### variables-adsbexchange-mlat.env
* MLAT_CLIENT_LATITUDE
* MLAT_CLIENT_LONGITUDE
* MLAT_CLIENT_ALTITUDE
* MLAT_CLIENT_USER

### variables-adsbhub.env
Nothing to configure here

## variables-flightware.env
Go to https://flightaware.com/adsb/piaware/claim
* FLIGHTAWARE_USERNAME
* FLIGHTAWARE_PASSWORD
* FLIGHTAWARE_FEEDER_ID

### variables-flightradar24.env
* FR24FEED_KEY: Your key. If you do not have one please run the client on any PC and enter the key here
* FR24FEED_LATITUDE
* FR24FEED_LONGITUDE
* FR24FEED_ALTITUDE

### variables-openskynetwork.env
Nothing to configure here

### variables-planefinder.env
* PLANEFINDER_SHARECODE
* PLANEFINDER_LATITUDE
* PLANEFINDER_LONGITUDE

### variables-virtualradar.env
* VIRTUALRADAR_DEFAULT_ADMIN_USER
* VIRTUALRADAR_DEFAULT_ADMIN_PASSWORD


## Docker Hub Links
* https://hub.docker.com/r/bradsjm/adsb-dump1090/
* https://hub.docker.com/r/bradsjm/adsb-adsbexchange/
* https://hub.docker.com/r/bradsjm/adsb-adsbexchange-mlat/
* https://hub.docker.com/r/bradsjm/adsb-adsbhub/
* https://hub.docker.com/r/bradsjm/adsb-flightaware/
* https://hub.docker.com/r/bradsjm/adsb-flightradar24/
* https://hub.docker.com/r/bradsjm/adsb-openskynetwork/
* https://hub.docker.com/r/bradsjm/adsb-planefinder/
* https://hub.docker.com/r/bradsjm/adsb-virtualradar/

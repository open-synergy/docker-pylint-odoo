# pylint-odoo

[![](https://api.travis-ci.org/open-synergy/docker-pylint-odoo.svg)](https://travis-ci.org/open-synergy/docker-pylint-odoo)
[![](https://images.microbadger.com/badges/version/osind/pylint-odoo.svg)](https://microbadger.com/images/osind/pylint-odoo "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/osind/pylint-odoo.svg)](https://microbadger.com/images/osind/pylint-odoo "Get your own image badge on microbadger.com")

# Usage:

    # must mount the local folder to /apps in container.
    docker run -ti --rm -v $(pwd):/code osind/pylint-odoo:latest local_file.py

    # run pylint-odoo container as command
    alias pylint-odoo="docker run -ti --rm -v $(pwd):/code osind/pylint-odoo:latest"
    pylint-odoo --help
    pylint-odoo local_file.py

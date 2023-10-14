import os
import logging
import logging.handlers


def setup_logging(loglevel):
    if loglevel is None:
        loglevel = os.environ.get("SD_WEBUI_LOG_LEVEL")

    if loglevel:
        log_level = getattr(logging, loglevel.upper(), None) or logging.INFO
        # create console handler
        sh = logging.StreamHandler()
        # create a file handler. single file size <= 5 MiB
        rfh = logging.handlers.RotatingFileHandler('logs/sd.log', maxBytes=5*1024*1024)
        logging.basicConfig(
            level=log_level,
            format='%(asctime)s %(levelname)s [%(name)s] %(message)s',
            datefmt='%Y-%m-%d %H:%M:%S',
            handlers=[sh, rfh],
        )


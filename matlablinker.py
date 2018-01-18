import sys
import time
import logging
from watchdog.observers import Observer
from watchdog.events import LoggingEventHandler

filepath = str(sys.argv[0])
ctr = 0
variable = 25 %% its length is Variable based on Computer name
curdir = filepath[:variable]
print curdir
if __name__ == "__main__":
    logging.basicConfig(filename='logger.txt',level=logging.INFO,
                        format='%(asctime)s - %(message)s',
                        datefmt='%Y-%m-%d %H:%M:%S')
    path = sys.argv[1] if len(sys.argv) > 1 else '.'
    event_handler = LoggingEventHandler()
    observer = Observer()
    observer.schedule(event_handler, path, recursive=True)
    observer.start()
    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()

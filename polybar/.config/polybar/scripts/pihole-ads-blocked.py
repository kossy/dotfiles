#!/usr/bin/python
import urllib.request
from urllib.error import URLError
import json 

try:
    # Make API call (assumes that oyu are using pi hole dns on the machine)
    with urllib.request.urlopen("http://pi.hole/admin/api.php?") as url:
        # Load JSON
        data = json.loads(url.read().decode())
        
        # Print Desired Output String
        print('%%{F#e74c3c} %%{F-}%2.2f%% (%d)'% (data['ads_percentage_today'], data['ads_blocked_today']))

except URLError:
    # If there is no connection to the API, show nothing.
    pass
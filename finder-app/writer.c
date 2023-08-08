#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>

int main (int argc, char *argv[]) 
{


	openlog("writer", LOG_PID, LOG_USER);	
	if (argc != 3) {
		
		syslog(LOG_ERR, "not enough arguments two required");
		return 1;
  		}
 	const char *writestr = argv[2];
	const char *writefile = argv[1];
	FILE *file = fopen(writefile, "w");
	if (file == NULL) {
 		syslog(LOG_ERR, "Error opening file: %s", writefile);
    		return 1;
  	}
  	fprintf (file,"%s",writestr);
	fclose(file);
	syslog(LOG_DEBUG, "Writing '%s' to %s", writestr, writefile);
  	closelog();						

  	return 0;
 }

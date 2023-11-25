#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

int main() {
	FILE *fp = fopen("/home/rotaryviper/CustomKeybinds/quotes.txt","r");

	static time_t rawtime;
	struct tm * timeinfo;
	time( &rawtime );
	timeinfo = localtime( &rawtime );
	//printf("Hour: %02d", timeinfo->tm_hour, timeinfo->tm_min, timeinfo->tm_sec)

	//Checks if file is empty
	if( fp == NULL || timeinfo->tm_hour >= 22) {
		printf("<span foreground='lightcoral'><sup>Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep!</sup></span>");
		fclose(fp);
		return 1;
	}

	srand(time(NULL));
	int random_index = rand() % 60;

	char line[1023];
	register int ctr = 0;

	while( fgets(line,1023,fp) ) {
		if ((line[0] != '#') && (line[0] != '\n')){
			ctr++;
			if (ctr == random_index) {
				char cmd[255];
				//strcpy(cmd, "echo ");
				strcpy(cmd, line);
				//strcat(cmd, line);

				//system(cmd);
				printf(cmd);
				fclose(fp);
				return 0;
			}
		}
	}
}

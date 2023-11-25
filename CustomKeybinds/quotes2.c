#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
	static time_t rawtime;
	struct tm * timeinfo;
	time( &rawtime );
	timeinfo = localtime( &rawtime );
	//printf("Hour: %02d", timeinfo->tm_hour, timeinfo->tm_min, timeinfo->tm_sec)

	//Checks if file is empty
	if(timeinfo->tm_hour >= 22) {
		printf("<span foreground='lightcoral'><sup>Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep! Go To Sleep!</sup></span>");
		return 1;
	}

	srand(time(NULL));
	int random_index = rand() % 60;
	// 79 lines - 9 hashtags - 9 empty lines = 61 different quotes - 1 index offset = 60

	char line[1023];
	int ctr = 0;

	FILE *fp = fopen("/home/rotaryviper/CustomKeybinds/quotes.txt","r");

	while( fgets(line,1023,fp) ) {
		if ((line[0] != '#') && (line[0] != '\n')){
			ctr++;
			if (ctr == random_index) {
				printf(line);
				fclose(fp);
				return 0;
			}
		}
	}
}

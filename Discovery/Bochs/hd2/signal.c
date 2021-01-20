#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <sys/types.h>

void sig_handler(int signo)
{
	printf("catch signal %d\n", signo);

	return;
}

int do_catch(int signo)
{
	if (signal(signo, sig_handler) == SIG_ERR) {
		printf("signal error\n");
		return -1;
	}

	return 0;
}

int main()
{
	while (1) {
		do_catch(SIGINT);
	}

	return 0;
}


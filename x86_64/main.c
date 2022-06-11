#include "libft.h"
#include <stdio.h>

int	main(int ac, char **av)
{
	
	printf("digit : %d\n", ft_isdigit(av[1][0]));
	printf("lower : %d\n", ft_islower(av[1][0]));
	printf("upper : %d\n", ft_isupper(av[1][0]));
	printf("alpha : %d\n", ft_isalpha(av[1][0]));
	printf("alnum : %d\n", ft_isalnum(av[1][0]));
	return (0);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dalves-p <dalves-p@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/16 15:54:59 by dalves-p          #+#    #+#             */
/*   Updated: 2022/02/17 22:11:18 by dalves-p         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../push_swap.h"

void check_args(int argc, char *argv[], t_struct *psw)
{
	int	i;

	i = -1;
	psw->list = malloc(psw->count_int * sizeof(int **));
	while (++i < psw->count_int)
	{
		if (ft_strcmp(argv[i + 1], "0") == 0)
		{
			psw->list[i] = malloc(sizeof(int *));
			psw->list[i] = ft_atoi(argv[i + 1]);
			printf("zero\n");
		}
		else
		{
			psw->list[i] = malloc(psw->count_int * sizeof(int));
			psw->list[i] = ft_atoi(argv[i + 1]);
			printf("%d\n", ft_atoi(argv[i + 1]));
		}	
	}


	i = -1;
	while (++i < psw->count_int)
	{
		psw->list[i] = malloc(psw->count_int * sizeof(char));
		psw->list[i] = argv[i + 1];
		// printf("%s\n", psw->list[i]);
	}

}

void init(int argc, char *argv[], t_struct *psw)
{
	psw->argc = argc;
	psw->count_int = argc - 1;
	check_args(argc, argv, psw);
}
/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dalves-p <dalves-p@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/14 15:04:07 by dalves-p          #+#    #+#             */
/*   Updated: 2022/02/17 22:10:23 by dalves-p         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PUSH_SWAP_H
# define PUSH_SWAP_H

# include <unistd.h>
# include <stdlib.h>
# include <stdio.h> // TIRAR
# include "./libft/libft.h"

/*
** STRUCT
*/

typedef struct s_struct
{
	int		argc;
	int		count_int;
	int		**list;
}	t_struct;

/*
** FUNCTIONS PROTOTYPE
*/

void init(int argc, char *argv[], t_struct *psw);

#endif
/* ************************************************************************ *
 *    Impresao do proprio programa                                          *
 *    O programa se imprime                                                 *
 *                                                                          *
 *    Copyright (C) 2019 by Andre Hanauer Navarro                           *
 *                                                                          *
 *    This program is free software; you can redistribute it and/or modify  *
 *    it under the terms of the GNU General Public License as published by  *
 *    the Free Software Foundation; either version 2 of the License, or     *
 *    (at your option) any later version.                                   *
 *                                                                          *
 *    This program is distributed in the hope that it will be useful,       *
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *    GNU General Public License for more details.                          *
 *                                                                          *
 *    You should have received a copy of the GNU General Public License     *
 *    along with this program; if not, write to the                         *
 *    Free Software Foundation, Inc.,                                       *
 *    59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 *                                                                          *
 *    To contact the author, please write to:                               *
 *    Andre Hanauer Navarro <andrehanauern@gmail.com>                       *
 *    Webpage: http://www.github.com/andrehanauer                            *
 *    Phone: +55 (81) 99177-4250                                            *
 * ************************************************************************ *
 *
 */
#include<stdio.h>
char a[] = "\";\nmain() {char *b=a; printf(\"#include<stdio.h>\\nchar a[] = \\\"\");for(;*b;b++) {switch(*b){case'\\n':printf(\"\\\\n\"); break;\ncase'\\\\': case '\\\"':putchar('\\\\'); default: putchar(*b);}} printf(a);}\n";
main() {char *b=a; printf("#include<stdio.h>\nchar a[] = \"");for(;*b;b++) {switch(*b){case'\n':printf("\\n"); break;
    case'\\': case '\"':putchar('\\'); default: putchar(*b);}} printf(a);}

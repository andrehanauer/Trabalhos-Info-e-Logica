int func4(int eu, int ele, char *n)
{
    int r;

    if (ele == -1)
    {
        strcpy(n, "Andre Hanauer Navarro");
        printf("Jogador %d = %s \n", eu, n);
    }

    if(ele >= 0 && ele <= 200)
    {
        strcpy(n, "Andre Hanauer Navarro");
        printf("Jogador %d = %s \n", eu, n);

        r = (rand()%100);

        if(r >= 80)
            return 0;

        else
            return 1;

    }
   
}

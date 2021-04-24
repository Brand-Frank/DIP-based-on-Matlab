num 
        if(num mod i==0){
            a++;  // 素数个数加1
        }
    }

    if(a==0){
        printf("%d是素数。\n", num);
    }else{
        printf("%d不是素数。\n", num);
    }

    return 0;
}

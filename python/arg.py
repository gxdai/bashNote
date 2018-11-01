def test_var_args(f_arg, *args, **kargs):
    print("The first arg is {}".format(f_arg))

    for var in args:
        print("The second variable length argument is {}".format(var))
    if kargs is not None:
        for key in kargs:
            print("THe keyworded {} arguments are {}".format(key, kargs[key]))


    print("##########################\n")
if __name__ == '__main__':
    f_arg = 'fist'
    test_var_args('first', 'second', 'third', 'forth', 'fifth')

    test_var_args('first', 'second', 'third', mid='forth', third='fifth')

    args = ('here', 'there', 'where')
    kargs = {'me': 1, "you": 2, "they": 3}
    test_var_args('HEADDD')
    test_var_args('HEADDD', *args)
    test_var_args('HEADDD', *args, **kargs)
    test_var_args(*args)
    test_var_args(*args, **kargs)

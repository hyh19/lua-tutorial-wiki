local sandbox_env = {
    print = print
}

local chunk = load("print('inside sandbox'); os.execute('echo unsafe')", "sandbox string", "bt", sandbox_env)

chunk() --> attempt to index global 'os' (a nil value)

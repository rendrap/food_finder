	line = "" << "restaurant name".ljust(30)
# ==> "restaurant name               "
line << " " + "Italian food".ljust(20)
# ==> "restaurant name                Italian food        "
line << " " + "6".rjust(6)
# ==> "restaurant name                Italian food              6"
puts line
# =restaurant name                Italian food              6
# ==> nil
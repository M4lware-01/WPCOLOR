class WP:
    # Normal colors
    RESET = '\033[0m'
    BLACK = '\033[30m'
    RED = '\033[31m'
    GREEN = '\033[32m'
    YELLOW = '\033[33m'
    BLUE = '\033[34m'
    MAGENTA = '\033[35m'
    CYAN = '\033[36m'
    WHITE = '\033[37m'
    GREY = '\033[90m'
    
    # light colors

    LG_RED = '\033[91m'
    LG_GREEN = '\033[92m'
    LG_YELLOW = '\033[93m'
    LG_BLUE = '\033[94m'
    LG_MAGENTA = '\033[95m'
    LG_CYAN = '\033[96m'

    # RGB

    def RGB(self,string):
        dict,x,output = {1:f"{WP.RED}",2:f"{WP.YELLOW}",3:f"{WP.LG_YELLOW}",4:f"{WP.LG_GREEN}",5:f"{WP.CYAN}",6:f"{WP.LG_BLUE}",7:f"{WP.BLUE}",8:f"{WP.MAGENTA}",9:f"{WP.LG_MAGENTA}"},0,''
        for i,char in enumerate(string):
            x=1 if x>len(dict)-1 else x+1
            output+=dict[x]+char
        return output
        

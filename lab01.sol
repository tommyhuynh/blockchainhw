pragma solidity ^0.4.0;
import "github.com/Arachnid/solidity-stringutils/strings.sol";

contract Greeter {
    
    function Greeter() public {
        
    }
    
    function greet() public constant returns (string) {
        return "hello, World!";
    }
    
    function fibonacci(uint8 n) public constant returns (uint8) {
        uint8 i = 0;
        uint8 j = 1;
        uint8 temp;
        while (n - 1 > 0) {
            temp = j;
            j = j + i;
            i = temp;
            n = n - 1;
        }
        return j;
    }
    
    function xor(uint8 n, uint8 m) public constant returns (uint8) {
        if (n == 1 && m == 0) {
            return 1;
        }
        if (n == 1 && m == 1) {
            return 0;
        }
        if (n == 0 && m == 1) {
            return 1;
        }
        if (n == 0 && m == 0) {
            return 0;
        }
    }
    
    function foo(string s1, string s2) public constant returns (string){
        return s1.toSlice().concat(s2.toSlice());
    }
}
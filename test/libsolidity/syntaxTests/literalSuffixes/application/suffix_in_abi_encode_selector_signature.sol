function selectorSuffix(uint) pure suffix returns (bytes4) { return 0x12345678; }
function signatureSuffix(string memory) pure suffix returns (string memory) { return "f()"; }

contract C {
    function f() public pure {
        abi.encodeWithSelector(1234 selectorSuffix);
        abi.encodeWithSignature("abcd" signatureSuffix);
    }
}
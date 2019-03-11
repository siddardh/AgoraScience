pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/TokenERC20.sol";

contract TestTokenERC20 {
  TokenERC20 tokenerc20 = TokenERC20(DeployedAddresses.TokenERC20());

  // Testing the create token variables
  function testDecimalsIs18() public {
    uint decimals = tokenerc20.decimals();
    uint expected = 18;

    Assert.equal(decimals, expected, "expected decimals is 18");
  }

}

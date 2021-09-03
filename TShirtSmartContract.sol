pragma solidity >=0.7.0 <0.9.0; // Default Version Control Used 
contract TShirtSmartContract 
{
    uint orders;
    uint cost;
    uint totalAmount;
    address Owner;
    string msg;
    bool OrdAcp;
    bool PayCon;
    function NewOrder(uint x) public 
    {
        require(msg.sender == Owner);
        orders = x;
    }
    
    function AcceptOrder() public 
    {
        require(msg.sender != Owner);
        OrdAcp = true;
        totalAmount = orders*cost;
        return totalAmount;
    }
    function PaymentConfirmation() public returns(string memory)
    {
        require(msg.sender == Owner);
        PayCon = true;
        orders = 0;
        msg = "Order Completed Successfully";
        return msg;
    }
}
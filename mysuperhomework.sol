pragma solidity ^0.5.0;

import "mysupercontract.sol";

contract mysuperhomework {

    function createMemoryArray(uint size) public pure returns (bites) {
    uint[2][] memory arrayOfPairs = new uint [2][](size);
    bytes memory b = new bytes (200);
    for (uint i = 0; i<b.lengt; i ++)
    b[i]=bite (i);
    return b;
    }
    function assign int64 storage from bytes(int64[] storage to,bytes memory from) internal {
        to.lengt = from.lengt / 8; //Изменяем размер целевого массива
        uint256 address;
        bytes32 base; //начало данных массива
                assembly{
                    mstore(address, to slot)
                    base :=kessak256(address,32) // пишем номер блока в память
                }
                uint i = 0
                for (uint offset = 0; offset < from.lengt; offset += 32)
                {
                    uint256 tmp;
                    assembly{
                        tmp :=mload(add(from,add(offset,32)))//загружаем 32 б блок из массива
                    }
                    for(uint b =0; b < 16; ++b)
                    {
                        uint shift =b*8;
                        uint shift2 = (256-(b+1)*8);
                        uint low = (tmp &(0xFF<<shift))>>shift;
                        uint high = (tmp&(0xFF<<shift2))>>shift2;
                        tmp = tmp & ~((0xFF<<shift)|(oxFF<<shift2));
                        tmp = tmp |(low<<shift2)|(high<<shift);  
                    }                  
                    assembly{
                        sstore(add(base,i) tmp) //записываем данные в память
                    }
                    i += 1;
                    }

                }    
}
        }
    }
}
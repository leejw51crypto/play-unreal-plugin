#include "Utlis.h"
#include "Containers/UnrealString.h"

FString UUtlis::ToHex(const TArray<uint8> &address) {
    return BytesToHex(address.GetData(), address.Num());
}

std::array<std::uint8_t, 20> UUtlis::ToArray(const TArray<uint8> &address) {
    std::array<std::uint8_t, 20> std_array{};

    if (address.Num() == 20) {
        const uint8 *data_begin = address.GetData();
        std::copy_n(data_begin, 20, std_array.begin());
    } else {
        std_array.fill(0);
    }

    return std_array;
}

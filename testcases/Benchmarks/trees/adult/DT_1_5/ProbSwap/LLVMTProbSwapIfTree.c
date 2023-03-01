#include "LLVMTProbSwapIfTree.h"
int main() {
 int pX[64];
	unsigned int predCnt[2] ;
	predCnt[LLVMTProbSwapIfTree_predict0(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict1(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict2(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict3(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTProbSwapIfTree_predict0( int const pX[64]){
if(pX[0] <=  33){
	return 0;
} else {
	return 0;
}
}
unsigned int LLVMTProbSwapIfTree_predict1( int const pX[64]){
if(pX[61] <=  5119){
	return 0;
} else {
	return 1;
}
}
unsigned int LLVMTProbSwapIfTree_predict2( int const pX[64]){
if(pX[26] <=  12){
	return 0;
} else {
	return 0;
}
}
unsigned int LLVMTProbSwapIfTree_predict3( int const pX[64]){
if(pX[50] <=  0){
	return 0;
} else {
	return 0;
}
}
unsigned int LLVMTProbSwapIfTree_predict4( int const pX[64]){
if(pX[62] <=  1881){
	return 0;
} else {
	return 1;
}
}

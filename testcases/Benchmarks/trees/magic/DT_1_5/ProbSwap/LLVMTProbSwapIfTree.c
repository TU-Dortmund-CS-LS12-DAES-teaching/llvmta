#include "LLVMTProbSwapIfTree.h"
int main() {
 short pX[10];
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
unsigned int LLVMTProbSwapIfTree_predict0( short const pX[10]){
if(pX[8] <=  25){
	return 0;
} else {
	return 1;
}
}
unsigned int LLVMTProbSwapIfTree_predict1( short const pX[10]){
if(pX[1] <=  39){
	return 0;
} else {
	return 1;
}
}
unsigned int LLVMTProbSwapIfTree_predict2( short const pX[10]){
if(pX[9] <=  300){
	return 0;
} else {
	return 1;
}
}
unsigned int LLVMTProbSwapIfTree_predict3( short const pX[10]){
if(pX[1] <=  40){
	return 0;
} else {
	return 1;
}
}
unsigned int LLVMTProbSwapIfTree_predict4( short const pX[10]){
if(pX[1] <=  41){
	return 0;
} else {
	return 1;
}
}

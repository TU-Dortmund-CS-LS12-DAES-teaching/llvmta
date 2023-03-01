#include "LLVMTProbSwapIfTree.h"
int main() {
float pX[48];
	unsigned int predCnt[11] ;
	predCnt[LLVMTProbSwapIfTree_predict0(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict1(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict2(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict3(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTProbSwapIfTree_predict0(float const pX[48]){
if(pX[10] <=  -0.08742999844253063){
	return 10;
} else {
	return 4;
}
}
unsigned int LLVMTProbSwapIfTree_predict1(float const pX[48]){
if(pX[10] <=  -0.08611099794507027){
	return 10;
} else {
	return 3;
}
}
unsigned int LLVMTProbSwapIfTree_predict2(float const pX[48]){
if(pX[20] <=  2.3310999870300293){
	return 1;
} else {
	return 8;
}
}
unsigned int LLVMTProbSwapIfTree_predict3(float const pX[48]){
if(pX[35] <=  -0.01787099987268448){
	return 10;
} else {
	return 7;
}
}
unsigned int LLVMTProbSwapIfTree_predict4(float const pX[48]){
if(pX[11] <=  0.06774399802088737){
	return 0;
} else {
	return 6;
}
}

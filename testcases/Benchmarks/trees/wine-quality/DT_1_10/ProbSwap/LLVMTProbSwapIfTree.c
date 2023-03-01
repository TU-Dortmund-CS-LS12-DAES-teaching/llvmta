#include "LLVMTProbSwapIfTree.h"
int main() {
float pX[11];
	unsigned int predCnt[7] ;
	predCnt[LLVMTProbSwapIfTree_predict0(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict1(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict2(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict3(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict4(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict5(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict6(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict7(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict8(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict9(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTProbSwapIfTree_predict0(float const pX[11]){
if(pX[7] <=  0.9917899966239929){
	return 3;
} else {
	return 3;
}
}
unsigned int LLVMTProbSwapIfTree_predict1(float const pX[11]){
if(pX[2] <=  0.22500000149011612){
	return 2;
} else {
	return 3;
}
}
unsigned int LLVMTProbSwapIfTree_predict2(float const pX[11]){
if(pX[7] <=  0.9934049844741821){
	return 3;
} else {
	return 2;
}
}
unsigned int LLVMTProbSwapIfTree_predict3(float const pX[11]){
if(pX[7] <=  0.99201500415802){
	return 3;
} else {
	return 3;
}
}
unsigned int LLVMTProbSwapIfTree_predict4(float const pX[11]){
if(pX[4] <=  0.03849999979138374){
	return 3;
} else {
	return 3;
}
}
unsigned int LLVMTProbSwapIfTree_predict5(float const pX[11]){
if(pX[1] <=  0.27250000834465027){
	return 3;
} else {
	return 2;
}
}
unsigned int LLVMTProbSwapIfTree_predict6(float const pX[11]){
if(pX[10] <=  10.016666889190674){
	return 2;
} else {
	return 3;
}
}
unsigned int LLVMTProbSwapIfTree_predict7(float const pX[11]){
if(pX[10] <=  10.016666889190674){
	return 2;
} else {
	return 3;
}
}
unsigned int LLVMTProbSwapIfTree_predict8(float const pX[11]){
if(pX[10] <=  10.116666793823242){
	return 2;
} else {
	return 3;
}
}
unsigned int LLVMTProbSwapIfTree_predict9(float const pX[11]){
if(pX[1] <=  0.24249999970197678){
	return 3;
} else {
	return 2;
}
}

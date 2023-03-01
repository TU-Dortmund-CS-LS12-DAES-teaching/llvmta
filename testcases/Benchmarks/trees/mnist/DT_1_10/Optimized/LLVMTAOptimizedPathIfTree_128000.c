#include "LLVMTAOptimizedPathIfTree_128000.h"
int main() {
 char pX[784];
	unsigned int predCnt[10] ;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict0(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict1(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict2(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict3(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict4(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict5(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict6(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict7(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict8(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict9(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict0( char const pX[784]){
	if(pX[488] <= 1){
		return 3;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict1( char const pX[784]){
	if(pX[290] > 0){
		return 9;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict2( char const pX[784]){
	if(pX[409] > 0){
		return 9;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict3( char const pX[784]){
	if(pX[434] > 0){
		return 1;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict4( char const pX[784]){
	if(pX[318] > 1){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict5( char const pX[784]){
	if(pX[409] > 0){
		return 7;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict6( char const pX[784]){
	if(pX[462] > 2){
		return 1;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict7( char const pX[784]){
	if(pX[409] > 0){
		return 9;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict8( char const pX[784]){
	if(pX[624] <= 0){
		return 9;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict9( char const pX[784]){
	if(pX[374] > 0){
		return 6;
	} else {
		return 1;
	}
}

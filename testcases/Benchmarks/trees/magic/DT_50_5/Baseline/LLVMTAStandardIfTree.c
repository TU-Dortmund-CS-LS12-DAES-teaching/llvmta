#include "LLVMTAStandardIfTree.h"
int main() {
 short pX[10];
	unsigned int predCnt[2] ;
	predCnt[LLVMTAStandardIfTree_predict0(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict1(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict2(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict3(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAStandardIfTree_predict0( short const pX[10]){
	if(pX[0] <= 102){
		if(pX[7] <= -29){
			if(pX[6] <= 49){
				if(pX[8] <= 9){
					if(pX[9] <= 222){
						return 1;
					} else {
						if(pX[6] <= -55){
							return 1;
						} else {
							if(pX[5] <= -11){
								return 0;
							} else {
								if(pX[6] <= 36){
									return 1;
								} else {
									return 0;
								}
							}
						}
					}
				} else {
					if(pX[5] <= 5){
						return 1;
					} else {
						if(pX[9] <= 38){
							if(pX[5] <= 44){
								return 0;
							} else {
								return 1;
							}
						} else {
							return 1;
						}
					}
				}
			} else {
				if(pX[8] <= 19){
					if(pX[9] <= 333){
						if(pX[1] <= 74){
							return 0;
						} else {
							return 1;
						}
					} else {
						if(pX[9] <= 363){
							return 1;
						} else {
							return 0;
						}
					}
				} else {
					if(pX[0] <= 84){
						if(pX[2] <= 2){
							if(pX[1] <= 32){
								return 1;
							} else {
								return 0;
							}
						} else {
							if(pX[0] <= 70){
								return 0;
							} else {
								return 1;
							}
						}
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[2] <= 2){
				if(pX[7] <= 18){
					if(pX[1] <= 9){
						if(pX[8] <= 25){
							if(pX[1] <= 0){
								if(pX[7] <= -5){
									if(pX[7] <= -14){
										if(pX[6] <= -1){
											return 1;
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								} else {
									if(pX[0] <= 35){
										return 0;
									} else {
										return 1;
									}
								}
							} else {
								if(pX[7] <= -11){
									return 1;
								} else {
									if(pX[8] <= 13){
										if(pX[0] <= 16){
											if(pX[7] <= 9){
												return 1;
											} else {
												if(pX[6] <= 8){
													return 0;
												} else {
													return 1;
												}
											}
										} else {
											if(pX[9] <= 69){
												return 1;
											} else {
												if(pX[0] <= 26){
													if(pX[5] <= -33){
														return 1;
													} else {
														if(pX[6] <= 24){
															if(pX[5] <= 27){
																if(pX[8] <= 1){
																	if(pX[1] <= 7){
																		if(pX[0] <= 20){
																			if(pX[6] <= 12){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[6] <= 16){
																		if(pX[0] <= 17){
																			if(pX[9] <= 159){
																				if(pX[5] <= 5){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[7] <= -4){
																				return 0;
																			} else {
																				if(pX[8] <= 6){
																					if(pX[1] <= 6){
																						if(pX[8] <= 4){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						if(pX[8] <= 4){
																							return 0;
																						} else {
																							if(pX[5] <= 2){
																								return 0;
																							} else {
																								if(pX[5] <= 15){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[0] <= 23){
																						return 0;
																					} else {
																						if(pX[5] <= -2){
																							return 0;
																						} else {
																							if(pX[0] <= 24){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[5] <= 3){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																if(pX[9] <= 100){
																	return 1;
																} else {
																	if(pX[8] <= 8){
																		return 0;
																	} else {
																		if(pX[9] <= 164){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[9] <= 142){
														if(pX[8] <= 1){
															return 1;
														} else {
															if(pX[5] <= -9){
																if(pX[7] <= -7){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																if(pX[9] <= 75){
																	return 0;
																} else {
																	if(pX[6] <= 21){
																		return 1;
																	} else {
																		if(pX[6] <= 26){
																			if(pX[7] <= 2){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															}
														}
													} else {
														if(pX[9] <= 197){
															if(pX[6] <= 15){
																return 0;
															} else {
																if(pX[7] <= 8){
																	if(pX[9] <= 192){
																		if(pX[1] <= 6){
																			return 1;
																		} else {
																			if(pX[6] <= 17){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 1;
																	}
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[0] <= 76){
																if(pX[6] <= 25){
																	if(pX[5] <= 2){
																		if(pX[5] <= -26){
																			return 0;
																		} else {
																			if(pX[1] <= 8){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[0] <= 34){
																		return 1;
																	} else {
																		if(pX[7] <= -6){
																			if(pX[7] <= -7){
																				if(pX[5] <= -30){
																					if(pX[8] <= 1){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[8] <= 6){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															} else {
																return 0;
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[9] <= 227){
											if(pX[6] <= 13){
												if(pX[0] <= 28){
													if(pX[0] <= 12){
														return 1;
													} else {
														if(pX[9] <= 79){
															if(pX[1] <= 6){
																return 1;
															} else {
																if(pX[9] <= 45){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[1] <= 5){
																return 1;
															} else {
																if(pX[7] <= -9){
																	if(pX[6] <= -5){
																		return 0;
																	} else {
																		if(pX[9] <= 212){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[6] <= -20){
																		return 1;
																	} else {
																		if(pX[8] <= 16){
																			if(pX[6] <= -8){
																				return 0;
																			} else {
																				if(pX[7] <= 0){
																					if(pX[1] <= 6){
																						if(pX[8] <= 15){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[5] <= -5){
																						return 0;
																					} else {
																						if(pX[7] <= 5){
																							return 1;
																						} else {
																							if(pX[7] <= 8){
																								if(pX[9] <= 136){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[0] <= 21){
																				if(pX[8] <= 24){
																					return 0;
																				} else {
																					if(pX[9] <= 188){
																						return 0;
																					} else {
																						if(pX[5] <= 10){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			} else {
																				if(pX[7] <= -3){
																					if(pX[7] <= -5){
																						return 0;
																					} else {
																						if(pX[5] <= 0){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												} else {
													if(pX[8] <= 21){
														if(pX[5] <= 14){
															if(pX[6] <= -20){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											} else {
												if(pX[7] <= 5){
													if(pX[7] <= -5){
														if(pX[0] <= 18){
															return 1;
														} else {
															if(pX[9] <= 53){
																return 1;
															} else {
																if(pX[5] <= 12){
																	if(pX[5] <= 6){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[9] <= 194){
															if(pX[7] <= -4){
																return 1;
															} else {
																if(pX[1] <= 8){
																	if(pX[9] <= 66){
																		return 1;
																	} else {
																		if(pX[7] <= 0){
																			return 0;
																		} else {
																			if(pX[7] <= 4){
																				if(pX[0] <= 29){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[5] <= 15){
																		if(pX[0] <= 42){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[8] <= 23){
																if(pX[6] <= 20){
																	return 1;
																} else {
																	if(pX[1] <= 8){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 0;
															}
														}
													}
												} else {
													if(pX[5] <= -1){
														if(pX[9] <= 185){
															return 1;
														} else {
															return 0;
														}
													} else {
														if(pX[7] <= 10){
															return 1;
														} else {
															if(pX[0] <= 20){
																return 1;
															} else {
																return 0;
															}
														}
													}
												}
											}
										} else {
											if(pX[7] <= 6){
												if(pX[1] <= 6){
													return 1;
												} else {
													if(pX[0] <= 28){
														if(pX[7] <= -7){
															return 1;
														} else {
															if(pX[5] <= -2){
																if(pX[0] <= 19){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																if(pX[1] <= 8){
																	return 0;
																} else {
																	if(pX[9] <= 232){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[1] <= 8){
															if(pX[6] <= 42){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												}
											} else {
												return 1;
											}
										}
									}
								}
							}
						} else {
							if(pX[6] <= 18){
								if(pX[8] <= 52){
									if(pX[1] <= 5){
										if(pX[6] <= 5){
											if(pX[6] <= -9){
												if(pX[8] <= 48){
													return 1;
												} else {
													return 0;
												}
											} else {
												if(pX[1] <= 2){
													if(pX[8] <= 28){
														return 1;
													} else {
														if(pX[6] <= 2){
															return 0;
														} else {
															if(pX[9] <= 159){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													return 1;
												}
											}
										} else {
											return 1;
										}
									} else {
										if(pX[6] <= -2){
											if(pX[0] <= 16){
												if(pX[6] <= -7){
													return 1;
												} else {
													if(pX[5] <= -18){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												if(pX[9] <= 71){
													if(pX[8] <= 34){
														return 1;
													} else {
														if(pX[9] <= 67){
															if(pX[9] <= 45){
																return 0;
															} else {
																if(pX[8] <= 43){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[0] <= 29){
														if(pX[6] <= -6){
															if(pX[5] <= -19){
																return 0;
															} else {
																if(pX[9] <= 141){
																	return 0;
																} else {
																	if(pX[0] <= 19){
																		if(pX[9] <= 148){
																			return 1;
																		} else {
																			if(pX[5] <= 0){
																				if(pX[5] <= -12){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[0] <= 19){
																if(pX[9] <= 161){
																	return 0;
																} else {
																	if(pX[1] <= 8){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[9] <= 131){
															return 1;
														} else {
															if(pX[6] <= -18){
																if(pX[7] <= -1){
																	return 0;
																} else {
																	if(pX[0] <= 40){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																return 1;
															}
														}
													}
												}
											}
										} else {
											if(pX[6] <= 2){
												if(pX[8] <= 35){
													if(pX[5] <= 18){
														return 1;
													} else {
														return 0;
													}
												} else {
													if(pX[5] <= -2){
														return 1;
													} else {
														if(pX[8] <= 48){
															return 1;
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[7] <= -6){
													if(pX[5] <= 10){
														if(pX[8] <= 41){
															return 1;
														} else {
															if(pX[6] <= 12){
																return 1;
															} else {
																if(pX[0] <= 19){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[0] <= 23){
															if(pX[8] <= 34){
																return 0;
															} else {
																if(pX[9] <= 216){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[0] <= 27){
														if(pX[1] <= 6){
															if(pX[5] <= 24){
																if(pX[0] <= 21){
																	if(pX[0] <= 16){
																		return 1;
																	} else {
																		if(pX[8] <= 33){
																			return 0;
																		} else {
																			if(pX[5] <= 23){
																				if(pX[7] <= -3){
																					if(pX[8] <= 40){
																						if(pX[6] <= 14){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[0] <= 17){
																if(pX[7] <= 4){
																	if(pX[6] <= 8){
																		if(pX[9] <= 80){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[0] <= 24){
																	if(pX[9] <= 187){
																		if(pX[5] <= 27){
																			if(pX[7] <= -3){
																				return 0;
																			} else {
																				if(pX[0] <= 18){
																					return 0;
																				} else {
																					if(pX[8] <= 48){
																						if(pX[5] <= 0){
																							if(pX[7] <= 7){
																								if(pX[8] <= 43){
																									return 1;
																								} else {
																									if(pX[9] <= 146){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						return 1;
																					}
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[9] <= 228){
																			if(pX[5] <= 21){
																				if(pX[9] <= 225){
																					if(pX[5] <= -2){
																						return 0;
																					} else {
																						if(pX[6] <= 6){
																							return 1;
																						} else {
																							if(pX[6] <= 11){
																								if(pX[9] <= 196){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								return 1;
																							}
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[0] <= 19){
																					if(pX[0] <= 18){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[7] <= 3){
																		if(pX[5] <= 7){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[7] <= 4){
															if(pX[5] <= -16){
																return 1;
															} else {
																if(pX[0] <= 31){
																	if(pX[0] <= 29){
																		if(pX[7] <= -2){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[9] <= 207){
										if(pX[0] <= 21){
											if(pX[0] <= 18){
												if(pX[1] <= 6){
													return 1;
												} else {
													if(pX[1] <= 7){
														if(pX[8] <= 63){
															if(pX[6] <= -8){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[9] <= 99){
																if(pX[7] <= 0){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																if(pX[9] <= 169){
																	return 1;
																} else {
																	if(pX[8] <= 76){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[5] <= -18){
															if(pX[9] <= 192){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[9] <= 156){
																if(pX[5] <= -14){
																	return 1;
																} else {
																	if(pX[6] <= 1){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																return 1;
															}
														}
													}
												}
											} else {
												if(pX[2] <= 1){
													return 0;
												} else {
													if(pX[1] <= 7){
														if(pX[8] <= 88){
															if(pX[1] <= 5){
																if(pX[7] <= 9){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																if(pX[7] <= 8){
																	if(pX[6] <= -11){
																		return 0;
																	} else {
																		if(pX[5] <= -26){
																			return 1;
																		} else {
																			if(pX[9] <= 84){
																				if(pX[5] <= 26){
																					if(pX[8] <= 81){
																						if(pX[5] <= 13){
																							return 0;
																						} else {
																							if(pX[6] <= 9){
																								return 0;
																							} else {
																								if(pX[7] <= 0){
																									return 1;
																								} else {
																									if(pX[1] <= 6){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[5] <= 24){
																					if(pX[5] <= -2){
																						if(pX[1] <= 6){
																							return 0;
																						} else {
																							if(pX[9] <= 162){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[6] <= 8){
															if(pX[7] <= -2){
																if(pX[7] <= -8){
																	if(pX[8] <= 60){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[9] <= 123){
																	if(pX[9] <= 98){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[1] <= 8){
																		return 1;
																	} else {
																		if(pX[6] <= -19){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															}
														} else {
															if(pX[5] <= -14){
																return 1;
															} else {
																if(pX[0] <= 19){
																	if(pX[5] <= 8){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														}
													}
												}
											}
										} else {
											if(pX[1] <= 0){
												if(pX[9] <= 125){
													if(pX[7] <= -4){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[6] <= 4){
														return 0;
													} else {
														if(pX[5] <= 11){
															return 1;
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[7] <= -6){
													return 1;
												} else {
													if(pX[1] <= 5){
														return 1;
													} else {
														if(pX[6] <= -8){
															if(pX[1] <= 6){
																if(pX[5] <= -16){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																if(pX[9] <= 95){
																	if(pX[8] <= 57){
																		return 1;
																	} else {
																		if(pX[7] <= 7){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[9] <= 179){
																		if(pX[5] <= -12){
																			if(pX[7] <= 0){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[6] <= 16){
																return 1;
															} else {
																if(pX[0] <= 27){
																	if(pX[8] <= 70){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 1;
																}
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[7] <= -3){
											if(pX[6] <= -3){
												return 1;
											} else {
												if(pX[1] <= 7){
													if(pX[8] <= 55){
														return 1;
													} else {
														if(pX[9] <= 229){
															if(pX[9] <= 217){
																if(pX[6] <= 0){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[1] <= 1){
												return 0;
											} else {
												if(pX[6] <= -2){
													if(pX[0] <= 19){
														if(pX[5] <= -1){
															return 1;
														} else {
															if(pX[9] <= 235){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										}
									}
								}
							} else {
								if(pX[7] <= 5){
									if(pX[5] <= 30){
										if(pX[9] <= 105){
											if(pX[5] <= 10){
												if(pX[9] <= 98){
													if(pX[5] <= 7){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									} else {
										if(pX[0] <= 26){
											if(pX[5] <= 31){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									}
								} else {
									if(pX[0] <= 44){
										if(pX[0] <= 40){
											if(pX[8] <= 30){
												return 0;
											} else {
												if(pX[8] <= 69){
													if(pX[6] <= 19){
														return 0;
													} else {
														if(pX[6] <= 22){
															if(pX[0] <= 31){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[1] <= 8){
																return 1;
															} else {
																if(pX[5] <= 30){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[9] <= 201){
												return 1;
											} else {
												return 0;
											}
										}
									} else {
										return 1;
									}
								}
							}
						}
					} else {
						if(pX[6] <= -35){
							if(pX[9] <= 135){
								if(pX[0] <= 73){
									if(pX[8] <= 13){
										if(pX[9] <= 116){
											return 0;
										} else {
											return 1;
										}
									} else {
										if(pX[5] <= -23){
											if(pX[5] <= -28){
												if(pX[7] <= -13){
													if(pX[0] <= 59){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[1] <= 13){
													return 0;
												} else {
													return 1;
												}
											}
										} else {
											if(pX[5] <= 3){
												if(pX[6] <= -38){
													return 0;
												} else {
													if(pX[9] <= 80){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												return 1;
											}
										}
									}
								} else {
									return 1;
								}
							} else {
								if(pX[5] <= -107){
									return 1;
								} else {
									if(pX[8] <= 12){
										if(pX[6] <= -80){
											if(pX[7] <= -5){
												return 1;
											} else {
												return 0;
											}
										} else {
											if(pX[1] <= 24){
												if(pX[0] <= 100){
													if(pX[5] <= 5){
														if(pX[6] <= -40){
															return 0;
														} else {
															if(pX[6] <= -39){
																if(pX[5] <= -63){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																if(pX[5] <= -14){
																	return 0;
																} else {
																	if(pX[6] <= -37){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[5] <= 61){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													return 1;
												}
											} else {
												if(pX[8] <= 11){
													if(pX[6] <= -67){
														return 0;
													} else {
														if(pX[9] <= 349){
															if(pX[6] <= -45){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													}
												} else {
													return 0;
												}
											}
										}
									} else {
										if(pX[0] <= 76){
											if(pX[9] <= 161){
												if(pX[8] <= 46){
													if(pX[6] <= -40){
														return 0;
													} else {
														if(pX[5] <= -45){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													return 1;
												}
											} else {
												if(pX[0] <= 44){
													return 1;
												} else {
													if(pX[6] <= -83){
														return 0;
													} else {
														if(pX[9] <= 196){
															if(pX[8] <= 19){
																if(pX[9] <= 165){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[8] <= 21){
																if(pX[0] <= 66){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																if(pX[7] <= -8){
																	return 1;
																} else {
																	if(pX[7] <= 2){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													}
												}
											}
										} else {
											return 1;
										}
									}
								}
							}
						} else {
							if(pX[8] <= 35){
								if(pX[1] <= 24){
									if(pX[0] <= 27){
										if(pX[6] <= 25){
											if(pX[9] <= 224){
												if(pX[8] <= 10){
													if(pX[7] <= -12){
														if(pX[5] <= 5){
															if(pX[6] <= 0){
																if(pX[1] <= 15){
																	if(pX[9] <= 95){
																		return 0;
																	} else {
																		if(pX[7] <= -13){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[7] <= -18){
																return 0;
															} else {
																if(pX[0] <= 19){
																	if(pX[6] <= -3){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[6] <= -8){
																		if(pX[6] <= -14){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														}
													} else {
														if(pX[0] <= 11){
															return 1;
														} else {
															if(pX[9] <= 211){
																if(pX[5] <= -35){
																	if(pX[8] <= 7){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[5] <= 17){
																		if(pX[1] <= 19){
																			if(pX[0] <= 18){
																				if(pX[6] <= 17){
																					if(pX[5] <= -6){
																						if(pX[5] <= -12){
																							if(pX[9] <= 194){
																								if(pX[7] <= -10){
																									if(pX[6] <= 3){
																										if(pX[8] <= 2){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									if(pX[9] <= 126){
																										if(pX[9] <= 94){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								if(pX[9] <= 195){
																									return 1;
																								} else {
																									if(pX[7] <= 0){
																										return 0;
																									} else {
																										if(pX[6] <= -1){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								}
																							}
																						} else {
																							if(pX[7] <= -5){
																								return 1;
																							} else {
																								if(pX[5] <= -10){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					} else {
																						if(pX[9] <= 139){
																							return 0;
																						} else {
																							if(pX[9] <= 144){
																								return 1;
																							} else {
																								if(pX[6] <= 7){
																									if(pX[9] <= 160){
																										if(pX[7] <= 10){
																											if(pX[9] <= 157){
																												return 0;
																											} else {
																												return 1;
																											}
																										} else {
																											return 1;
																										}
																									} else {
																										if(pX[0] <= 14){
																											if(pX[1] <= 11){
																												return 0;
																											} else {
																												return 1;
																											}
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									return 1;
																								}
																							}
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[6] <= -2){
																					if(pX[6] <= -21){
																						if(pX[0] <= 22){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[7] <= -6){
																						return 0;
																					} else {
																						if(pX[1] <= 11){
																							if(pX[8] <= 9){
																								if(pX[9] <= 193){
																									if(pX[0] <= 20){
																										if(pX[9] <= 158){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										if(pX[0] <= 24){
																											return 0;
																										} else {
																											if(pX[7] <= 6){
																												if(pX[8] <= 2){
																													return 0;
																												} else {
																													return 1;
																												}
																											} else {
																												return 0;
																											}
																										}
																									}
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[5] <= 1){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						} else {
																							if(pX[5] <= 15){
																								if(pX[7] <= -5){
																									if(pX[0] <= 23){
																										return 0;
																									} else {
																										if(pX[0] <= 26){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[7] <= 1){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[9] <= 136){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[7] <= -6){
																			if(pX[8] <= 3){
																				if(pX[5] <= 19){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[8] <= 0){
																				if(pX[1] <= 12){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[5] <= 19){
																					if(pX[0] <= 18){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[7] <= 8){
																						if(pX[9] <= 195){
																							return 0;
																						} else {
																							if(pX[1] <= 11){
																								return 0;
																							} else {
																								if(pX[6] <= 2){
																									return 0;
																								} else {
																									if(pX[1] <= 13){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						}
																					} else {
																						if(pX[9] <= 191){
																							if(pX[6] <= 17){
																								if(pX[6] <= 15){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							return 1;
																						}
																					}
																				}
																			}
																		}
																	}
																}
															} else {
																if(pX[1] <= 14){
																	if(pX[7] <= 8){
																		if(pX[6] <= 18){
																			if(pX[5] <= 9){
																				return 0;
																			} else {
																				if(pX[1] <= 10){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															}
														}
													}
												} else {
													if(pX[6] <= -25){
														return 1;
													} else {
														if(pX[1] <= 14){
															if(pX[9] <= 176){
																if(pX[7] <= 14){
																	if(pX[9] <= 150){
																		if(pX[6] <= 20){
																			if(pX[7] <= 5){
																				if(pX[8] <= 33){
																					if(pX[6] <= 12){
																						if(pX[1] <= 12){
																							if(pX[8] <= 29){
																								if(pX[8] <= 11){
																									if(pX[5] <= 5){
																										return 0;
																									} else {
																										if(pX[0] <= 17){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									if(pX[1] <= 10){
																										if(pX[5] <= 25){
																											if(pX[7] <= -4){
																												if(pX[7] <= -5){
																													return 0;
																												} else {
																													if(pX[8] <= 20){
																														if(pX[5] <= 6){
																															return 1;
																														} else {
																															return 0;
																														}
																													} else {
																														return 0;
																													}
																												}
																											} else {
																												return 0;
																											}
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								if(pX[7] <= 1){
																									if(pX[0] <= 12){
																										if(pX[9] <= 87){
																											return 1;
																										} else {
																											return 0;
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							if(pX[9] <= 67){
																								return 1;
																							} else {
																								if(pX[5] <= 8){
																									if(pX[0] <= 14){
																										return 1;
																									} else {
																										return 0;
																									}
																								} else {
																									return 1;
																								}
																							}
																						}
																					} else {
																						if(pX[7] <= -7){
																							if(pX[9] <= 142){
																								return 0;
																							} else {
																								if(pX[7] <= -10){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						} else {
																							if(pX[1] <= 13){
																								if(pX[7] <= 1){
																									if(pX[0] <= 22){
																										if(pX[8] <= 27){
																											if(pX[9] <= 101){
																												if(pX[7] <= -5){
																													if(pX[0] <= 20){
																														return 1;
																													} else {
																														return 0;
																													}
																												} else {
																													return 0;
																												}
																											} else {
																												return 1;
																											}
																										} else {
																											return 0;
																										}
																									} else {
																										if(pX[8] <= 29){
																											return 0;
																										} else {
																											if(pX[5] <= 29){
																												return 0;
																											} else {
																												return 1;
																											}
																										}
																									}
																								} else {
																									if(pX[9] <= 65){
																										return 1;
																									} else {
																										if(pX[8] <= 22){
																											if(pX[8] <= 18){
																												return 1;
																											} else {
																												if(pX[7] <= 4){
																													return 1;
																												} else {
																													return 0;
																												}
																											}
																										} else {
																											if(pX[0] <= 26){
																												return 0;
																											} else {
																												return 1;
																											}
																										}
																									}
																								}
																							} else {
																								return 0;
																							}
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[7] <= 10){
																					if(pX[1] <= 11){
																						if(pX[6] <= -8){
																							if(pX[6] <= -16){
																								return 0;
																							} else {
																								if(pX[0] <= 12){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							if(pX[5] <= 22){
																								if(pX[9] <= 43){
																									return 1;
																								} else {
																									if(pX[0] <= 15){
																										if(pX[8] <= 17){
																											if(pX[6] <= -2){
																												return 0;
																											} else {
																												return 1;
																											}
																										} else {
																											return 0;
																										}
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								if(pX[8] <= 20){
																									return 0;
																								} else {
																									if(pX[0] <= 22){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							}
																						}
																					} else {
																						if(pX[8] <= 33){
																							if(pX[1] <= 13){
																								if(pX[7] <= 9){
																									if(pX[0] <= 18){
																										return 1;
																									} else {
																										if(pX[9] <= 120){
																											if(pX[9] <= 117){
																												if(pX[9] <= 102){
																													if(pX[5] <= -27){
																														return 0;
																													} else {
																														if(pX[9] <= 63){
																															return 0;
																														} else {
																															if(pX[9] <= 95){
																																return 1;
																															} else {
																																if(pX[5] <= 20){
																																	return 0;
																																} else {
																																	return 1;
																																}
																															}
																														}
																													}
																												} else {
																													return 0;
																												}
																											} else {
																												return 1;
																											}
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[6] <= -14){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[6] <= -13){
																						if(pX[9] <= 115){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			if(pX[6] <= 21){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[8] <= 20){
																			if(pX[0] <= 16){
																				if(pX[7] <= 8){
																					return 0;
																				} else {
																					if(pX[9] <= 169){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[1] <= 11){
																				if(pX[8] <= 22){
																					if(pX[5] <= 10){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[6] <= -9){
																						if(pX[7] <= 9){
																							if(pX[8] <= 27){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[5] <= 3){
																							return 0;
																						} else {
																							if(pX[5] <= 7){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[6] <= 18){
																	if(pX[5] <= -9){
																		if(pX[7] <= 10){
																			return 0;
																		} else {
																			if(pX[9] <= 195){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[1] <= 12){
																			if(pX[9] <= 200){
																				if(pX[8] <= 29){
																					if(pX[6] <= 3){
																						if(pX[9] <= 179){
																							return 1;
																						} else {
																							if(pX[7] <= -3){
																								if(pX[8] <= 22){
																									if(pX[5] <= -4){
																										return 1;
																									} else {
																										return 0;
																									}
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[6] <= -9){
																									if(pX[7] <= 7){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							}
																						}
																					} else {
																						if(pX[9] <= 182){
																							return 1;
																						} else {
																							if(pX[9] <= 199){
																								if(pX[1] <= 10){
																									if(pX[8] <= 18){
																										return 1;
																									} else {
																										if(pX[0] <= 22){
																											return 0;
																										} else {
																											return 1;
																										}
																									}
																								} else {
																									if(pX[9] <= 188){
																										if(pX[5] <= 18){
																											return 1;
																										} else {
																											return 0;
																										}
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								return 1;
																							}
																						}
																					}
																				} else {
																					if(pX[0] <= 22){
																						return 0;
																					} else {
																						if(pX[9] <= 181){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				}
																			} else {
																				if(pX[5] <= 0){
																					if(pX[7] <= 2){
																						if(pX[8] <= 12){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[5] <= 19){
																						if(pX[1] <= 10){
																							if(pX[6] <= -5){
																								return 0;
																							} else {
																								if(pX[5] <= 7){
																									return 1;
																								} else {
																									if(pX[7] <= 0){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[0] <= 16){
																							return 1;
																						} else {
																							if(pX[9] <= 210){
																								return 0;
																							} else {
																								if(pX[0] <= 20){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[9] <= 194){
																				return 1;
																			} else {
																				if(pX[7] <= -9){
																					if(pX[5] <= 1){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[6] <= 0){
																						return 0;
																					} else {
																						if(pX[0] <= 17){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		}
																	}
																} else {
																	if(pX[9] <= 178){
																		return 1;
																	} else {
																		if(pX[1] <= 12){
																			if(pX[5] <= 25){
																				if(pX[6] <= 24){
																					if(pX[9] <= 204){
																						if(pX[5] <= 14){
																							return 0;
																						} else {
																							if(pX[0] <= 21){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						if(pX[1] <= 11){
																							if(pX[7] <= -5){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[7] <= -10){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															}
														} else {
															if(pX[0] <= 16){
																return 1;
															} else {
																if(pX[8] <= 13){
																	if(pX[6] <= 20){
																		if(pX[5] <= -19){
																			return 1;
																		} else {
																			if(pX[7] <= -17){
																				return 1;
																			} else {
																				if(pX[9] <= 137){
																					if(pX[8] <= 12){
																						if(pX[0] <= 21){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[0] <= 26){
																						if(pX[6] <= 16){
																							return 0;
																						} else {
																							if(pX[8] <= 12){
																								return 0;
																							} else {
																								if(pX[0] <= 18){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					} else {
																						if(pX[7] <= -1){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				}
																			}
																		}
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[7] <= 8){
																		if(pX[5] <= 43){
																			if(pX[9] <= 204){
																				if(pX[8] <= 28){
																					if(pX[1] <= 17){
																						if(pX[0] <= 17){
																							if(pX[7] <= -2){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							if(pX[7] <= -16){
																								if(pX[8] <= 22){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[7] <= 5){
																									return 0;
																								} else {
																									if(pX[8] <= 20){
																										return 0;
																									} else {
																										if(pX[1] <= 16){
																											return 0;
																										} else {
																											return 1;
																										}
																									}
																								}
																							}
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[1] <= 16){
																						if(pX[1] <= 15){
																							if(pX[6] <= 13){
																								return 0;
																							} else {
																								if(pX[9] <= 96){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							if(pX[9] <= 174){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						if(pX[6] <= -15){
																							if(pX[1] <= 19){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					}
																				}
																			} else {
																				if(pX[9] <= 218){
																					if(pX[8] <= 18){
																						return 0;
																					} else {
																						if(pX[7] <= 0){
																							if(pX[0] <= 21){
																								return 1;
																							} else {
																								if(pX[8] <= 26){
																									if(pX[9] <= 214){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[8] <= 16){
																			if(pX[1] <= 15){
																				if(pX[9] <= 186){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[6] <= 7){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[5] <= -14){
																				if(pX[6] <= 0){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[9] <= 216){
																					if(pX[8] <= 21){
																						return 0;
																					} else {
																						if(pX[7] <= 13){
																							if(pX[8] <= 22){
																								return 1;
																							} else {
																								if(pX[9] <= 113){
																									return 0;
																								} else {
																									if(pX[1] <= 16){
																										if(pX[8] <= 25){
																											if(pX[9] <= 183){
																												return 1;
																											} else {
																												return 0;
																											}
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								}
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[6] <= 3){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[5] <= 24){
													if(pX[0] <= 16){
														if(pX[5] <= 12){
															if(pX[5] <= -12){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[5] <= 16){
																if(pX[6] <= -5){
																	if(pX[7] <= -5){
																		return 1;
																	} else {
																		if(pX[8] <= 18){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[6] <= 3){
																		return 0;
																	} else {
																		if(pX[9] <= 265){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[9] <= 250){
															if(pX[6] <= 15){
																if(pX[7] <= 15){
																	if(pX[5] <= -18){
																		if(pX[8] <= 10){
																			if(pX[1] <= 15){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[1] <= 12){
																			if(pX[1] <= 10){
																				if(pX[5] <= 9){
																					return 0;
																				} else {
																					if(pX[7] <= 8){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				if(pX[0] <= 17){
																					if(pX[9] <= 235){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[9] <= 236){
																						if(pX[7] <= -7){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			if(pX[6] <= -11){
																				return 0;
																			} else {
																				if(pX[7] <= 0){
																					return 0;
																				} else {
																					if(pX[9] <= 230){
																						return 1;
																					} else {
																						if(pX[5] <= 6){
																							if(pX[0] <= 21){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		}
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[6] <= 21){
																	if(pX[1] <= 13){
																		if(pX[9] <= 237){
																			return 1;
																		} else {
																			if(pX[9] <= 240){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[9] <= 229){
																			return 1;
																		} else {
																			if(pX[1] <= 17){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	if(pX[8] <= 8){
																		if(pX[6] <= 22){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[0] <= 18){
																if(pX[9] <= 254){
																	return 1;
																} else {
																	if(pX[8] <= 20){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[1] <= 15){
																	if(pX[0] <= 25){
																		if(pX[9] <= 267){
																			return 1;
																		} else {
																			if(pX[9] <= 269){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[9] <= 259){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[1] <= 20){
																		if(pX[6] <= -12){
																			return 0;
																		} else {
																			if(pX[7] <= -4){
																				return 1;
																			} else {
																				if(pX[0] <= 22){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															}
														}
													}
												} else {
													if(pX[9] <= 242){
														if(pX[8] <= 4){
															return 0;
														} else {
															if(pX[7] <= 12){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														if(pX[8] <= 11){
															return 0;
														} else {
															return 1;
														}
													}
												}
											}
										} else {
											return 1;
										}
									} else {
										if(pX[6] <= -12){
											if(pX[8] <= 29){
												if(pX[7] <= 7){
													if(pX[1] <= 14){
														if(pX[9] <= 231){
															if(pX[9] <= 229){
																if(pX[7] <= -8){
																	if(pX[0] <= 34){
																		if(pX[5] <= -19){
																			return 1;
																		} else {
																			if(pX[0] <= 32){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[6] <= -32){
																		if(pX[9] <= 223){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[6] <= -26){
																			if(pX[1] <= 12){
																				if(pX[6] <= -27){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														if(pX[7] <= -12){
															if(pX[6] <= -31){
																if(pX[1] <= 20){
																	return 0;
																} else {
																	if(pX[7] <= -13){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[8] <= 18){
																	return 0;
																} else {
																	if(pX[6] <= -19){
																		if(pX[9] <= 104){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															return 0;
														}
													}
												} else {
													if(pX[6] <= -29){
														if(pX[9] <= 164){
															if(pX[5] <= -9){
																if(pX[5] <= -36){
																	return 0;
																} else {
																	if(pX[8] <= 6){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														if(pX[8] <= 9){
															if(pX[8] <= 0){
																if(pX[1] <= 11){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														} else {
															if(pX[1] <= 15){
																if(pX[8] <= 19){
																	if(pX[7] <= 9){
																		if(pX[6] <= -27){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[9] <= 161){
																			return 1;
																		} else {
																			if(pX[6] <= -18){
																				if(pX[6] <= -23){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[7] <= 8){
																	if(pX[0] <= 40){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														}
													}
												}
											} else {
												if(pX[0] <= 31){
													if(pX[6] <= -22){
														return 1;
													} else {
														return 0;
													}
												} else {
													if(pX[7] <= 8){
														if(pX[5] <= -21){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											}
										} else {
											if(pX[8] <= 14){
												if(pX[8] <= 8){
													if(pX[9] <= 129){
														if(pX[7] <= -12){
															if(pX[1] <= 14){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[1] <= 22){
																if(pX[0] <= 32){
																	if(pX[9] <= 119){
																		return 0;
																	} else {
																		if(pX[8] <= 6){
																			if(pX[0] <= 30){
																				if(pX[0] <= 29){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[6] <= 6){
																		return 1;
																	} else {
																		if(pX[0] <= 36){
																			if(pX[9] <= 63){
																				return 1;
																			} else {
																				if(pX[9] <= 124){
																					if(pX[5] <= -2){
																						return 1;
																					} else {
																						if(pX[8] <= 4){
																							if(pX[1] <= 14){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[1] <= 12){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[0] <= 49){
															if(pX[0] <= 35){
																if(pX[0] <= 31){
																	if(pX[1] <= 15){
																		if(pX[6] <= 30){
																			if(pX[0] <= 30){
																				return 0;
																			} else {
																				if(pX[1] <= 12){
																					if(pX[6] <= 6){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[0] <= 29){
																			if(pX[6] <= 22){
																				if(pX[5] <= -12){
																					return 1;
																				} else {
																					if(pX[7] <= 5){
																						if(pX[7] <= 1){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[7] <= 7){
																				return 0;
																			} else {
																				if(pX[7] <= 9){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[9] <= 287){
																		if(pX[5] <= 47){
																			if(pX[9] <= 155){
																				if(pX[5] <= 25){
																					return 0;
																				} else {
																					if(pX[6] <= 19){
																						if(pX[9] <= 145){
																							if(pX[9] <= 136){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[5] <= 48){
																				return 1;
																			} else {
																				if(pX[9] <= 223){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[5] <= 0){
																	if(pX[6] <= 34){
																		if(pX[9] <= 166){
																			if(pX[6] <= 2){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[7] <= 0){
																			return 0;
																		} else {
																			if(pX[8] <= 1){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	if(pX[0] <= 43){
																		if(pX[6] <= 30){
																			return 0;
																		} else {
																			if(pX[6] <= 31){
																				if(pX[7] <= -8){
																					if(pX[9] <= 173){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[8] <= 4){
																			return 0;
																		} else {
																			if(pX[1] <= 16){
																				if(pX[6] <= 40){
																					return 0;
																				} else {
																					if(pX[5] <= 40){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															}
														} else {
															if(pX[6] <= 16){
																if(pX[1] <= 16){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																if(pX[6] <= 41){
																	if(pX[8] <= 6){
																		return 0;
																	} else {
																		if(pX[0] <= 53){
																			return 0;
																		} else {
																			if(pX[5] <= -87){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[0] <= 50){
																		if(pX[7] <= -13){
																			return 0;
																		} else {
																			if(pX[9] <= 222){
																				return 1;
																			} else {
																				if(pX[8] <= 4){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		if(pX[5] <= 104){
																			if(pX[9] <= 143){
																				if(pX[1] <= 22){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[0] <= 60){
																					if(pX[9] <= 163){
																						return 1;
																					} else {
																						if(pX[0] <= 58){
																							if(pX[5] <= 64){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							if(pX[9] <= 236){
																								return 0;
																							} else {
																								if(pX[6] <= 58){
																									if(pX[0] <= 59){
																										return 0;
																									} else {
																										if(pX[8] <= 3){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									return 1;
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[9] <= 225){
																						if(pX[5] <= 36){
																							if(pX[9] <= 222){
																								if(pX[1] <= 22){
																									return 0;
																								} else {
																									if(pX[8] <= 4){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[0] <= 73){
																							if(pX[1] <= 21){
																								return 0;
																							} else {
																								if(pX[8] <= 2){
																									if(pX[7] <= 2){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							}
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															}
														}
													}
												} else {
													if(pX[0] <= 35){
														if(pX[1] <= 12){
															if(pX[9] <= 187){
																if(pX[6] <= -6){
																	return 1;
																} else {
																	if(pX[0] <= 29){
																		if(pX[1] <= 11){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[6] <= 3){
																	return 0;
																} else {
																	if(pX[6] <= 21){
																		return 1;
																	} else {
																		if(pX[6] <= 30){
																			if(pX[8] <= 10){
																				return 1;
																			} else {
																				if(pX[5] <= 4){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															}
														} else {
															if(pX[1] <= 16){
																if(pX[6] <= 18){
																	if(pX[8] <= 10){
																		return 0;
																	} else {
																		if(pX[7] <= -12){
																			return 1;
																		} else {
																			if(pX[7] <= 9){
																				return 0;
																			} else {
																				if(pX[5] <= 32){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[6] <= 22){
																		if(pX[9] <= 234){
																			if(pX[7] <= -1){
																				if(pX[9] <= 110){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[7] <= 6){
																			if(pX[5] <= 33){
																				return 0;
																			} else {
																				if(pX[1] <= 15){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																if(pX[7] <= -11){
																	if(pX[5] <= -5){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[1] <= 10){
															if(pX[9] <= 200){
																return 0;
															} else {
																if(pX[0] <= 49){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[1] <= 13){
																if(pX[8] <= 11){
																	if(pX[6] <= 27){
																		if(pX[5] <= 18){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[1] <= 11){
																			if(pX[6] <= 34){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[5] <= -5){
																		return 0;
																	} else {
																		if(pX[7] <= -1){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																if(pX[5] <= 58){
																	if(pX[7] <= -16){
																		if(pX[5] <= 12){
																			if(pX[7] <= -20){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[5] <= 30){
																			if(pX[0] <= 41){
																				if(pX[9] <= 211){
																					return 0;
																				} else {
																					if(pX[7] <= 7){
																						return 0;
																					} else {
																						if(pX[7] <= 9){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[8] <= 12){
																				return 0;
																			} else {
																				if(pX[5] <= 31){
																					return 1;
																				} else {
																					if(pX[9] <= 157){
																						if(pX[7] <= 3){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						if(pX[6] <= 63){
																							return 0;
																						} else {
																							if(pX[7] <= 12){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																} else {
																	if(pX[7] <= -8){
																		return 0;
																	} else {
																		if(pX[5] <= 62){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[1] <= 11){
													if(pX[1] <= 10){
														if(pX[8] <= 21){
															if(pX[9] <= 194){
																if(pX[5] <= 25){
																	if(pX[6] <= 24){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[6] <= 23){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														if(pX[8] <= 17){
															if(pX[0] <= 29){
																if(pX[6] <= 0){
																	return 1;
																} else {
																	if(pX[8] <= 16){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 0;
															}
														} else {
															if(pX[8] <= 34){
																if(pX[0] <= 41){
																	if(pX[6] <= -7){
																		return 0;
																	} else {
																		if(pX[9] <= 191){
																			if(pX[0] <= 28){
																				return 1;
																			} else {
																				if(pX[0] <= 33){
																					if(pX[9] <= 146){
																						if(pX[9] <= 124){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[8] <= 21){
																						return 1;
																					} else {
																						if(pX[9] <= 69){
																							return 0;
																						} else {
																							if(pX[9] <= 116){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[6] <= 20){
																				return 1;
																			} else {
																				if(pX[9] <= 213){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[6] <= 23){
																		if(pX[9] <= 108){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																return 0;
															}
														}
													}
												} else {
													if(pX[6] <= 5){
														if(pX[8] <= 21){
															if(pX[6] <= 0){
																if(pX[5] <= -17){
																	if(pX[1] <= 14){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[6] <= -8){
																		return 0;
																	} else {
																		if(pX[7] <= -9){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																if(pX[0] <= 36){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[9] <= 134){
																if(pX[1] <= 20){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																if(pX[1] <= 19){
																	return 1;
																} else {
																	if(pX[5] <= -1){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[0] <= 47){
															if(pX[7] <= -23){
																return 1;
															} else {
																if(pX[9] <= 235){
																	if(pX[8] <= 31){
																		if(pX[1] <= 13){
																			if(pX[5] <= 12){
																				if(pX[5] <= 10){
																					return 0;
																				} else {
																					if(pX[8] <= 22){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[9] <= 209){
																				if(pX[1] <= 15){
																					if(pX[8] <= 26){
																						if(pX[5] <= 28){
																							if(pX[8] <= 24){
																								return 0;
																							} else {
																								if(pX[6] <= 32){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							if(pX[8] <= 15){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[0] <= 28){
																						if(pX[7] <= -14){
																							if(pX[1] <= 20){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[1] <= 21){
																							if(pX[0] <= 30){
																								if(pX[5] <= 25){
																									return 0;
																								} else {
																									if(pX[8] <= 25){
																										return 0;
																									} else {
																										if(pX[7] <= -14){
																											return 0;
																										} else {
																											if(pX[6] <= 24){
																												return 1;
																											} else {
																												return 0;
																											}
																										}
																									}
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							if(pX[0] <= 35){
																								return 0;
																							} else {
																								if(pX[5] <= 31){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					}
																				}
																			} else {
																				if(pX[7] <= 13){
																					if(pX[5] <= 22){
																						return 0;
																					} else {
																						if(pX[5] <= 25){
																							return 1;
																						} else {
																							if(pX[7] <= 0){
																								return 0;
																							} else {
																								if(pX[5] <= 30){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[7] <= 16){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[1] <= 15){
																			if(pX[5] <= 33){
																				return 1;
																			} else {
																				if(pX[9] <= 195){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[7] <= 11){
																				return 0;
																			} else {
																				if(pX[7] <= 13){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[1] <= 20){
																		if(pX[1] <= 12){
																			return 1;
																		} else {
																			if(pX[7] <= -12){
																				return 1;
																			} else {
																				if(pX[1] <= 15){
																					if(pX[6] <= 16){
																						return 0;
																					} else {
																						if(pX[5] <= 22){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					if(pX[5] <= 2){
																						if(pX[8] <= 23){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[1] <= 22){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															}
														} else {
															if(pX[6] <= 36){
																if(pX[5] <= -77){
																	return 0;
																} else {
																	if(pX[9] <= 155){
																		return 1;
																	} else {
																		if(pX[0] <= 51){
																			if(pX[5] <= -39){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[9] <= 202){
																				return 0;
																			} else {
																				if(pX[5] <= -27){
																					if(pX[5] <= -53){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																}
															} else {
																if(pX[0] <= 69){
																	if(pX[6] <= 43){
																		if(pX[1] <= 12){
																			return 1;
																		} else {
																			if(pX[6] <= 41){
																				if(pX[8] <= 22){
																					if(pX[0] <= 56){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[8] <= 20){
																		return 0;
																	} else {
																		if(pX[7] <= -15){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[5] <= -19){
										if(pX[5] <= -152){
											return 0;
										} else {
											if(pX[8] <= 13){
												if(pX[5] <= -47){
													if(pX[7] <= 9){
														return 0;
													} else {
														if(pX[7] <= 10){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													if(pX[7] <= -15){
														return 1;
													} else {
														if(pX[0] <= 40){
															return 0;
														} else {
															if(pX[7] <= 0){
																return 0;
															} else {
																return 1;
															}
														}
													}
												}
											} else {
												if(pX[7] <= 16){
													return 1;
												} else {
													if(pX[5] <= -73){
														return 1;
													} else {
														return 0;
													}
												}
											}
										}
									} else {
										if(pX[5] <= 8){
											if(pX[5] <= -1){
												if(pX[8] <= 14){
													if(pX[5] <= -8){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											} else {
												return 0;
											}
										} else {
											if(pX[6] <= 35){
												if(pX[5] <= 88){
													if(pX[8] <= 29){
														if(pX[9] <= 102){
															return 1;
														} else {
															if(pX[1] <= 34){
																return 0;
															} else {
																if(pX[1] <= 37){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[6] <= 44){
													return 1;
												} else {
													if(pX[8] <= 8){
														if(pX[9] <= 125){
															return 1;
														} else {
															return 0;
														}
													} else {
														if(pX[5] <= 56){
															return 1;
														} else {
															return 0;
														}
													}
												}
											}
										}
									}
								}
							} else {
								if(pX[9] <= 214){
									if(pX[7] <= 16){
										if(pX[0] <= 31){
											if(pX[0] <= 22){
												if(pX[9] <= 167){
													if(pX[0] <= 12){
														if(pX[6] <= -12){
															return 1;
														} else {
															if(pX[0] <= 11){
																return 1;
															} else {
																if(pX[9] <= 111){
																	if(pX[8] <= 41){
																		return 1;
																	} else {
																		if(pX[9] <= 108){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[6] <= -19){
															if(pX[9] <= 80){
																if(pX[0] <= 20){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[6] <= 20){
																if(pX[6] <= -8){
																	if(pX[7] <= -9){
																		if(pX[9] <= 95){
																			return 0;
																		} else {
																			if(pX[8] <= 86){
																				if(pX[5] <= -13){
																					return 1;
																				} else {
																					if(pX[5] <= -6){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[5] <= -7){
																			if(pX[5] <= -19){
																				if(pX[8] <= 70){
																					return 0;
																				} else {
																					if(pX[5] <= -22){
																						return 1;
																					} else {
																						if(pX[8] <= 73){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				}
																			} else {
																				if(pX[0] <= 20){
																					return 0;
																				} else {
																					if(pX[0] <= 21){
																						if(pX[6] <= -18){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			if(pX[1] <= 17){
																				if(pX[1] <= 15){
																					if(pX[0] <= 17){
																						if(pX[7] <= 9){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[6] <= -9){
																							if(pX[6] <= -18){
																								if(pX[9] <= 81){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[5] <= 10){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							if(pX[5] <= 1){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					}
																				} else {
																					if(pX[9] <= 97){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	if(pX[8] <= 61){
																		if(pX[6] <= 18){
																			if(pX[1] <= 13){
																				if(pX[7] <= -11){
																					return 1;
																				} else {
																					if(pX[0] <= 17){
																						if(pX[6] <= 5){
																							if(pX[5] <= 15){
																								if(pX[7] <= 12){
																									if(pX[8] <= 37){
																										if(pX[9] <= 143){
																											return 1;
																										} else {
																											return 0;
																										}
																									} else {
																										if(pX[5] <= -7){
																											if(pX[9] <= 115){
																												return 0;
																											} else {
																												if(pX[8] <= 45){
																													return 1;
																												} else {
																													return 0;
																												}
																											}
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									return 1;
																								}
																							} else {
																								return 1;
																							}
																						} else {
																							if(pX[0] <= 14){
																								if(pX[7] <= 6){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[5] <= -1){
																									if(pX[6] <= 7){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							}
																						}
																					} else {
																						if(pX[7] <= -9){
																							if(pX[5] <= 11){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							if(pX[9] <= 150){
																								if(pX[7] <= 4){
																									if(pX[5] <= -1){
																										if(pX[5] <= -2){
																											if(pX[7] <= -2){
																												return 0;
																											} else {
																												if(pX[8] <= 45){
																													return 0;
																												} else {
																													return 1;
																												}
																											}
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[8] <= 48){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					}
																				}
																			} else {
																				if(pX[8] <= 43){
																					if(pX[1] <= 16){
																						return 0;
																					} else {
																						if(pX[6] <= 17){
																							if(pX[1] <= 17){
																								if(pX[7] <= -11){
																									return 1;
																								} else {
																									if(pX[7] <= 0){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[1] <= 11){
																				if(pX[9] <= 57){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[9] <= 95){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	} else {
																		if(pX[7] <= 2){
																			if(pX[6] <= -5){
																				return 0;
																			} else {
																				if(pX[1] <= 10){
																					if(pX[6] <= 17){
																						if(pX[7] <= -1){
																							if(pX[8] <= 67){
																								return 0;
																							} else {
																								if(pX[9] <= 72){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						} else {
																							return 1;
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[9] <= 52){
																						if(pX[7] <= -3){
																							if(pX[6] <= 4){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 1;
																						}
																					} else {
																						if(pX[6] <= 8){
																							if(pX[8] <= 71){
																								if(pX[6] <= -1){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 1;
																							}
																						} else {
																							if(pX[5] <= 7){
																								return 0;
																							} else {
																								if(pX[9] <= 103){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[6] <= 17){
																				if(pX[6] <= 4){
																					if(pX[5] <= 0){
																						if(pX[5] <= -8){
																							if(pX[6] <= -2){
																								if(pX[5] <= -13){
																									if(pX[9] <= 74){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							if(pX[9] <= 60){
																								return 1;
																							} else {
																								if(pX[9] <= 105){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					} else {
																						if(pX[7] <= 10){
																							return 0;
																						} else {
																							if(pX[0] <= 15){
																								if(pX[8] <= 76){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								return 0;
																							}
																						}
																					}
																				} else {
																					if(pX[0] <= 20){
																						if(pX[6] <= 8){
																							if(pX[1] <= 11){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[8] <= 74){
																							if(pX[5] <= 9){
																								if(pX[8] <= 64){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					}
																				}
																			} else {
																				if(pX[1] <= 13){
																					if(pX[7] <= 5){
																						return 1;
																					} else {
																						if(pX[8] <= 68){
																							if(pX[0] <= 18){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																}
															} else {
																return 1;
															}
														}
													}
												} else {
													if(pX[7] <= 6){
														if(pX[6] <= 19){
															if(pX[0] <= 16){
																if(pX[8] <= 42){
																	return 0;
																} else {
																	if(pX[9] <= 211){
																		if(pX[5] <= 0){
																			if(pX[8] <= 52){
																				return 1;
																			} else {
																				if(pX[8] <= 58){
																					return 0;
																				} else {
																					if(pX[6] <= 5){
																						if(pX[8] <= 72){
																							return 1;
																						} else {
																							if(pX[8] <= 78){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						if(pX[8] <= 64){
																							return 0;
																						} else {
																							if(pX[8] <= 74){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[6] <= 6){
																				if(pX[5] <= 9){
																					if(pX[8] <= 45){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[8] <= 49){
																	if(pX[1] <= 13){
																		return 0;
																	} else {
																		if(pX[7] <= -12){
																			return 1;
																		} else {
																			if(pX[1] <= 16){
																				if(pX[0] <= 18){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[6] <= 16){
																					if(pX[5] <= 21){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[9] <= 212){
																		if(pX[6] <= 9){
																			if(pX[5] <= 30){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[0] <= 21){
																				if(pX[7] <= -11){
																					if(pX[8] <= 75){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[1] <= 14){
																						return 0;
																					} else {
																						if(pX[5] <= 13){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				}
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[1] <= 10){
																if(pX[5] <= -16){
																	return 1;
																} else {
																	if(pX[9] <= 183){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[6] <= -14){
															return 1;
														} else {
															if(pX[7] <= 7){
																if(pX[0] <= 17){
																	return 0;
																} else {
																	if(pX[9] <= 171){
																		if(pX[0] <= 18){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[9] <= 172){
																	if(pX[1] <= 10){
																		if(pX[8] <= 68){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[0] <= 14){
																		if(pX[6] <= 5){
																			return 0;
																		} else {
																			if(pX[9] <= 175){
																				return 1;
																			} else {
																				if(pX[7] <= 9){
																					return 0;
																				} else {
																					if(pX[9] <= 203){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[5] <= -7){
																			if(pX[5] <= -13){
																				return 0;
																			} else {
																				if(pX[6] <= 15){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[6] <= 19){
																				if(pX[7] <= 13){
																					if(pX[8] <= 59){
																						if(pX[9] <= 213){
																							if(pX[9] <= 202){
																								if(pX[1] <= 11){
																									if(pX[6] <= 16){
																										return 1;
																									} else {
																										return 0;
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							return 1;
																						}
																					} else {
																						if(pX[8] <= 62){
																							return 1;
																						} else {
																							if(pX[7] <= 11){
																								if(pX[8] <= 75){
																									if(pX[0] <= 17){
																										return 1;
																									} else {
																										return 0;
																									}
																								} else {
																									if(pX[0] <= 17){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							} else {
																								return 1;
																							}
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[5] <= 9){
																					return 1;
																				} else {
																					if(pX[5] <= 14){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[1] <= 11){
													if(pX[9] <= 111){
														if(pX[0] <= 25){
															if(pX[0] <= 24){
																if(pX[7] <= 8){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														} else {
															if(pX[7] <= 8){
																if(pX[7] <= 4){
																	if(pX[8] <= 53){
																		if(pX[8] <= 49){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[7] <= 5){
																		return 1;
																	} else {
																		if(pX[9] <= 50){
																			return 1;
																		} else {
																			if(pX[1] <= 10){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[1] <= 10){
															if(pX[6] <= -10){
																if(pX[0] <= 27){
																	if(pX[7] <= -5){
																		return 0;
																	} else {
																		if(pX[5] <= -8){
																			if(pX[8] <= 51){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[0] <= 29){
																		if(pX[7] <= 4){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[8] <= 64){
																	if(pX[9] <= 123){
																		return 1;
																	} else {
																		if(pX[0] <= 26){
																			if(pX[8] <= 49){
																				return 0;
																			} else {
																				if(pX[8] <= 56){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[8] <= 46){
																if(pX[6] <= 3){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																if(pX[5] <= 14){
																	if(pX[7] <= -8){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[9] <= 208){
																		if(pX[6] <= -8){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														}
													}
												} else {
													if(pX[1] <= 16){
														if(pX[7] <= -4){
															if(pX[6] <= 12){
																if(pX[6] <= -10){
																	if(pX[9] <= 152){
																		if(pX[9] <= 41){
																			if(pX[5] <= 27){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[9] <= 177){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[9] <= 170){
																		if(pX[9] <= 65){
																			return 1;
																		} else {
																			if(pX[5] <= -26){
																				return 0;
																			} else {
																				if(pX[1] <= 15){
																					return 1;
																				} else {
																					if(pX[5] <= 9){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[9] <= 191){
																			if(pX[0] <= 26){
																				return 0;
																			} else {
																				if(pX[0] <= 28){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[6] <= 26){
																	if(pX[9] <= 176){
																		return 0;
																	} else {
																		if(pX[6] <= 20){
																			if(pX[7] <= -7){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[9] <= 105){
																if(pX[7] <= 6){
																	return 0;
																} else {
																	if(pX[6] <= -22){
																		return 1;
																	} else {
																		if(pX[8] <= 76){
																			if(pX[9] <= 56){
																				return 0;
																			} else {
																				if(pX[8] <= 53){
																					return 0;
																				} else {
																					if(pX[9] <= 64){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[8] <= 49){
																	if(pX[6] <= -13){
																		if(pX[9] <= 143){
																			return 0;
																		} else {
																			if(pX[9] <= 196){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[0] <= 28){
																			if(pX[8] <= 38){
																				if(pX[0] <= 24){
																					if(pX[1] <= 14){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[7] <= 7){
																				if(pX[9] <= 148){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	if(pX[7] <= 15){
																		if(pX[9] <= 143){
																			return 1;
																		} else {
																			if(pX[0] <= 26){
																				if(pX[8] <= 64){
																					if(pX[5] <= 8){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[9] <= 205){
																						if(pX[7] <= 8){
																							return 1;
																						} else {
																							if(pX[9] <= 164){
																								if(pX[7] <= 12){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 0;
																	}
																}
															}
														}
													} else {
														if(pX[5] <= 39){
															if(pX[9] <= 169){
																if(pX[0] <= 26){
																	if(pX[5] <= -30){
																		return 1;
																	} else {
																		if(pX[9] <= 85){
																			if(pX[7] <= 14){
																				if(pX[0] <= 24){
																					if(pX[5] <= 16){
																						return 0;
																					} else {
																						if(pX[9] <= 65){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[9] <= 119){
																				if(pX[8] <= 73){
																					if(pX[7] <= -12){
																						return 0;
																					} else {
																						if(pX[5] <= -2){
																							if(pX[9] <= 93){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					if(pX[7] <= 11){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				if(pX[0] <= 24){
																					return 0;
																				} else {
																					if(pX[9] <= 128){
																						return 0;
																					} else {
																						if(pX[7] <= -17){
																							return 1;
																						} else {
																							if(pX[8] <= 53){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																} else {
																	if(pX[6] <= -28){
																		return 1;
																	} else {
																		if(pX[6] <= 11){
																			if(pX[9] <= 46){
																				if(pX[7] <= 14){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[5] <= -9){
																					if(pX[1] <= 23){
																						return 0;
																					} else {
																						if(pX[9] <= 90){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[6] <= 12){
																				if(pX[0] <= 28){
																					if(pX[8] <= 44){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[5] <= -26){
																					return 1;
																				} else {
																					if(pX[8] <= 57){
																						if(pX[7] <= -13){
																							return 0;
																						} else {
																							if(pX[6] <= 16){
																								if(pX[5] <= -13){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[7] <= -10){
																									return 1;
																								} else {
																									if(pX[9] <= 160){
																										return 0;
																									} else {
																										if(pX[9] <= 163){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								}
																							}
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		}
																	}
																}
															} else {
																if(pX[1] <= 22){
																	if(pX[8] <= 51){
																		if(pX[6] <= -14){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[9] <= 177){
																			return 1;
																		} else {
																			if(pX[0] <= 24){
																				return 0;
																			} else {
																				if(pX[9] <= 187){
																					return 0;
																				} else {
																					if(pX[5] <= 0){
																						return 0;
																					} else {
																						if(pX[6] <= -25){
																							return 0;
																						} else {
																							if(pX[6] <= 22){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													}
												}
											}
										} else {
											if(pX[9] <= 133){
												if(pX[9] <= 132){
													if(pX[7] <= 14){
														if(pX[8] <= 40){
															if(pX[6] <= 75){
																if(pX[9] <= 66){
																	if(pX[6] <= 42){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[7] <= -3){
																		return 0;
																	} else {
																		if(pX[1] <= 12){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																return 1;
															}
														} else {
															if(pX[0] <= 91){
																if(pX[6] <= -27){
																	if(pX[9] <= 63){
																		return 0;
																	} else {
																		if(pX[8] <= 76){
																			if(pX[5] <= 14){
																				return 1;
																			} else {
																				if(pX[9] <= 102){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[8] <= 65){
																		if(pX[9] <= 118){
																			if(pX[5] <= 42){
																				if(pX[1] <= 18){
																					if(pX[6] <= -22){
																						return 0;
																					} else {
																						if(pX[1] <= 16){
																							return 1;
																						} else {
																							if(pX[8] <= 48){
																								return 1;
																							} else {
																								if(pX[7] <= 10){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[1] <= 21){
																						if(pX[7] <= -16){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[9] <= 103){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[9] <= 130){
																				return 1;
																			} else {
																				if(pX[1] <= 16){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	} else {
																		if(pX[1] <= 16){
																			return 1;
																		} else {
																			if(pX[7] <= -17){
																				return 1;
																			} else {
																				if(pX[9] <= 61){
																					return 0;
																				} else {
																					if(pX[6] <= 44){
																						if(pX[0] <= 35){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		}
																	}
																}
															} else {
																if(pX[6] <= 54){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													} else {
														return 0;
													}
												} else {
													if(pX[7] <= -2){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												if(pX[8] <= 36){
													if(pX[0] <= 33){
														return 0;
													} else {
														if(pX[1] <= 13){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													if(pX[1] <= 18){
														if(pX[0] <= 34){
															if(pX[6] <= 11){
																return 1;
															} else {
																if(pX[5] <= -35){
																	return 0;
																} else {
																	if(pX[1] <= 14){
																		if(pX[1] <= 12){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[5] <= -23){
																if(pX[5] <= -24){
																	return 1;
																} else {
																	if(pX[0] <= 37){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[7] <= 9){
															if(pX[8] <= 45){
																if(pX[8] <= 41){
																	if(pX[7] <= -14){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[7] <= -18){
																	if(pX[8] <= 71){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[5] <= -64){
																		if(pX[1] <= 27){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[5] <= 6){
																return 1;
															} else {
																if(pX[8] <= 56){
																	if(pX[6] <= 45){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[9] <= 126){
											if(pX[8] <= 66){
												return 0;
											} else {
												if(pX[9] <= 66){
													return 0;
												} else {
													if(pX[1] <= 27){
														return 1;
													} else {
														return 0;
													}
												}
											}
										} else {
											if(pX[5] <= -7){
												if(pX[1] <= 22){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										}
									}
								} else {
									if(pX[8] <= 43){
										if(pX[6] <= 19){
											if(pX[0] <= 25){
												if(pX[8] <= 37){
													if(pX[6] <= 1){
														if(pX[0] <= 19){
															return 0;
														} else {
															if(pX[7] <= 2){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														return 1;
													}
												} else {
													if(pX[9] <= 225){
														if(pX[9] <= 222){
															if(pX[0] <= 18){
																if(pX[7] <= 2){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													} else {
														if(pX[1] <= 10){
															if(pX[5] <= -21){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[5] <= -27){
													return 0;
												} else {
													if(pX[1] <= 17){
														return 1;
													} else {
														if(pX[8] <= 40){
															return 0;
														} else {
															return 1;
														}
													}
												}
											}
										} else {
											if(pX[8] <= 39){
												if(pX[9] <= 220){
													return 0;
												} else {
													if(pX[7] <= -10){
														if(pX[6] <= 51){
															if(pX[8] <= 36){
																if(pX[9] <= 265){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[1] <= 11){
											if(pX[5] <= 27){
												if(pX[6] <= 13){
													if(pX[9] <= 221){
														if(pX[7] <= -6){
															return 0;
														} else {
															if(pX[6] <= 5){
																if(pX[9] <= 218){
																	if(pX[5] <= -17){
																		return 1;
																	} else {
																		if(pX[9] <= 216){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[8] <= 53){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[9] <= 223){
															return 1;
														} else {
															if(pX[0] <= 21){
																if(pX[8] <= 51){
																	return 0;
																} else {
																	if(pX[5] <= -20){
																		return 1;
																	} else {
																		if(pX[5] <= -2){
																			if(pX[7] <= 10){
																				return 0;
																			} else {
																				if(pX[8] <= 64){
																					if(pX[9] <= 236){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[9] <= 228){
																				if(pX[9] <= 226){
																					if(pX[7] <= -3){
																						return 0;
																					} else {
																						if(pX[6] <= 2){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[9] <= 257){
																					return 0;
																				} else {
																					if(pX[9] <= 272){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		}
																	}
																}
															} else {
																if(pX[5] <= -5){
																	return 1;
																} else {
																	if(pX[7] <= 3){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														}
													}
												} else {
													if(pX[5] <= 24){
														if(pX[5] <= 13){
															return 1;
														} else {
															if(pX[5] <= 17){
																return 0;
															} else {
																if(pX[8] <= 60){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													} else {
														return 0;
													}
												}
											} else {
												return 1;
											}
										} else {
											if(pX[5] <= 22){
												if(pX[1] <= 15){
													if(pX[5] <= 10){
														if(pX[1] <= 13){
															if(pX[8] <= 46){
																if(pX[9] <= 234){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																if(pX[8] <= 70){
																	return 1;
																} else {
																	if(pX[7] <= 6){
																		return 1;
																	} else {
																		if(pX[1] <= 12){
																			if(pX[0] <= 21){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															}
														} else {
															if(pX[9] <= 223){
																return 1;
															} else {
																if(pX[6] <= -24){
																	return 0;
																} else {
																	if(pX[6] <= 22){
																		if(pX[7] <= 7){
																			if(pX[6] <= 14){
																				return 1;
																			} else {
																				if(pX[9] <= 246){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[5] <= -25){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[0] <= 22){
															return 0;
														} else {
															if(pX[5] <= 11){
																return 0;
															} else {
																if(pX[8] <= 64){
																	if(pX[6] <= 20){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 1;
																}
															}
														}
													}
												} else {
													if(pX[0] <= 25){
														if(pX[0] <= 22){
															if(pX[7] <= 11){
																if(pX[8] <= 47){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													} else {
														if(pX[8] <= 65){
															if(pX[8] <= 47){
																return 1;
															} else {
																if(pX[1] <= 16){
																	return 0;
																} else {
																	if(pX[0] <= 29){
																		if(pX[0] <= 27){
																			if(pX[9] <= 233){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[6] <= 7){
																			return 0;
																		} else {
																			if(pX[6] <= 49){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															}
														} else {
															if(pX[6] <= -27){
																if(pX[1] <= 19){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														}
													}
												}
											} else {
												if(pX[7] <= 8){
													return 1;
												} else {
													if(pX[0] <= 33){
														if(pX[0] <= 26){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											}
										}
									}
								}
							}
						}
					}
				} else {
					if(pX[5] <= -28){
						if(pX[9] <= 266){
							if(pX[0] <= 101){
								if(pX[8] <= 4){
									return 0;
								} else {
									if(pX[6] <= 70){
										if(pX[8] <= 68){
											if(pX[5] <= -97){
												if(pX[9] <= 221){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											return 0;
										}
									} else {
										if(pX[1] <= 29){
											return 0;
										} else {
											return 1;
										}
									}
								}
							} else {
								return 0;
							}
						} else {
							if(pX[5] <= -59){
								if(pX[8] <= 8){
									return 0;
								} else {
									if(pX[0] <= 69){
										return 0;
									} else {
										return 1;
									}
								}
							} else {
								if(pX[8] <= 12){
									if(pX[6] <= 6){
										return 1;
									} else {
										return 0;
									}
								} else {
									return 1;
								}
							}
						}
					} else {
						if(pX[1] <= 18){
							if(pX[0] <= 20){
								return 0;
							} else {
								return 1;
							}
						} else {
							if(pX[0] <= 34){
								if(pX[1] <= 27){
									return 0;
								} else {
									if(pX[8] <= 26){
										return 0;
									} else {
										return 1;
									}
								}
							} else {
								if(pX[6] <= -62){
									return 1;
								} else {
									if(pX[9] <= 286){
										if(pX[6] <= -17){
											return 0;
										} else {
											if(pX[5] <= 52){
												if(pX[8] <= 25){
													if(pX[5] <= 11){
														if(pX[8] <= 8){
															if(pX[5] <= 5){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[7] <= 22){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														if(pX[9] <= 109){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													if(pX[1] <= 21){
														return 0;
													} else {
														if(pX[9] <= 196){
															if(pX[5] <= 17){
																if(pX[9] <= 176){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															return 1;
														}
													}
												}
											} else {
												if(pX[8] <= 23){
													return 0;
												} else {
													return 1;
												}
											}
										}
									} else {
										return 0;
									}
								}
							}
						}
					}
				}
			} else {
				if(pX[1] <= 40){
					if(pX[8] <= 22){
						if(pX[8] <= 8){
							if(pX[9] <= 53){
								return 1;
							} else {
								if(pX[6] <= -53){
									if(pX[7] <= -22){
										if(pX[5] <= -80){
											return 1;
										} else {
											return 0;
										}
									} else {
										if(pX[1] <= 33){
											if(pX[7] <= -14){
												if(pX[9] <= 328){
													return 1;
												} else {
													return 0;
												}
											} else {
												if(pX[9] <= 217){
													return 1;
												} else {
													return 0;
												}
											}
										} else {
											if(pX[5] <= -21){
												return 0;
											} else {
												return 1;
											}
										}
									}
								} else {
									if(pX[1] <= 13){
										if(pX[5] <= -94){
											return 1;
										} else {
											if(pX[5] <= -3){
												return 0;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[0] <= 95){
											if(pX[6] <= -32){
												if(pX[0] <= 75){
													if(pX[0] <= 74){
														if(pX[1] <= 25){
															return 0;
														} else {
															if(pX[0] <= 58){
																return 1;
															} else {
																if(pX[5] <= -40){
																	if(pX[6] <= -38){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														}
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											} else {
												if(pX[1] <= 32){
													if(pX[1] <= 17){
														if(pX[9] <= 333){
															if(pX[0] <= 59){
																return 0;
															} else {
																if(pX[0] <= 61){
																	if(pX[6] <= 30){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[1] <= 22){
															return 0;
														} else {
															if(pX[5] <= 118){
																if(pX[9] <= 94){
																	if(pX[0] <= 38){
																		if(pX[0] <= 33){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[9] <= 288){
																		if(pX[5] <= 23){
																			return 0;
																		} else {
																			if(pX[1] <= 23){
																				if(pX[5] <= 44){
																					if(pX[5] <= 42){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[5] <= 24){
																					if(pX[0] <= 80){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		if(pX[5] <= 74){
																			if(pX[9] <= 307){
																				return 0;
																			} else {
																				if(pX[6] <= 79){
																					if(pX[9] <= 308){
																						if(pX[6] <= 59){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[8] <= 3){
																							return 0;
																						} else {
																							if(pX[6] <= 46){
																								if(pX[1] <= 25){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								return 0;
																							}
																						}
																					}
																				} else {
																					if(pX[0] <= 82){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																return 1;
															}
														}
													}
												} else {
													if(pX[5] <= -87){
														if(pX[9] <= 276){
															if(pX[0] <= 92){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													} else {
														if(pX[6] <= 47){
															if(pX[0] <= 60){
																if(pX[9] <= 159){
																	return 0;
																} else {
																	if(pX[6] <= 44){
																		if(pX[9] <= 292){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[8] <= 6){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																return 0;
															}
														} else {
															if(pX[0] <= 90){
																return 0;
															} else {
																if(pX[6] <= 74){
																	return 0;
																} else {
																	if(pX[0] <= 92){
																		if(pX[1] <= 36){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														}
													}
												}
											}
										} else {
											if(pX[6] <= 53){
												if(pX[5] <= -41){
													return 0;
												} else {
													if(pX[8] <= 1){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												if(pX[8] <= 4){
													return 0;
												} else {
													if(pX[5] <= 65){
														if(pX[0] <= 96){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											}
										}
									}
								}
							}
						} else {
							if(pX[9] <= 289){
								if(pX[1] <= 14){
									if(pX[5] <= 17){
										if(pX[8] <= 10){
											return 1;
										} else {
											if(pX[9] <= 207){
												return 1;
											} else {
												return 0;
											}
										}
									} else {
										return 1;
									}
								} else {
									if(pX[0] <= 78){
										if(pX[6] <= -44){
											return 1;
										} else {
											if(pX[5] <= -108){
												return 1;
											} else {
												if(pX[9] <= 150){
													if(pX[5] <= 67){
														if(pX[1] <= 19){
															if(pX[1] <= 18){
																return 0;
															} else {
																if(pX[0] <= 41){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[0] <= 32){
																if(pX[8] <= 9){
																	if(pX[1] <= 24){
																		return 0;
																	} else {
																		if(pX[5] <= 4){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[5] <= -12){
																	if(pX[6] <= 19){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[8] <= 21){
																		return 0;
																	} else {
																		if(pX[0] <= 58){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															}
														}
													} else {
														return 1;
													}
												} else {
													if(pX[0] <= 57){
														return 0;
													} else {
														if(pX[1] <= 17){
															if(pX[7] <= -5){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[7] <= 23){
																return 0;
															} else {
																if(pX[8] <= 15){
																	return 0;
																} else {
																	if(pX[7] <= 27){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[7] <= 8){
											if(pX[5] <= 55){
												if(pX[9] <= 150){
													return 1;
												} else {
													if(pX[6] <= 48){
														if(pX[8] <= 9){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												}
											} else {
												if(pX[9] <= 172){
													return 1;
												} else {
													return 0;
												}
											}
										} else {
											if(pX[8] <= 15){
												return 0;
											} else {
												if(pX[1] <= 35){
													if(pX[0] <= 90){
														if(pX[0] <= 81){
															if(pX[9] <= 146){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													} else {
														if(pX[8] <= 18){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													return 0;
												}
											}
										}
									}
								}
							} else {
								if(pX[1] <= 20){
									return 1;
								} else {
									if(pX[0] <= 62){
										if(pX[1] <= 25){
											return 0;
										} else {
											if(pX[6] <= 40){
												return 1;
											} else {
												return 0;
											}
										}
									} else {
										if(pX[9] <= 312){
											if(pX[6] <= -50){
												return 1;
											} else {
												return 0;
											}
										} else {
											if(pX[1] <= 32){
												if(pX[0] <= 79){
													return 0;
												} else {
													if(pX[9] <= 324){
														return 1;
													} else {
														if(pX[9] <= 345){
															return 0;
														} else {
															return 1;
														}
													}
												}
											} else {
												return 0;
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[8] <= 35){
							if(pX[6] <= 34){
								if(pX[9] <= 140){
									if(pX[0] <= 62){
										return 0;
									} else {
										return 1;
									}
								} else {
									if(pX[5] <= -14){
										return 1;
									} else {
										if(pX[9] <= 216){
											if(pX[0] <= 42){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									}
								}
							} else {
								if(pX[0] <= 56){
									if(pX[8] <= 31){
										if(pX[9] <= 224){
											return 0;
										} else {
											return 1;
										}
									} else {
										if(pX[1] <= 27){
											return 0;
										} else {
											return 1;
										}
									}
								} else {
									if(pX[5] <= -133){
										return 0;
									} else {
										if(pX[7] <= 24){
											if(pX[0] <= 67){
												if(pX[9] <= 180){
													if(pX[6] <= 41){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[8] <= 27){
													if(pX[6] <= 114){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											}
										} else {
											return 0;
										}
									}
								}
							}
						} else {
							if(pX[1] <= 18){
								return 1;
							} else {
								if(pX[9] <= 142){
									if(pX[6] <= -20){
										if(pX[0] <= 40){
											return 0;
										} else {
											if(pX[9] <= 126){
												if(pX[7] <= -19){
													if(pX[9] <= 98){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[7] <= -6){
													return 1;
												} else {
													if(pX[5] <= -28){
														return 1;
													} else {
														return 0;
													}
												}
											}
										}
									} else {
										if(pX[5] <= 42){
											if(pX[5] <= -14){
												if(pX[8] <= 51){
													return 1;
												} else {
													return 0;
												}
											} else {
												if(pX[0] <= 56){
													return 0;
												} else {
													if(pX[9] <= 87){
														if(pX[7] <= -22){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												}
											}
										} else {
											if(pX[7] <= 11){
												return 1;
											} else {
												if(pX[7] <= 15){
													return 0;
												} else {
													return 1;
												}
											}
										}
									}
								} else {
									if(pX[9] <= 216){
										if(pX[8] <= 39){
											if(pX[0] <= 44){
												return 0;
											} else {
												return 1;
											}
										} else {
											if(pX[9] <= 214){
												if(pX[5] <= -56){
													if(pX[1] <= 24){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[5] <= 13){
														return 1;
													} else {
														if(pX[9] <= 153){
															if(pX[7] <= 13){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												}
											} else {
												if(pX[0] <= 61){
													return 0;
												} else {
													return 1;
												}
											}
										}
									} else {
										return 1;
									}
								}
							}
						}
					}
				} else {
					if(pX[2] <= 3){
						if(pX[8] <= 5){
							if(pX[9] <= 393){
								if(pX[9] <= 216){
									if(pX[5] <= 57){
										return 0;
									} else {
										return 1;
									}
								} else {
									if(pX[5] <= -130){
										return 1;
									} else {
										return 0;
									}
								}
							} else {
								return 1;
							}
						} else {
							if(pX[1] <= 44){
								if(pX[5] <= 59){
									if(pX[8] <= 83){
										if(pX[8] <= 9){
											if(pX[0] <= 69){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 1;
										}
									} else {
										if(pX[8] <= 86){
											return 0;
										} else {
											return 1;
										}
									}
								} else {
									if(pX[8] <= 42){
										return 0;
									} else {
										return 1;
									}
								}
							} else {
								if(pX[6] <= 93){
									if(pX[8] <= 19){
										if(pX[8] <= 12){
											return 1;
										} else {
											if(pX[6] <= 85){
												if(pX[6] <= 48){
													return 1;
												} else {
													if(pX[9] <= 322){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[6] <= 86){
											return 1;
										} else {
											if(pX[7] <= 45){
												return 1;
											} else {
												return 0;
											}
										}
									}
								} else {
									return 0;
								}
							}
						}
					} else {
						if(pX[6] <= 25){
							return 1;
						} else {
							return 0;
						}
					}
				}
			}
		}
	} else {
		if(pX[8] <= 6){
			if(pX[5] <= -192){
				if(pX[8] <= 0){
					if(pX[9] <= 288){
						return 1;
					} else {
						return 0;
					}
				} else {
					return 1;
				}
			} else {
				if(pX[6] <= -76){
					if(pX[0] <= 116){
						if(pX[0] <= 108){
							return 1;
						} else {
							return 0;
						}
					} else {
						if(pX[8] <= 0){
							if(pX[9] <= 332){
								return 1;
							} else {
								return 0;
							}
						} else {
							return 1;
						}
					}
				} else {
					if(pX[7] <= -45){
						return 1;
					} else {
						if(pX[1] <= 11){
							if(pX[7] <= -1){
								return 1;
							} else {
								return 0;
							}
						} else {
							if(pX[1] <= 20){
								return 0;
							} else {
								if(pX[2] <= 3){
									if(pX[9] <= 256){
										if(pX[1] <= 25){
											return 1;
										} else {
											if(pX[1] <= 34){
												if(pX[9] <= 237){
													return 0;
												} else {
													if(pX[0] <= 108){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												if(pX[7] <= 23){
													if(pX[5] <= 112){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 0;
												}
											}
										}
									} else {
										if(pX[6] <= 114){
											if(pX[8] <= 1){
												return 0;
											} else {
												if(pX[9] <= 328){
													if(pX[7] <= -23){
														return 1;
													} else {
														if(pX[0] <= 106){
															if(pX[5] <= -47){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													}
												} else {
													if(pX[1] <= 24){
														return 0;
													} else {
														return 1;
													}
												}
											}
										} else {
											return 1;
										}
									}
								} else {
									return 0;
								}
							}
						}
					}
				}
			}
		} else {
			if(pX[1] <= 17){
				if(pX[6] <= -131){
					if(pX[9] <= 150){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[6] <= 117){
						if(pX[1] <= 12){
							if(pX[0] <= 111){
								return 0;
							} else {
								if(pX[8] <= 15){
									return 0;
								} else {
									return 1;
								}
							}
						} else {
							if(pX[9] <= 281){
								if(pX[7] <= -6){
									return 1;
								} else {
									if(pX[0] <= 112){
										return 0;
									} else {
										return 1;
									}
								}
							} else {
								return 1;
							}
						}
					} else {
						if(pX[7] <= -3){
							return 0;
						} else {
							return 1;
						}
					}
				}
			} else {
				if(pX[8] <= 12){
					if(pX[7] <= 25){
						if(pX[0] <= 107){
							if(pX[9] <= 349){
								return 0;
							} else {
								return 1;
							}
						} else {
							if(pX[6] <= 84){
								if(pX[9] <= 241){
									if(pX[8] <= 7){
										return 0;
									} else {
										return 1;
									}
								} else {
									if(pX[6] <= 45){
										return 1;
									} else {
										if(pX[8] <= 9){
											return 0;
										} else {
											return 1;
										}
									}
								}
							} else {
								if(pX[5] <= -132){
									return 1;
								} else {
									if(pX[6] <= 88){
										return 0;
									} else {
										if(pX[9] <= 86){
											return 1;
										} else {
											if(pX[6] <= 103){
												return 1;
											} else {
												if(pX[5] <= 92){
													if(pX[9] <= 189){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											}
										}
									}
								}
							}
						}
					} else {
						return 1;
					}
				} else {
					if(pX[8] <= 45){
						if(pX[6] <= 160){
							if(pX[2] <= 2){
								if(pX[5] <= -203){
									return 0;
								} else {
									if(pX[5] <= -92){
										if(pX[1] <= 34){
											return 1;
										} else {
											if(pX[7] <= -27){
												if(pX[0] <= 141){
													return 1;
												} else {
													if(pX[9] <= 247){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[1] <= 33){
											if(pX[6] <= -106){
												if(pX[8] <= 28){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									}
								}
							} else {
								if(pX[0] <= 139){
									if(pX[8] <= 43){
										if(pX[2] <= 3){
											if(pX[6] <= -60){
												return 1;
											} else {
												if(pX[5] <= -39){
													if(pX[5] <= -58){
														if(pX[5] <= -81){
															if(pX[8] <= 15){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[1] <= 28){
																return 1;
															} else {
																if(pX[6] <= -30){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[1] <= 92){
												return 1;
											} else {
												return 0;
											}
										}
									} else {
										if(pX[1] <= 24){
											return 0;
										} else {
											return 1;
										}
									}
								} else {
									return 1;
								}
							}
						} else {
							if(pX[0] <= 197){
								if(pX[5] <= 123){
									return 0;
								} else {
									return 1;
								}
							} else {
								return 1;
							}
						}
					} else {
						if(pX[2] <= 2){
							if(pX[5] <= 37){
								if(pX[0] <= 138){
									if(pX[0] <= 118){
										if(pX[5] <= -6){
											return 1;
										} else {
											return 0;
										}
									} else {
										if(pX[0] <= 120){
											return 0;
										} else {
											if(pX[6] <= -1){
												return 1;
											} else {
												return 0;
											}
										}
									}
								} else {
									return 1;
								}
							} else {
								return 1;
							}
						} else {
							if(pX[1] <= 173){
								if(pX[8] <= 87){
									if(pX[6] <= 62){
										if(pX[5] <= -2){
											return 1;
										} else {
											if(pX[9] <= 219){
												return 1;
											} else {
												if(pX[6] <= 57){
													if(pX[1] <= 38){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											}
										}
									} else {
										return 1;
									}
								} else {
									if(pX[5] <= 71){
										return 1;
									} else {
										if(pX[9] <= 149){
											return 0;
										} else {
											return 1;
										}
									}
								}
							} else {
								if(pX[6] <= -63){
									if(pX[0] <= 222){
										return 0;
									} else {
										return 1;
									}
								} else {
									return 1;
								}
							}
						}
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict1( short const pX[10]){
	if(pX[0] <= 105){
		if(pX[8] <= 27){
			if(pX[6] <= -66){
				if(pX[8] <= 7){
					if(pX[6] <= -88){
						if(pX[1] <= 22){
							return 0;
						} else {
							return 1;
						}
					} else {
						if(pX[0] <= 80){
							if(pX[7] <= 19){
								if(pX[7] <= -26){
									return 1;
								} else {
									if(pX[0] <= 64){
										return 1;
									} else {
										return 0;
									}
								}
							} else {
								return 1;
							}
						} else {
							if(pX[5] <= -92){
								return 1;
							} else {
								if(pX[9] <= 200){
									return 1;
								} else {
									return 0;
								}
							}
						}
					}
				} else {
					if(pX[1] <= 24){
						if(pX[1] <= 19){
							return 1;
						} else {
							if(pX[2] <= 2){
								if(pX[9] <= 188){
									if(pX[5] <= -14){
										return 1;
									} else {
										return 0;
									}
								} else {
									return 1;
								}
							} else {
								return 0;
							}
						}
					} else {
						return 1;
					}
				}
			} else {
				if(pX[8] <= 9){
					if(pX[1] <= 9){
						if(pX[6] <= 18){
							if(pX[8] <= 0){
								return 0;
							} else {
								if(pX[1] <= 5){
									if(pX[6] <= -2){
										return 0;
									} else {
										if(pX[0] <= 27){
											if(pX[7] <= 1){
												if(pX[8] <= 5){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											return 0;
										}
									}
								} else {
									if(pX[9] <= 230){
										if(pX[0] <= 17){
											if(pX[7] <= 9){
												if(pX[6] <= 10){
													return 1;
												} else {
													if(pX[9] <= 159){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												return 0;
											}
										} else {
											if(pX[0] <= 32){
												if(pX[8] <= 1){
													if(pX[5] <= -6){
														return 1;
													} else {
														if(pX[5] <= 15){
															if(pX[9] <= 148){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													}
												} else {
													if(pX[9] <= 166){
														return 0;
													} else {
														if(pX[6] <= -6){
															return 0;
														} else {
															if(pX[7] <= 8){
																if(pX[0] <= 20){
																	if(pX[9] <= 181){
																		if(pX[8] <= 6){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[9] <= 168){
																		return 1;
																	} else {
																		if(pX[1] <= 6){
																			if(pX[6] <= 14){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																return 1;
															}
														}
													}
												}
											} else {
												if(pX[1] <= 7){
													return 1;
												} else {
													if(pX[6] <= -14){
														if(pX[9] <= 162){
															if(pX[9] <= 139){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											}
										}
									} else {
										if(pX[6] <= -9){
											return 0;
										} else {
											if(pX[7] <= 3){
												return 1;
											} else {
												if(pX[8] <= 7){
													return 1;
												} else {
													return 0;
												}
											}
										}
									}
								}
							}
						} else {
							if(pX[9] <= 165){
								if(pX[1] <= 2){
									return 0;
								} else {
									if(pX[9] <= 126){
										if(pX[8] <= 6){
											if(pX[9] <= 76){
												return 0;
											} else {
												if(pX[1] <= 8){
													return 1;
												} else {
													if(pX[6] <= 31){
														if(pX[6] <= 21){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											}
										} else {
											return 0;
										}
									} else {
										if(pX[9] <= 149){
											if(pX[8] <= 7){
												return 1;
											} else {
												if(pX[9] <= 129){
													return 1;
												} else {
													return 0;
												}
											}
										} else {
											if(pX[1] <= 6){
												return 1;
											} else {
												if(pX[1] <= 8){
													return 0;
												} else {
													return 1;
												}
											}
										}
									}
								}
							} else {
								if(pX[7] <= -4){
									if(pX[0] <= 31){
										return 1;
									} else {
										if(pX[9] <= 203){
											if(pX[8] <= 0){
												return 0;
											} else {
												if(pX[0] <= 34){
													return 0;
												} else {
													return 1;
												}
											}
										} else {
											if(pX[0] <= 34){
												return 1;
											} else {
												if(pX[0] <= 49){
													if(pX[0] <= 47){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											}
										}
									}
								} else {
									if(pX[8] <= 6){
										if(pX[8] <= 1){
											return 0;
										} else {
											if(pX[6] <= 21){
												return 0;
											} else {
												return 1;
											}
										}
									} else {
										return 0;
									}
								}
							}
						}
					} else {
						if(pX[0] <= 22){
							if(pX[1] <= 19){
								if(pX[7] <= -16){
									return 1;
								} else {
									if(pX[6] <= 18){
										if(pX[5] <= -33){
											return 1;
										} else {
											if(pX[0] <= 17){
												if(pX[6] <= 6){
													if(pX[9] <= 235){
														if(pX[6] <= 4){
															if(pX[8] <= 6){
																if(pX[6] <= 1){
																	if(pX[9] <= 180){
																		return 0;
																	} else {
																		if(pX[7] <= 9){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[0] <= 14){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 0;
															}
														} else {
															if(pX[8] <= 7){
																if(pX[7] <= -5){
																	if(pX[0] <= 14){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[9] <= 189){
																	if(pX[7] <= 5){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 1;
																}
															}
														}
													} else {
														return 1;
													}
												} else {
													if(pX[8] <= 8){
														if(pX[0] <= 12){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												}
											} else {
												if(pX[6] <= -21){
													if(pX[5] <= -12){
														return 1;
													} else {
														return 0;
													}
												} else {
													if(pX[6] <= 14){
														if(pX[0] <= 19){
															if(pX[6] <= 10){
																return 0;
															} else {
																if(pX[7] <= -8){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[1] <= 12){
																if(pX[8] <= 4){
																	if(pX[6] <= 8){
																		return 0;
																	} else {
																		if(pX[6] <= 10){
																			if(pX[0] <= 21){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[8] <= 5){
																	if(pX[6] <= 11){
																		return 0;
																	} else {
																		if(pX[7] <= -9){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[5] <= -19){
																		return 1;
																	} else {
																		if(pX[8] <= 8){
																			if(pX[9] <= 231){
																				if(pX[1] <= 14){
																					return 0;
																				} else {
																					if(pX[0] <= 20){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															}
														}
													} else {
														if(pX[6] <= 15){
															if(pX[5] <= 23){
																if(pX[8] <= 1){
																	return 1;
																} else {
																	if(pX[0] <= 20){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 0;
															}
														} else {
															if(pX[5] <= 21){
																if(pX[7] <= -10){
																	if(pX[1] <= 14){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[8] <= 7){
																		return 0;
																	} else {
																		if(pX[7] <= 5){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																return 1;
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[9] <= 206){
											if(pX[1] <= 11){
												if(pX[8] <= 4){
													if(pX[0] <= 17){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 0;
												}
											} else {
												if(pX[0] <= 18){
													return 1;
												} else {
													if(pX[0] <= 20){
														return 0;
													} else {
														return 1;
													}
												}
											}
										} else {
											return 1;
										}
									}
								}
							} else {
								return 1;
							}
						} else {
							if(pX[7] <= -63){
								return 1;
							} else {
								if(pX[5] <= -54){
									if(pX[6] <= -48){
										if(pX[0] <= 68){
											return 1;
										} else {
											if(pX[5] <= -117){
												return 1;
											} else {
												if(pX[9] <= 270){
													if(pX[1] <= 31){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[0] <= 88){
														if(pX[8] <= 2){
															if(pX[7] <= -9){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												}
											}
										}
									} else {
										if(pX[7] <= 33){
											if(pX[2] <= 2){
												if(pX[6] <= 65){
													if(pX[1] <= 35){
														if(pX[7] <= -5){
															if(pX[9] <= 119){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[6] <= -39){
																return 1;
															} else {
																if(pX[8] <= 4){
																	return 0;
																} else {
																	if(pX[5] <= -61){
																		if(pX[9] <= 103){
																			return 1;
																		} else {
																			if(pX[7] <= 10){
																				if(pX[0] <= 59){
																					return 1;
																				} else {
																					if(pX[9] <= 306){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[8] <= 5){
																			if(pX[5] <= -59){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															}
														}
													} else {
														return 1;
													}
												} else {
													if(pX[0] <= 74){
														if(pX[7] <= 10){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[6] <= 66){
															return 1;
														} else {
															if(pX[9] <= 285){
																return 0;
															} else {
																if(pX[7] <= 19){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													}
												}
											} else {
												if(pX[1] <= 13){
													return 1;
												} else {
													if(pX[7] <= -19){
														if(pX[0] <= 69){
															if(pX[6] <= 37){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[0] <= 95){
																return 0;
															} else {
																if(pX[6] <= 48){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[9] <= 175){
															return 1;
														} else {
															if(pX[7] <= 24){
																if(pX[5] <= -125){
																	if(pX[6] <= 81){
																		return 0;
																	} else {
																		if(pX[5] <= -144){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[0] <= 68){
																	if(pX[9] <= 294){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														}
													}
												}
											}
										} else {
											if(pX[7] <= 34){
												return 1;
											} else {
												if(pX[9] <= 337){
													return 0;
												} else {
													return 1;
												}
											}
										}
									}
								} else {
									if(pX[9] <= 99){
										if(pX[0] <= 30){
											if(pX[5] <= 4){
												if(pX[9] <= 57){
													return 1;
												} else {
													if(pX[8] <= 7){
														return 0;
													} else {
														if(pX[9] <= 94){
															return 0;
														} else {
															return 1;
														}
													}
												}
											} else {
												return 0;
											}
										} else {
											if(pX[1] <= 29){
												if(pX[8] <= 2){
													if(pX[1] <= 22){
														return 0;
													} else {
														if(pX[7] <= -16){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													if(pX[0] <= 37){
														if(pX[1] <= 25){
															if(pX[0] <= 33){
																return 0;
															} else {
																if(pX[5] <= -13){
																	return 1;
																} else {
																	if(pX[1] <= 17){
																		if(pX[9] <= 73){
																			return 1;
																		} else {
																			if(pX[5] <= 29){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[8] <= 7){
															return 1;
														} else {
															return 0;
														}
													}
												}
											} else {
												return 0;
											}
										}
									} else {
										if(pX[5] <= 108){
											if(pX[7] <= 59){
												if(pX[0] <= 27){
													if(pX[5] <= 34){
														if(pX[1] <= 21){
															if(pX[5] <= -37){
																return 1;
															} else {
																if(pX[5] <= 0){
																	if(pX[7] <= 13){
																		if(pX[1] <= 11){
																			if(pX[5] <= -14){
																				if(pX[9] <= 178){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[8] <= 2){
																		if(pX[0] <= 23){
																			if(pX[9] <= 214){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[1] <= 12){
																				return 0;
																			} else {
																				if(pX[5] <= 18){
																					if(pX[6] <= 21){
																						return 0;
																					} else {
																						if(pX[5] <= 6){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					if(pX[6] <= 15){
																						if(pX[7] <= 5){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[8] <= 8){
																			if(pX[0] <= 24){
																				if(pX[5] <= 9){
																					if(pX[6] <= -10){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[9] <= 230){
																					if(pX[6] <= 25){
																						if(pX[7] <= 14){
																							if(pX[6] <= 17){
																								return 0;
																							} else {
																								if(pX[5] <= 3){
																									if(pX[1] <= 13){
																										return 1;
																									} else {
																										return 0;
																									}
																								} else {
																									return 0;
																								}
																							}
																						} else {
																							return 1;
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[8] <= 7){
																						if(pX[5] <= 15){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 1;
																					}
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[1] <= 16){
															if(pX[6] <= -1){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[6] <= -9){
														if(pX[5] <= -39){
															if(pX[0] <= 34){
																if(pX[7] <= -1){
																	return 0;
																} else {
																	if(pX[1] <= 12){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[5] <= -41){
																	if(pX[7] <= -16){
																		if(pX[6] <= -64){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[6] <= -26){
																		if(pX[7] <= -20){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[6] <= -36){
																if(pX[0] <= 99){
																	return 0;
																} else {
																	if(pX[7] <= -7){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[0] <= 31){
																	if(pX[6] <= -27){
																		if(pX[7] <= -13){
																			return 0;
																		} else {
																			if(pX[9] <= 230){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[6] <= -18){
																			if(pX[0] <= 30){
																				return 0;
																			} else {
																				if(pX[7] <= -5){
																					return 0;
																				} else {
																					if(pX[7] <= -3){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[5] <= 42){
																		return 0;
																	} else {
																		if(pX[6] <= -20){
																			return 0;
																		} else {
																			if(pX[5] <= 43){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															}
														}
													} else {
														if(pX[1] <= 13){
															if(pX[9] <= 120){
																if(pX[9] <= 109){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																if(pX[2] <= 2){
																	if(pX[9] <= 252){
																		if(pX[9] <= 157){
																			if(pX[7] <= 10){
																				if(pX[6] <= 28){
																					if(pX[5] <= 33){
																						return 0;
																					} else {
																						if(pX[1] <= 12){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[7] <= -11){
																				return 1;
																			} else {
																				if(pX[6] <= 34){
																					if(pX[5] <= 8){
																						if(pX[5] <= 7){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[0] <= 41){
																						return 1;
																					} else {
																						if(pX[7] <= -5){
																							return 0;
																						} else {
																							if(pX[0] <= 46){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[1] <= 10){
																			return 1;
																		} else {
																			if(pX[5] <= 28){
																				if(pX[6] <= 50){
																					if(pX[1] <= 11){
																						if(pX[5] <= 23){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						if(pX[7] <= -4){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[6] <= 2){
																if(pX[7] <= -22){
																	return 1;
																} else {
																	if(pX[6] <= 0){
																		if(pX[6] <= -7){
																			if(pX[5] <= -4){
																				if(pX[1] <= 24){
																					if(pX[7] <= -11){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[5] <= -15){
																				if(pX[6] <= -5){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[1] <= 42){
																	if(pX[0] <= 98){
																		if(pX[8] <= 5){
																			if(pX[5] <= -50){
																				if(pX[1] <= 23){
																					if(pX[5] <= -51){
																						if(pX[1] <= 16){
																							if(pX[7] <= -13){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[8] <= 3){
																					if(pX[6] <= 18){
																						if(pX[7] <= 12){
																							return 0;
																						} else {
																							if(pX[8] <= 2){
																								if(pX[2] <= 2){
																									if(pX[9] <= 223){
																										if(pX[7] <= 14){
																											return 0;
																										} else {
																											if(pX[7] <= 21){
																												return 1;
																											} else {
																												return 0;
																											}
																										}
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						if(pX[7] <= -24){
																							if(pX[9] <= 285){
																								return 0;
																							} else {
																								if(pX[7] <= -25){
																									if(pX[9] <= 297){
																										return 1;
																									} else {
																										return 0;
																									}
																								} else {
																									if(pX[8] <= 2){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						} else {
																							if(pX[0] <= 29){
																								if(pX[5] <= 4){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[5] <= 31){
																									if(pX[8] <= 2){
																										return 0;
																									} else {
																										if(pX[0] <= 44){
																											if(pX[9] <= 238){
																												return 0;
																											} else {
																												return 1;
																											}
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									if(pX[0] <= 33){
																										if(pX[7] <= -1){
																											return 1;
																										} else {
																											return 0;
																										}
																									} else {
																										if(pX[6] <= 44){
																											if(pX[5] <= 36){
																												if(pX[1] <= 30){
																													return 0;
																												} else {
																													return 1;
																												}
																											} else {
																												return 0;
																											}
																										} else {
																											if(pX[0] <= 51){
																												if(pX[5] <= 33){
																													return 1;
																												} else {
																													return 0;
																												}
																											} else {
																												if(pX[2] <= 2){
																													if(pX[9] <= 223){
																														return 0;
																													} else {
																														if(pX[7] <= -14){
																															if(pX[1] <= 22){
																																if(pX[1] <= 19){
																																	if(pX[0] <= 68){
																																		return 1;
																																	} else {
																																		return 0;
																																	}
																																} else {
																																	return 1;
																																}
																															} else {
																																return 0;
																															}
																														} else {
																															if(pX[9] <= 227){
																																return 1;
																															} else {
																																return 0;
																															}
																														}
																													}
																												} else {
																													if(pX[6] <= 50){
																														if(pX[5] <= 48){
																															return 0;
																														} else {
																															if(pX[9] <= 256){
																																if(pX[1] <= 18){
																																	return 1;
																																} else {
																																	return 0;
																																}
																															} else {
																																if(pX[5] <= 61){
																																	return 1;
																																} else {
																																	return 0;
																																}
																															}
																														}
																													} else {
																														if(pX[1] <= 36){
																															if(pX[0] <= 74){
																																if(pX[9] <= 249){
																																	return 0;
																																} else {
																																	if(pX[6] <= 68){
																																		return 0;
																																	} else {
																																		if(pX[7] <= 0){
																																			return 0;
																																		} else {
																																			if(pX[5] <= 44){
																																				return 1;
																																			} else {
																																				return 0;
																																			}
																																		}
																																	}
																																}
																															} else {
																																return 0;
																															}
																														} else {
																															if(pX[1] <= 37){
																																return 1;
																															} else {
																																return 0;
																															}
																														}
																													}
																												}
																											}
																										}
																									}
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[1] <= 35){
																						if(pX[5] <= 19){
																							if(pX[1] <= 14){
																								if(pX[9] <= 207){
																									return 0;
																								} else {
																									if(pX[6] <= 28){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							} else {
																								if(pX[2] <= 2){
																									if(pX[7] <= 1){
																										return 0;
																									} else {
																										if(pX[7] <= 6){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									return 0;
																								}
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[0] <= 48){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[9] <= 287){
																				if(pX[2] <= 2){
																					if(pX[6] <= 58){
																						if(pX[8] <= 7){
																							if(pX[5] <= 19){
																								if(pX[0] <= 33){
																									if(pX[5] <= 18){
																										if(pX[7] <= -23){
																											return 1;
																										} else {
																											if(pX[5] <= 8){
																												return 0;
																											} else {
																												if(pX[6] <= 27){
																													return 0;
																												} else {
																													return 1;
																												}
																											}
																										}
																									} else {
																										if(pX[1] <= 17){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[1] <= 23){
																									return 0;
																								} else {
																									if(pX[1] <= 27){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						} else {
																							if(pX[9] <= 201){
																								return 0;
																							} else {
																								if(pX[8] <= 8){
																									if(pX[7] <= -8){
																										if(pX[5] <= 27){
																											if(pX[6] <= 29){
																												return 0;
																											} else {
																												return 1;
																											}
																										} else {
																											return 0;
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									if(pX[7] <= 7){
																										if(pX[7] <= -5){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								}
																							}
																						}
																					} else {
																						if(pX[8] <= 7){
																							if(pX[0] <= 66){
																								return 1;
																							} else {
																								if(pX[5] <= 57){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							if(pX[6] <= 60){
																								if(pX[7] <= -11){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[1] <= 23){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[0] <= 61){
																						if(pX[1] <= 31){
																							if(pX[8] <= 7){
																								return 0;
																							} else {
																								if(pX[0] <= 60){
																									return 0;
																								} else {
																									if(pX[1] <= 19){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						} else {
																							if(pX[0] <= 56){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				if(pX[5] <= 11){
																					if(pX[9] <= 297){
																						if(pX[9] <= 296){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[1] <= 23){
																						if(pX[1] <= 17){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 1;
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[9] <= 151){
																			if(pX[8] <= 6){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[7] <= 12){
																				return 0;
																			} else {
																				if(pX[7] <= 16){
																					if(pX[8] <= 4){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[6] <= 52){
																		if(pX[0] <= 65){
																			return 1;
																		} else {
																			if(pX[8] <= 4){
																				return 0;
																			} else {
																				if(pX[0] <= 78){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	} else {
																		if(pX[0] <= 83){
																			if(pX[9] <= 335){
																				if(pX[5] <= 60){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[5] <= -21){
																				if(pX[1] <= 49){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[0] <= 80){
													return 1;
												} else {
													return 0;
												}
											}
										} else {
											if(pX[2] <= 2){
												return 1;
											} else {
												if(pX[6] <= 29){
													return 1;
												} else {
													return 0;
												}
											}
										}
									}
								}
							}
						}
					}
				} else {
					if(pX[1] <= 40){
						if(pX[9] <= 217){
							if(pX[9] <= 103){
								if(pX[0] <= 44){
									if(pX[0] <= 18){
										if(pX[9] <= 84){
											if(pX[8] <= 20){
												if(pX[0] <= 17){
													if(pX[6] <= -1){
														return 1;
													} else {
														if(pX[1] <= 9){
															return 1;
														} else {
															if(pX[8] <= 16){
																return 0;
															} else {
																if(pX[0] <= 12){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													}
												} else {
													if(pX[9] <= 44){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												if(pX[1] <= 6){
													return 1;
												} else {
													return 0;
												}
											}
										} else {
											return 1;
										}
									} else {
										if(pX[9] <= 102){
											if(pX[1] <= 18){
												if(pX[0] <= 20){
													if(pX[7] <= -12){
														return 1;
													} else {
														if(pX[5] <= -14){
															return 1;
														} else {
															if(pX[5] <= 23){
																if(pX[5] <= -4){
																	if(pX[7] <= -5){
																		if(pX[6] <= 1){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[1] <= 13){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													}
												} else {
													if(pX[1] <= 9){
														if(pX[6] <= 13){
															return 0;
														} else {
															if(pX[9] <= 87){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														if(pX[1] <= 11){
															if(pX[0] <= 25){
																if(pX[0] <= 23){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														} else {
															if(pX[5] <= -15){
																if(pX[7] <= 0){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																if(pX[6] <= 0){
																	return 0;
																} else {
																	if(pX[5] <= 33){
																		if(pX[9] <= 94){
																			if(pX[9] <= 88){
																				if(pX[0] <= 27){
																					if(pX[0] <= 21){
																						if(pX[5] <= 8){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						if(pX[1] <= 16){
																							if(pX[9] <= 83){
																								if(pX[6] <= 18){
																									if(pX[7] <= 1){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							if(pX[7] <= 6){
																								if(pX[6] <= 19){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[6] <= 13){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[6] <= 17){
																			return 1;
																		} else {
																			if(pX[7] <= -3){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[6] <= -26){
													return 1;
												} else {
													if(pX[9] <= 70){
														if(pX[6] <= 21){
															return 0;
														} else {
															if(pX[7] <= -12){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														if(pX[5] <= -12){
															if(pX[0] <= 37){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													}
												}
											}
										} else {
											if(pX[7] <= 10){
												return 1;
											} else {
												return 0;
											}
										}
									}
								} else {
									if(pX[1] <= 13){
										if(pX[9] <= 79){
											return 1;
										} else {
											if(pX[0] <= 47){
												return 0;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[6] <= -35){
											return 1;
										} else {
											if(pX[5] <= -28){
												return 0;
											} else {
												if(pX[6] <= 35){
													return 1;
												} else {
													if(pX[7] <= -11){
														return 0;
													} else {
														if(pX[6] <= 79){
															return 0;
														} else {
															return 1;
														}
													}
												}
											}
										}
									}
								}
							} else {
								if(pX[9] <= 193){
									if(pX[5] <= 79){
										if(pX[5] <= 24){
											if(pX[5] <= 0){
												if(pX[5] <= -16){
													if(pX[7] <= 15){
														if(pX[0] <= 15){
															return 1;
														} else {
															if(pX[9] <= 149){
																if(pX[7] <= 11){
																	if(pX[6] <= -20){
																		if(pX[6] <= -23){
																			if(pX[7] <= 6){
																				return 0;
																			} else {
																				if(pX[9] <= 106){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[9] <= 125){
																				if(pX[7] <= 8){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[9] <= 140){
																			if(pX[8] <= 23){
																				return 0;
																			} else {
																				if(pX[0] <= 25){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[8] <= 23){
																				if(pX[1] <= 5){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[5] <= -20){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[9] <= 141){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[0] <= 58){
																	if(pX[6] <= -8){
																		if(pX[9] <= 173){
																			if(pX[7] <= 6){
																				if(pX[2] <= 2){
																					if(pX[1] <= 3){
																						return 1;
																					} else {
																						if(pX[0] <= 18){
																							return 1;
																						} else {
																							if(pX[6] <= -26){
																								if(pX[7] <= 0){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[1] <= 3){
																			return 1;
																		} else {
																			if(pX[6] <= 11){
																				if(pX[5] <= -40){
																					return 1;
																				} else {
																					if(pX[8] <= 18){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				if(pX[8] <= 19){
																					return 0;
																				} else {
																					if(pX[1] <= 18){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			}
																		}
																	}
																} else {
																	if(pX[1] <= 15){
																		return 1;
																	} else {
																		if(pX[7] <= -18){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															}
														}
													} else {
														if(pX[7] <= 16){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													if(pX[0] <= 11){
														return 1;
													} else {
														if(pX[0] <= 46){
															if(pX[5] <= -13){
																if(pX[2] <= 2){
																	if(pX[8] <= 11){
																		if(pX[1] <= 11){
																			if(pX[9] <= 175){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[9] <= 121){
																	if(pX[9] <= 113){
																		return 0;
																	} else {
																		if(pX[7] <= 5){
																			if(pX[6] <= 0){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[0] <= 22){
																		if(pX[7] <= -15){
																			return 1;
																		} else {
																			if(pX[6] <= 17){
																				if(pX[9] <= 145){
																					return 0;
																				} else {
																					if(pX[5] <= -6){
																						if(pX[7] <= -2){
																							if(pX[5] <= -7){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							if(pX[8] <= 19){
																								return 1;
																							} else {
																								if(pX[0] <= 17){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					} else {
																						if(pX[1] <= 11){
																							return 0;
																						} else {
																							if(pX[5] <= -1){
																								return 0;
																							} else {
																								if(pX[7] <= -8){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				}
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[6] <= -31){
																			return 1;
																		} else {
																			if(pX[5] <= -12){
																				if(pX[0] <= 25){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															}
														} else {
															if(pX[1] <= 16){
																return 1;
															} else {
																return 0;
															}
														}
													}
												}
											} else {
												if(pX[1] <= 14){
													if(pX[6] <= -6){
														if(pX[5] <= 2){
															if(pX[7] <= 11){
																if(pX[6] <= -7){
																	return 0;
																} else {
																	if(pX[1] <= 9){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[6] <= -20){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[6] <= -14){
																return 0;
															} else {
																if(pX[1] <= 8){
																	return 1;
																} else {
																	if(pX[9] <= 177){
																		return 0;
																	} else {
																		if(pX[8] <= 17){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															}
														}
													} else {
														if(pX[0] <= 45){
															if(pX[8] <= 14){
																if(pX[8] <= 13){
																	if(pX[0] <= 14){
																		return 1;
																	} else {
																		if(pX[9] <= 145){
																			if(pX[5] <= 23){
																				if(pX[6] <= 23){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[7] <= 0){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[7] <= -13){
																				return 1;
																			} else {
																				if(pX[0] <= 21){
																					return 0;
																				} else {
																					if(pX[0] <= 39){
																						if(pX[7] <= -8){
																							return 0;
																						} else {
																							if(pX[9] <= 154){
																								return 1;
																							} else {
																								if(pX[9] <= 181){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					} else {
																						return 1;
																					}
																				}
																			}
																		}
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[1] <= 9){
																	if(pX[5] <= 5){
																		return 1;
																	} else {
																		if(pX[9] <= 147){
																			if(pX[1] <= 7){
																				if(pX[6] <= 3){
																					return 1;
																				} else {
																					if(pX[0] <= 19){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[8] <= 21){
																				if(pX[9] <= 180){
																					if(pX[8] <= 15){
																						return 0;
																					} else {
																						if(pX[6] <= 12){
																							return 0;
																						} else {
																							if(pX[1] <= 4){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					}
																				} else {
																					if(pX[6] <= 12){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[5] <= 3){
																		return 0;
																	} else {
																		if(pX[6] <= 15){
																			if(pX[9] <= 140){
																				if(pX[0] <= 21){
																					return 0;
																				} else {
																					if(pX[1] <= 13){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				if(pX[0] <= 26){
																					if(pX[6] <= 11){
																						if(pX[9] <= 176){
																							if(pX[0] <= 14){
																								return 0;
																							} else {
																								if(pX[1] <= 10){
																									if(pX[9] <= 166){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							}
																						} else {
																							if(pX[9] <= 188){
																								return 1;
																							} else {
																								if(pX[7] <= 8){
																									if(pX[8] <= 17){
																										if(pX[5] <= 8){
																											return 1;
																										} else {
																											return 0;
																										}
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							}
																						}
																					} else {
																						if(pX[7] <= 7){
																							if(pX[6] <= 14){
																								if(pX[7] <= -7){
																									if(pX[9] <= 177){
																										return 1;
																									} else {
																										return 0;
																									}
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[1] <= 11){
																									return 1;
																								} else {
																									if(pX[8] <= 20){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[6] <= 29){
																				if(pX[5] <= 18){
																					if(pX[6] <= 20){
																						return 0;
																					} else {
																						if(pX[7] <= 2){
																							if(pX[9] <= 157){
																								return 1;
																							} else {
																								if(pX[7] <= -10){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[5] <= 2){
														if(pX[6] <= 4){
															if(pX[7] <= -6){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														if(pX[6] <= 56){
															if(pX[7] <= -19){
																if(pX[0] <= 38){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																if(pX[1] <= 16){
																	if(pX[1] <= 15){
																		if(pX[5] <= 5){
																			if(pX[6] <= 16){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[9] <= 154){
																		if(pX[9] <= 153){
																			if(pX[8] <= 23){
																				if(pX[0] <= 44){
																					return 0;
																				} else {
																					if(pX[6] <= 26){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				if(pX[1] <= 18){
																					return 1;
																				} else {
																					if(pX[0] <= 46){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															return 1;
														}
													}
												}
											}
										} else {
											if(pX[6] <= 23){
												if(pX[0] <= 19){
													if(pX[7] <= 0){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[7] <= 1){
														if(pX[6] <= 17){
															return 0;
														} else {
															if(pX[0] <= 23){
																if(pX[9] <= 154){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[1] <= 11){
															if(pX[6] <= 14){
																if(pX[8] <= 11){
																	return 1;
																} else {
																	if(pX[7] <= 7){
																		return 0;
																	} else {
																		if(pX[1] <= 10){
																			return 0;
																		} else {
																			if(pX[5] <= 45){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															} else {
																if(pX[6] <= 18){
																	return 1;
																} else {
																	if(pX[8] <= 18){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[8] <= 13){
													if(pX[5] <= 37){
														if(pX[0] <= 65){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												} else {
													if(pX[1] <= 12){
														if(pX[8] <= 24){
															if(pX[8] <= 16){
																if(pX[1] <= 8){
																	return 1;
																} else {
																	if(pX[7] <= -9){
																		return 1;
																	} else {
																		if(pX[5] <= 27){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														if(pX[0] <= 48){
															return 0;
														} else {
															if(pX[5] <= 59){
																if(pX[7] <= 15){
																	if(pX[9] <= 121){
																		if(pX[9] <= 119){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[1] <= 22){
																		return 1;
																	} else {
																		if(pX[5] <= 34){
																			if(pX[9] <= 133){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																return 1;
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[7] <= 20){
											return 1;
										} else {
											return 0;
										}
									}
								} else {
									if(pX[1] <= 11){
										if(pX[0] <= 29){
											if(pX[0] <= 16){
												if(pX[6] <= -1){
													return 0;
												} else {
													if(pX[9] <= 211){
														if(pX[0] <= 12){
															if(pX[9] <= 200){
																return 0;
															} else {
																if(pX[1] <= 10){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[8] <= 24){
																if(pX[8] <= 14){
																	if(pX[7] <= 1){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														}
													} else {
														return 0;
													}
												}
											} else {
												if(pX[0] <= 26){
													if(pX[1] <= 3){
														return 1;
													} else {
														if(pX[5] <= 5){
															return 0;
														} else {
															if(pX[5] <= 18){
																if(pX[8] <= 17){
																	if(pX[5] <= 13){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[5] <= 24){
																	return 0;
																} else {
																	if(pX[0] <= 23){
																		if(pX[6] <= 6){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[9] <= 211){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															}
														}
													}
												} else {
													if(pX[6] <= 12){
														return 0;
													} else {
														if(pX[0] <= 28){
															if(pX[6] <= 23){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													}
												}
											}
										} else {
											if(pX[9] <= 213){
												return 1;
											} else {
												if(pX[0] <= 38){
													if(pX[1] <= 4){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											}
										}
									} else {
										if(pX[7] <= -20){
											return 1;
										} else {
											if(pX[1] <= 14){
												if(pX[9] <= 200){
													if(pX[6] <= 12){
														if(pX[9] <= 194){
															if(pX[7] <= 2){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[1] <= 12){
																return 0;
															} else {
																if(pX[8] <= 18){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													} else {
														if(pX[1] <= 13){
															if(pX[8] <= 16){
																if(pX[0] <= 53){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[0] <= 18){
														return 1;
													} else {
														if(pX[9] <= 203){
															return 0;
														} else {
															if(pX[5] <= 46){
																if(pX[7] <= 8){
																	if(pX[8] <= 25){
																		if(pX[5] <= 17){
																			return 0;
																		} else {
																			if(pX[8] <= 15){
																				return 0;
																			} else {
																				if(pX[8] <= 19){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		if(pX[0] <= 25){
																			return 0;
																		} else {
																			if(pX[7] <= -8){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[5] <= -1){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 1;
															}
														}
													}
												}
											} else {
												if(pX[0] <= 22){
													if(pX[8] <= 11){
														return 1;
													} else {
														if(pX[5] <= 18){
															if(pX[5] <= 5){
																if(pX[9] <= 200){
																	return 0;
																} else {
																	if(pX[9] <= 210){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[9] <= 199){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															return 0;
														}
													}
												} else {
													if(pX[0] <= 32){
														if(pX[6] <= 22){
															if(pX[6] <= 14){
																if(pX[9] <= 212){
																	if(pX[0] <= 31){
																		if(pX[6] <= 13){
																			if(pX[8] <= 23){
																				return 0;
																			} else {
																				if(pX[1] <= 22){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[2] <= 2){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[5] <= -17){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 0;
															}
														} else {
															if(pX[1] <= 18){
																return 0;
															} else {
																if(pX[7] <= 1){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													} else {
														if(pX[1] <= 23){
															if(pX[8] <= 24){
																if(pX[5] <= 41){
																	return 0;
																} else {
																	if(pX[7] <= -7){
																		if(pX[6] <= 30){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[5] <= 11){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[1] <= 25){
																if(pX[2] <= 2){
																	return 1;
																} else {
																	if(pX[9] <= 214){
																		if(pX[5] <= 32){
																			return 0;
																		} else {
																			if(pX[5] <= 55){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[8] <= 21){
																	return 0;
																} else {
																	if(pX[8] <= 24){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						} else {
							if(pX[6] <= -33){
								if(pX[9] <= 297){
									if(pX[8] <= 13){
										if(pX[9] <= 226){
											return 1;
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								} else {
									return 1;
								}
							} else {
								if(pX[9] <= 254){
									if(pX[9] <= 237){
										if(pX[0] <= 22){
											if(pX[6] <= -1){
												if(pX[6] <= -15){
													return 1;
												} else {
													if(pX[7] <= -17){
														return 1;
													} else {
														if(pX[9] <= 218){
															return 1;
														} else {
															if(pX[9] <= 229){
																if(pX[5] <= 1){
																	if(pX[5] <= -6){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[5] <= -2){
																	return 1;
																} else {
																	if(pX[8] <= 21){
																		if(pX[6] <= -11){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[0] <= 20){
													if(pX[8] <= 19){
														if(pX[1] <= 11){
															if(pX[7] <= -7){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[1] <= 13){
																if(pX[9] <= 232){
																	if(pX[8] <= 14){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[9] <= 229){
															if(pX[1] <= 8){
																if(pX[6] <= 13){
																	if(pX[8] <= 20){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[7] <= -12){
																	return 1;
																} else {
																	if(pX[6] <= 17){
																		return 0;
																	} else {
																		if(pX[7] <= -2){
																			if(pX[5] <= 18){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															}
														} else {
															return 0;
														}
													}
												} else {
													if(pX[8] <= 20){
														if(pX[6] <= 24){
															if(pX[1] <= 13){
																return 0;
															} else {
																if(pX[9] <= 224){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												}
											}
										} else {
											if(pX[8] <= 22){
												if(pX[1] <= 13){
													if(pX[7] <= 13){
														if(pX[6] <= 25){
															if(pX[6] <= 18){
																if(pX[1] <= 12){
																	if(pX[6] <= 8){
																		if(pX[0] <= 25){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[9] <= 223){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[9] <= 224){
																	return 0;
																} else {
																	if(pX[8] <= 12){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[1] <= 12){
																if(pX[6] <= 43){
																	if(pX[6] <= 30){
																		return 1;
																	} else {
																		if(pX[8] <= 16){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[5] <= 29){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																return 0;
															}
														}
													} else {
														return 1;
													}
												} else {
													if(pX[5] <= 58){
														if(pX[0] <= 66){
															if(pX[0] <= 35){
																if(pX[5] <= 21){
																	if(pX[5] <= -2){
																		if(pX[6] <= -20){
																			if(pX[6] <= -23){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[7] <= 10){
																		if(pX[7] <= -11){
																			if(pX[9] <= 223){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[7] <= 16){
																	return 0;
																} else {
																	if(pX[9] <= 225){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[0] <= 74){
																if(pX[1] <= 21){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[7] <= 14){
															if(pX[5] <= 67){
																return 1;
															} else {
																if(pX[6] <= 50){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[1] <= 14){
													if(pX[0] <= 27){
														if(pX[0] <= 24){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												} else {
													if(pX[1] <= 17){
														if(pX[6] <= 18){
															return 1;
														} else {
															return 0;
														}
													} else {
														if(pX[6] <= 22){
															if(pX[6] <= -3){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												}
											}
										}
									} else {
										if(pX[8] <= 23){
											if(pX[1] <= 13){
												if(pX[8] <= 11){
													return 0;
												} else {
													if(pX[7] <= -7){
														if(pX[8] <= 13){
															return 0;
														} else {
															if(pX[8] <= 16){
																if(pX[0] <= 26){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[1] <= 11){
															if(pX[1] <= 10){
																return 0;
															} else {
																if(pX[8] <= 13){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[7] <= 6){
																if(pX[0] <= 30){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														}
													}
												}
											} else {
												if(pX[6] <= 22){
													return 0;
												} else {
													if(pX[6] <= 25){
														return 1;
													} else {
														if(pX[0] <= 45){
															if(pX[5] <= 47){
																if(pX[6] <= 31){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													}
												}
											}
										} else {
											if(pX[5] <= 20){
												if(pX[6] <= 7){
													return 0;
												} else {
													if(pX[0] <= 31){
														return 1;
													} else {
														if(pX[9] <= 243){
															return 1;
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[7] <= -6){
													return 1;
												} else {
													if(pX[9] <= 244){
														return 0;
													} else {
														if(pX[5] <= 37){
															return 1;
														} else {
															return 0;
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[2] <= 2){
										if(pX[7] <= -19){
											if(pX[1] <= 24){
												return 0;
											} else {
												return 1;
											}
										} else {
											if(pX[8] <= 12){
												if(pX[0] <= 27){
													return 1;
												} else {
													if(pX[5] <= -116){
														return 1;
													} else {
														if(pX[8] <= 10){
															if(pX[6] <= 24){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[6] <= 13){
													if(pX[9] <= 275){
														if(pX[0] <= 51){
															if(pX[0] <= 32){
																return 0;
															} else {
																if(pX[5] <= -15){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[9] <= 281){
															return 1;
														} else {
															if(pX[0] <= 72){
																if(pX[7] <= -17){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														}
													}
												} else {
													if(pX[1] <= 16){
														if(pX[0] <= 85){
															if(pX[7] <= -4){
																if(pX[5] <= 25){
																	if(pX[9] <= 264){
																		return 1;
																	} else {
																		if(pX[9] <= 277){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														if(pX[6] <= 26){
															if(pX[6] <= 24){
																if(pX[8] <= 22){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														} else {
															if(pX[9] <= 309){
																if(pX[9] <= 261){
																	if(pX[5] <= 28){
																		return 0;
																	} else {
																		if(pX[9] <= 256){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[0] <= 67){
																		if(pX[6] <= 39){
																			return 1;
																		} else {
																			if(pX[6] <= 44){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[0] <= 70){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[8] <= 16){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[1] <= 20){
											if(pX[1] <= 17){
												return 1;
											} else {
												if(pX[1] <= 18){
													if(pX[9] <= 285){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[6] <= 41){
												if(pX[5] <= 4){
													if(pX[5] <= -58){
														return 1;
													} else {
														if(pX[6] <= 26){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													return 1;
												}
											} else {
												if(pX[0] <= 48){
													return 1;
												} else {
													if(pX[5] <= -100){
														return 1;
													} else {
														if(pX[9] <= 281){
															return 0;
														} else {
															if(pX[9] <= 287){
																return 1;
															} else {
																if(pX[6] <= 79){
																	return 0;
																} else {
																	if(pX[1] <= 31){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[5] <= -54){
							if(pX[6] <= 50){
								if(pX[5] <= -106){
									return 0;
								} else {
									return 1;
								}
							} else {
								if(pX[9] <= 228){
									return 1;
								} else {
									if(pX[0] <= 86){
										return 1;
									} else {
										return 0;
									}
								}
							}
						} else {
							if(pX[9] <= 181){
								if(pX[6] <= 43){
									return 1;
								} else {
									if(pX[0] <= 95){
										return 0;
									} else {
										return 1;
									}
								}
							} else {
								if(pX[9] <= 285){
									if(pX[8] <= 15){
										return 1;
									} else {
										if(pX[6] <= 75){
											return 1;
										} else {
											return 0;
										}
									}
								} else {
									return 1;
								}
							}
						}
					}
				}
			}
		} else {
			if(pX[6] <= 23){
				if(pX[2] <= 2){
					if(pX[1] <= 9){
						if(pX[1] <= 7){
							if(pX[9] <= 213){
								if(pX[0] <= 16){
									if(pX[9] <= 201){
										return 1;
									} else {
										if(pX[0] <= 15){
											return 1;
										} else {
											return 0;
										}
									}
								} else {
									if(pX[8] <= 52){
										if(pX[0] <= 28){
											if(pX[8] <= 46){
												if(pX[7] <= -6){
													return 1;
												} else {
													if(pX[7] <= 6){
														if(pX[0] <= 17){
															if(pX[8] <= 43){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[6] <= 16){
																if(pX[8] <= 44){
																	if(pX[9] <= 172){
																		if(pX[7] <= 5){
																			return 0;
																		} else {
																			if(pX[6] <= 7){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[9] <= 174){
																			return 1;
																		} else {
																			if(pX[9] <= 198){
																				if(pX[6] <= 11){
																					return 0;
																				} else {
																					if(pX[5] <= -3){
																						return 0;
																					} else {
																						if(pX[0] <= 19){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[8] <= 45){
																		if(pX[7] <= 4){
																			return 0;
																		} else {
																			if(pX[5] <= -10){
																				return 0;
																			} else {
																				if(pX[6] <= 0){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[8] <= 38){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													} else {
														return 1;
													}
												}
											} else {
												if(pX[6] <= 3){
													return 0;
												} else {
													if(pX[6] <= 5){
														return 1;
													} else {
														return 0;
													}
												}
											}
										} else {
											if(pX[0] <= 35){
												if(pX[8] <= 32){
													return 1;
												} else {
													if(pX[1] <= 6){
														if(pX[6] <= 17){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[7] <= -4){
											if(pX[8] <= 55){
												if(pX[5] <= -5){
													return 0;
												} else {
													return 1;
												}
											} else {
												if(pX[7] <= -6){
													if(pX[1] <= 1){
														if(pX[0] <= 23){
															return 0;
														} else {
															if(pX[0] <= 24){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														return 1;
													}
												} else {
													if(pX[5] <= -27){
														return 1;
													} else {
														if(pX[6] <= -15){
															if(pX[9] <= 97){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													}
												}
											}
										} else {
											if(pX[1] <= 0){
												if(pX[6] <= 2){
													return 0;
												} else {
													if(pX[5] <= 12){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												if(pX[6] <= -11){
													if(pX[9] <= 135){
														if(pX[9] <= 125){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												} else {
													if(pX[0] <= 22){
														if(pX[9] <= 174){
															if(pX[9] <= 100){
																if(pX[1] <= 6){
																	return 1;
																} else {
																	if(pX[6] <= 7){
																		return 0;
																	} else {
																		if(pX[8] <= 78){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[5] <= -3){
																	return 1;
																} else {
																	if(pX[7] <= 7){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[7] <= -2){
																return 0;
															} else {
																if(pX[6] <= 13){
																	if(pX[7] <= 3){
																		return 1;
																	} else {
																		if(pX[0] <= 21){
																			if(pX[9] <= 192){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[8] <= 72){
															return 1;
														} else {
															if(pX[5] <= 12){
																return 1;
															} else {
																return 0;
															}
														}
													}
												}
											}
										}
									}
								}
							} else {
								if(pX[8] <= 34){
									if(pX[6] <= -8){
										if(pX[8] <= 29){
											return 0;
										} else {
											return 1;
										}
									} else {
										if(pX[9] <= 231){
											return 1;
										} else {
											return 0;
										}
									}
								} else {
									if(pX[1] <= 0){
										if(pX[5] <= 6){
											if(pX[7] <= 9){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									} else {
										if(pX[8] <= 35){
											return 1;
										} else {
											if(pX[7] <= 6){
												if(pX[7] <= -6){
													return 1;
												} else {
													if(pX[0] <= 16){
														return 1;
													} else {
														if(pX[9] <= 222){
															if(pX[7] <= 5){
																return 1;
															} else {
																if(pX[9] <= 218){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[5] <= 11){
																if(pX[0] <= 31){
																	if(pX[9] <= 234){
																		return 0;
																	} else {
																		if(pX[5] <= 4){
																			if(pX[9] <= 246){
																				if(pX[9] <= 238){
																					if(pX[6] <= 0){
																						return 0;
																					} else {
																						if(pX[7] <= -4){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[8] <= 42){
																					if(pX[0] <= 23){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														}
													}
												}
											} else {
												return 1;
											}
										}
									}
								}
							}
						} else {
							if(pX[1] <= 8){
								if(pX[8] <= 60){
									if(pX[7] <= 8){
										if(pX[9] <= 88){
											if(pX[0] <= 33){
												return 0;
											} else {
												return 1;
											}
										} else {
											if(pX[7] <= -9){
												if(pX[6] <= 8){
													return 1;
												} else {
													return 0;
												}
											} else {
												if(pX[8] <= 57){
													if(pX[0] <= 30){
														return 1;
													} else {
														if(pX[9] <= 244){
															return 1;
														} else {
															if(pX[9] <= 278){
																return 0;
															} else {
																return 1;
															}
														}
													}
												} else {
													if(pX[9] <= 139){
														return 1;
													} else {
														return 0;
													}
												}
											}
										}
									} else {
										if(pX[6] <= 4){
											return 1;
										} else {
											if(pX[7] <= 11){
												return 0;
											} else {
												return 1;
											}
										}
									}
								} else {
									return 1;
								}
							} else {
								if(pX[6] <= -18){
									if(pX[9] <= 148){
										return 1;
									} else {
										if(pX[7] <= 5){
											if(pX[9] <= 155){
												return 0;
											} else {
												if(pX[5] <= 11){
													return 1;
												} else {
													return 0;
												}
											}
										} else {
											return 1;
										}
									}
								} else {
									if(pX[9] <= 128){
										if(pX[8] <= 46){
											if(pX[0] <= 25){
												if(pX[5] <= -15){
													if(pX[7] <= -7){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											} else {
												if(pX[8] <= 36){
													return 1;
												} else {
													if(pX[6] <= 0){
														return 0;
													} else {
														return 1;
													}
												}
											}
										} else {
											if(pX[5] <= -23){
												return 0;
											} else {
												if(pX[0] <= 27){
													if(pX[7] <= -5){
														if(pX[0] <= 12){
															return 1;
														} else {
															if(pX[6] <= 18){
																return 0;
															} else {
																if(pX[9] <= 98){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[5] <= 6){
															if(pX[7] <= 4){
																return 1;
															} else {
																if(pX[6] <= 15){
																	if(pX[9] <= 100){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[5] <= -3){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[5] <= 16){
																if(pX[8] <= 67){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														}
													}
												} else {
													if(pX[6] <= 22){
														return 1;
													} else {
														return 0;
													}
												}
											}
										}
									} else {
										if(pX[8] <= 53){
											if(pX[9] <= 141){
												return 1;
											} else {
												if(pX[8] <= 44){
													if(pX[5] <= -11){
														if(pX[9] <= 172){
															return 0;
														} else {
															if(pX[9] <= 197){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														if(pX[0] <= 33){
															if(pX[5] <= 20){
																if(pX[8] <= 35){
																	if(pX[0] <= 19){
																		if(pX[7] <= 4){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[0] <= 30){
																	if(pX[6] <= 17){
																		return 0;
																	} else {
																		if(pX[0] <= 21){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[8] <= 45){
														return 0;
													} else {
														if(pX[0] <= 13){
															return 0;
														} else {
															if(pX[5] <= 23){
																if(pX[0] <= 36){
																	if(pX[5] <= -11){
																		if(pX[5] <= -13){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														}
													}
												}
											}
										} else {
											if(pX[0] <= 22){
												if(pX[6] <= -6){
													if(pX[8] <= 69){
														return 0;
													} else {
														if(pX[5] <= -19){
															if(pX[8] <= 84){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[6] <= 14){
														return 1;
													} else {
														if(pX[9] <= 169){
															return 0;
														} else {
															return 1;
														}
													}
												}
											} else {
												return 1;
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[6] <= -21){
							if(pX[8] <= 31){
								if(pX[6] <= -43){
									return 1;
								} else {
									if(pX[8] <= 30){
										if(pX[5] <= -10){
											if(pX[6] <= -28){
												if(pX[5] <= -41){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 0;
											}
										} else {
											return 0;
										}
									} else {
										if(pX[1] <= 10){
											return 1;
										} else {
											if(pX[9] <= 203){
												return 0;
											} else {
												return 1;
											}
										}
									}
								}
							} else {
								if(pX[1] <= 13){
									if(pX[0] <= 100){
										if(pX[0] <= 33){
											if(pX[7] <= 9){
												if(pX[8] <= 49){
													if(pX[8] <= 40){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											} else {
												return 0;
											}
										} else {
											return 1;
										}
									} else {
										return 0;
									}
								} else {
									if(pX[0] <= 56){
										if(pX[0] <= 40){
											if(pX[0] <= 28){
												if(pX[6] <= -23){
													return 1;
												} else {
													if(pX[8] <= 51){
														if(pX[1] <= 17){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												}
											} else {
												if(pX[5] <= -5){
													if(pX[1] <= 15){
														if(pX[7] <= -7){
															if(pX[5] <= -19){
																return 0;
															} else {
																if(pX[9] <= 173){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[0] <= 32){
															if(pX[1] <= 19){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[8] <= 80){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													if(pX[9] <= 141){
														return 0;
													} else {
														if(pX[5] <= -1){
															return 1;
														} else {
															if(pX[6] <= -27){
																if(pX[5] <= 5){
																	return 1;
																} else {
																	if(pX[1] <= 21){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																return 0;
															}
														}
													}
												}
											}
										} else {
											if(pX[6] <= -44){
												if(pX[1] <= 20){
													if(pX[8] <= 50){
														return 0;
													} else {
														if(pX[9] <= 151){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													if(pX[5] <= -49){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												if(pX[5] <= -30){
													return 1;
												} else {
													if(pX[9] <= 83){
														if(pX[5] <= -20){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[1] <= 14){
															return 0;
														} else {
															if(pX[0] <= 54){
																if(pX[7] <= 18){
																	return 1;
																} else {
																	if(pX[7] <= 19){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																return 0;
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[7] <= -18){
											if(pX[9] <= 118){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									}
								}
							}
						} else {
							if(pX[9] <= 212){
								if(pX[5] <= -27){
									if(pX[0] <= 32){
										if(pX[9] <= 178){
											if(pX[1] <= 16){
												if(pX[8] <= 69){
													if(pX[7] <= -8){
														if(pX[6] <= -17){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[9] <= 151){
													return 1;
												} else {
													return 0;
												}
											}
										} else {
											if(pX[8] <= 37){
												return 0;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[7] <= -14){
											return 0;
										} else {
											if(pX[8] <= 32){
												return 0;
											} else {
												if(pX[0] <= 35){
													if(pX[1] <= 15){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											}
										}
									}
								} else {
									if(pX[8] <= 65){
										if(pX[0] <= 31){
											if(pX[9] <= 176){
												if(pX[1] <= 16){
													if(pX[1] <= 12){
														if(pX[7] <= -11){
															if(pX[9] <= 113){
																return 1;
															} else {
																if(pX[9] <= 121){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[0] <= 22){
																if(pX[5] <= 10){
																	if(pX[9] <= 61){
																		if(pX[8] <= 39){
																			if(pX[7] <= -1){
																				return 0;
																			} else {
																				if(pX[1] <= 11){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[1] <= 11){
																			if(pX[0] <= 12){
																				if(pX[9] <= 170){
																					if(pX[5] <= -13){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[6] <= 20){
																					if(pX[9] <= 62){
																						return 1;
																					} else {
																						if(pX[9] <= 170){
																							if(pX[7] <= -5){
																								if(pX[7] <= -6){
																									return 0;
																								} else {
																									if(pX[0] <= 18){
																										if(pX[5] <= 2){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								if(pX[0] <= 17){
																									if(pX[6] <= 7){
																										if(pX[5] <= 4){
																											if(pX[7] <= 5){
																												return 0;
																											} else {
																												if(pX[6] <= -11){
																													return 1;
																												} else {
																													if(pX[8] <= 41){
																														return 0;
																													} else {
																														if(pX[6] <= 1){
																															if(pX[7] <= 10){
																																if(pX[0] <= 14){
																																	return 1;
																																} else {
																																	if(pX[8] <= 56){
																																		return 1;
																																	} else {
																																		return 0;
																																	}
																																}
																															} else {
																																return 0;
																															}
																														} else {
																															if(pX[1] <= 10){
																																if(pX[9] <= 121){
																																	return 1;
																																} else {
																																	return 0;
																																}
																															} else {
																																return 0;
																															}
																														}
																													}
																												}
																											}
																										} else {
																											return 1;
																										}
																									} else {
																										if(pX[9] <= 162){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									if(pX[5] <= -9){
																										if(pX[5] <= -14){
																											if(pX[5] <= -23){
																												return 0;
																											} else {
																												if(pX[5] <= -16){
																													if(pX[5] <= -19){
																														if(pX[7] <= 0){
																															return 1;
																														} else {
																															return 0;
																														}
																													} else {
																														return 1;
																													}
																												} else {
																													return 0;
																												}
																											}
																										} else {
																											return 1;
																										}
																									} else {
																										if(pX[7] <= 7){
																											return 0;
																										} else {
																											if(pX[5] <= 2){
																												return 0;
																											} else {
																												return 1;
																											}
																										}
																									}
																								}
																							}
																						} else {
																							if(pX[6] <= -4){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					}
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[9] <= 135){
																				if(pX[6] <= 12){
																					if(pX[7] <= 8){
																						if(pX[9] <= 130){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[1] <= 11){
																		if(pX[7] <= -3){
																			if(pX[1] <= 10){
																				if(pX[8] <= 43){
																					if(pX[6] <= 4){
																						return 0;
																					} else {
																						if(pX[8] <= 37){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[9] <= 40){
																				return 1;
																			} else {
																				if(pX[8] <= 45){
																					if(pX[5] <= 16){
																						return 0;
																					} else {
																						if(pX[6] <= 6){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[1] <= 10){
																						if(pX[8] <= 63){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						if(pX[5] <= 11){
																							return 0;
																						} else {
																							if(pX[0] <= 21){
																								if(pX[0] <= 16){
																									if(pX[6] <= -8){
																										return 0;
																									} else {
																										if(pX[8] <= 57){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								return 1;
																							}
																						}
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[7] <= -4){
																			if(pX[8] <= 38){
																				return 1;
																			} else {
																				if(pX[7] <= -6){
																					return 0;
																				} else {
																					if(pX[0] <= 21){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																if(pX[7] <= -2){
																	if(pX[1] <= 10){
																		if(pX[0] <= 23){
																			return 1;
																		} else {
																			if(pX[5] <= -12){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[9] <= 162){
																			if(pX[6] <= -19){
																				return 1;
																			} else {
																				if(pX[5] <= 1){
																					if(pX[9] <= 100){
																						if(pX[5] <= -8){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[6] <= -15){
																		if(pX[0] <= 28){
																			return 0;
																		} else {
																			if(pX[8] <= 46){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[9] <= 149){
																			if(pX[0] <= 25){
																				if(pX[5] <= 12){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[0] <= 29){
																					if(pX[7] <= 7){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[5] <= -15){
																						return 0;
																					} else {
																						if(pX[8] <= 42){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[5] <= 11){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															}
														}
													} else {
														if(pX[1] <= 14){
															if(pX[8] <= 51){
																if(pX[6] <= 15){
																	if(pX[0] <= 17){
																		return 1;
																	} else {
																		if(pX[8] <= 33){
																			if(pX[7] <= 0){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[6] <= -1){
																				return 0;
																			} else {
																				if(pX[0] <= 27){
																					if(pX[9] <= 166){
																						return 0;
																					} else {
																						if(pX[0] <= 22){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[7] <= 5){
																	if(pX[0] <= 27){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[8] <= 54){
																		if(pX[7] <= 8){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[5] <= -5){
																if(pX[6] <= -8){
																	return 0;
																} else {
																	if(pX[5] <= -11){
																		if(pX[7] <= -10){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[5] <= -7){
																			return 1;
																		} else {
																			if(pX[7] <= 2){
																				return 0;
																			} else {
																				if(pX[8] <= 38){
																					if(pX[5] <= -6){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																}
															} else {
																if(pX[7] <= 16){
																	if(pX[9] <= 105){
																		if(pX[6] <= 2){
																			if(pX[5] <= 22){
																				if(pX[6] <= -5){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[6] <= -8){
																			if(pX[7] <= -12){
																				return 1;
																			} else {
																				if(pX[1] <= 15){
																					return 0;
																				} else {
																					if(pX[5] <= 12){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			if(pX[6] <= 21){
																				if(pX[6] <= 15){
																					return 0;
																				} else {
																					if(pX[0] <= 23){
																						if(pX[5] <= 1){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						if(pX[7] <= 10){
																							return 0;
																						} else {
																							if(pX[9] <= 161){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					}
																				}
																			} else {
																				if(pX[7] <= 3){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																} else {
																	return 1;
																}
															}
														}
													}
												} else {
													if(pX[8] <= 61){
														if(pX[1] <= 21){
															if(pX[5] <= -6){
																return 0;
															} else {
																if(pX[6] <= -14){
																	if(pX[9] <= 77){
																		return 0;
																	} else {
																		if(pX[6] <= -18){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[5] <= 26){
																		if(pX[8] <= 29){
																			if(pX[6] <= 17){
																				if(pX[6] <= 4){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[0] <= 30){
																				if(pX[8] <= 41){
																					return 0;
																				} else {
																					if(pX[5] <= -5){
																						if(pX[6] <= 11){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[6] <= 15){
																							return 0;
																						} else {
																							if(pX[0] <= 22){
																								if(pX[5] <= 3){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[5] <= 27){
																			if(pX[9] <= 96){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[7] <= 14){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															}
														} else {
															if(pX[7] <= 13){
																return 0;
															} else {
																if(pX[8] <= 30){
																	if(pX[7] <= 16){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[8] <= 62){
															if(pX[1] <= 19){
																if(pX[0] <= 22){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[0] <= 20){
																if(pX[9] <= 122){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														}
													}
												}
											} else {
												if(pX[0] <= 22){
													if(pX[5] <= 25){
														if(pX[7] <= -18){
															return 1;
														} else {
															if(pX[5] <= 13){
																if(pX[1] <= 12){
																	if(pX[9] <= 178){
																		if(pX[5] <= -8){
																			if(pX[8] <= 38){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[9] <= 206){
																			if(pX[0] <= 11){
																				return 1;
																			} else {
																				if(pX[5] <= 4){
																					if(pX[8] <= 63){
																						if(pX[0] <= 14){
																							if(pX[6] <= 0){
																								if(pX[9] <= 194){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[6] <= 5){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[9] <= 198){
																						if(pX[7] <= 8){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						if(pX[0] <= 18){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[8] <= 47){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	if(pX[0] <= 16){
																		return 1;
																	} else {
																		if(pX[0] <= 17){
																			return 0;
																		} else {
																			if(pX[6] <= 20){
																				if(pX[6] <= -9){
																					if(pX[0] <= 21){
																						return 0;
																					} else {
																						if(pX[8] <= 54){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[9] <= 205){
																						if(pX[6] <= 13){
																							return 0;
																						} else {
																							if(pX[0] <= 20){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						if(pX[8] <= 43){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															} else {
																if(pX[7] <= -8){
																	if(pX[8] <= 31){
																		return 1;
																	} else {
																		if(pX[9] <= 193){
																			if(pX[5] <= 18){
																				if(pX[6] <= -1){
																					if(pX[7] <= -10){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[8] <= 31){
																		if(pX[1] <= 12){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[6] <= 13){
																			return 0;
																		} else {
																			if(pX[5] <= 21){
																				return 0;
																			} else {
																				if(pX[7] <= 9){
																					return 0;
																				} else {
																					if(pX[1] <= 14){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													} else {
														if(pX[6] <= -8){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													if(pX[8] <= 46){
														if(pX[9] <= 187){
															if(pX[9] <= 184){
																if(pX[7] <= -10){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																if(pX[6] <= 9){
																	if(pX[5] <= 4){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[6] <= 21){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[1] <= 15){
																if(pX[7] <= -5){
																	if(pX[7] <= -10){
																		if(pX[5] <= 5){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[8] <= 34){
																		if(pX[0] <= 28){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[5] <= 0){
																			if(pX[5] <= -16){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[1] <= 15){
															if(pX[5] <= -8){
																if(pX[0] <= 24){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																if(pX[7] <= 7){
																	return 1;
																} else {
																	if(pX[7] <= 9){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[0] <= 29){
																if(pX[7] <= -10){
																	return 1;
																} else {
																	if(pX[6] <= 8){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 1;
															}
														}
													}
												}
											}
										} else {
											if(pX[0] <= 34){
												if(pX[1] <= 10){
													if(pX[0] <= 32){
														if(pX[5] <= 19){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												} else {
													if(pX[9] <= 193){
														if(pX[0] <= 32){
															if(pX[9] <= 100){
																return 0;
															} else {
																if(pX[7] <= 15){
																	if(pX[9] <= 150){
																		if(pX[7] <= -14){
																			return 1;
																		} else {
																			if(pX[7] <= -7){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[5] <= -7){
																return 0;
															} else {
																if(pX[6] <= 17){
																	if(pX[5] <= -4){
																		return 1;
																	} else {
																		if(pX[6] <= 1){
																			if(pX[1] <= 16){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 0;
																}
															}
														}
													} else {
														return 1;
													}
												}
											} else {
												if(pX[7] <= -13){
													if(pX[1] <= 18){
														if(pX[1] <= 16){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												} else {
													if(pX[6] <= -17){
														if(pX[9] <= 150){
															if(pX[8] <= 50){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													} else {
														if(pX[5] <= 12){
															if(pX[7] <= 8){
																return 1;
															} else {
																if(pX[1] <= 20){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															return 1;
														}
													}
												}
											}
										}
									} else {
										if(pX[9] <= 101){
											if(pX[0] <= 30){
												if(pX[7] <= 15){
													if(pX[5] <= -1){
														if(pX[8] <= 78){
															if(pX[0] <= 16){
																return 1;
															} else {
																if(pX[7] <= 3){
																	if(pX[5] <= -5){
																		if(pX[0] <= 24){
																			if(pX[8] <= 71){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[5] <= -12){
																		if(pX[8] <= 75){
																			return 0;
																		} else {
																			if(pX[8] <= 77){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[0] <= 18){
																			return 0;
																		} else {
																			if(pX[8] <= 75){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															}
														} else {
															if(pX[6] <= 5){
																if(pX[5] <= -20){
																	return 1;
																} else {
																	if(pX[7] <= -3){
																		if(pX[5] <= -7){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[1] <= 11){
																			if(pX[9] <= 59){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[5] <= 25){
															if(pX[5] <= 6){
																if(pX[9] <= 38){
																	if(pX[6] <= 1){
																		return 1;
																	} else {
																		if(pX[1] <= 13){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[7] <= -9){
																		if(pX[0] <= 23){
																			if(pX[6] <= 10){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																return 0;
															}
														} else {
															if(pX[9] <= 75){
																if(pX[8] <= 82){
																	if(pX[0] <= 25){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														}
													}
												} else {
													return 1;
												}
											} else {
												if(pX[6] <= 16){
													return 1;
												} else {
													return 0;
												}
											}
										} else {
											if(pX[7] <= 16){
												if(pX[0] <= 25){
													if(pX[6] <= -13){
														if(pX[5] <= -13){
															if(pX[6] <= -17){
																return 1;
															} else {
																if(pX[8] <= 70){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[5] <= -8){
																return 0;
															} else {
																if(pX[9] <= 142){
																	if(pX[0] <= 20){
																		if(pX[6] <= -18){
																			return 1;
																		} else {
																			if(pX[7] <= -6){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[7] <= 10){
																		if(pX[6] <= -18){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[7] <= 13){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															}
														}
													} else {
														if(pX[1] <= 14){
															if(pX[7] <= 11){
																if(pX[5] <= 18){
																	if(pX[9] <= 115){
																		if(pX[9] <= 110){
																			if(pX[0] <= 17){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[7] <= -8){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[6] <= 10){
																			if(pX[0] <= 15){
																				if(pX[8] <= 87){
																					if(pX[5] <= -13){
																						if(pX[9] <= 186){
																							if(pX[7] <= 0){
																								if(pX[5] <= -14){
																									if(pX[7] <= -9){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[0] <= 12){
																							return 0;
																						} else {
																							if(pX[7] <= 10){
																								return 0;
																							} else {
																								if(pX[8] <= 71){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[8] <= 88){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				if(pX[9] <= 211){
																					if(pX[7] <= -6){
																						if(pX[9] <= 159){
																							if(pX[5] <= 0){
																								if(pX[5] <= -2){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[1] <= 11){
																									if(pX[8] <= 75){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[9] <= 144){
																							if(pX[8] <= 72){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							if(pX[7] <= 8){
																								if(pX[9] <= 185){
																									return 0;
																								} else {
																									if(pX[5] <= -8){
																										if(pX[7] <= -1){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								if(pX[9] <= 175){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					}
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[5] <= -5){
																				return 0;
																			} else {
																				if(pX[6] <= 17){
																					if(pX[0] <= 21){
																						if(pX[1] <= 11){
																							if(pX[6] <= 15){
																								if(pX[8] <= 71){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[8] <= 70){
																						return 1;
																					} else {
																						if(pX[7] <= 5){
																							if(pX[5] <= 9){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		}
																	}
																} else {
																	if(pX[1] <= 10){
																		if(pX[7] <= 3){
																			return 0;
																		} else {
																			if(pX[7] <= 7){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																return 1;
															}
														} else {
															if(pX[6] <= 18){
																if(pX[8] <= 67){
																	return 1;
																} else {
																	if(pX[8] <= 75){
																		return 0;
																	} else {
																		if(pX[7] <= 13){
																			if(pX[7] <= 8){
																				if(pX[9] <= 119){
																					return 1;
																				} else {
																					if(pX[1] <= 19){
																						if(pX[9] <= 177){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[6] <= 2){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															} else {
																if(pX[7] <= 9){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													}
												} else {
													if(pX[1] <= 23){
														if(pX[0] <= 29){
															if(pX[6] <= -19){
																return 0;
															} else {
																if(pX[6] <= 11){
																	if(pX[1] <= 19){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[8] <= 82){
																		if(pX[8] <= 73){
																			if(pX[6] <= 14){
																				if(pX[6] <= 12){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[0] <= 31){
																if(pX[7] <= -5){
																	if(pX[8] <= 74){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														}
													} else {
														return 0;
													}
												}
											} else {
												return 1;
											}
										}
									}
								}
							} else {
								if(pX[8] <= 48){
									if(pX[6] <= 10){
										if(pX[8] <= 43){
											if(pX[1] <= 23){
												if(pX[0] <= 25){
													if(pX[9] <= 214){
														if(pX[5] <= 0){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[1] <= 10){
															if(pX[7] <= 4){
																if(pX[8] <= 30){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																if(pX[5] <= -7){
																	return 0;
																} else {
																	if(pX[9] <= 231){
																		return 1;
																	} else {
																		if(pX[7] <= 6){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															}
														} else {
															if(pX[5] <= 20){
																if(pX[0] <= 17){
																	if(pX[0] <= 16){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[5] <= 29){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													}
												} else {
													if(pX[5] <= 1){
														if(pX[6] <= -14){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												}
											} else {
												return 1;
											}
										} else {
											if(pX[6] <= -14){
												return 1;
											} else {
												if(pX[9] <= 227){
													if(pX[6] <= 9){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[6] <= -1){
														if(pX[9] <= 229){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											}
										}
									} else {
										if(pX[1] <= 13){
											if(pX[8] <= 36){
												if(pX[5] <= 15){
													return 1;
												} else {
													if(pX[7] <= 3){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												if(pX[7] <= 10){
													if(pX[0] <= 25){
														if(pX[1] <= 11){
															if(pX[9] <= 229){
																return 1;
															} else {
																if(pX[5] <= 19){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											}
										} else {
											if(pX[0] <= 29){
												if(pX[7] <= -4){
													if(pX[9] <= 221){
														return 1;
													} else {
														if(pX[9] <= 261){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													return 0;
												}
											} else {
												if(pX[1] <= 20){
													if(pX[5] <= 7){
														return 0;
													} else {
														if(pX[5] <= 30){
															return 1;
														} else {
															if(pX[0] <= 33){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													return 1;
												}
											}
										}
									}
								} else {
									if(pX[5] <= -15){
										if(pX[0] <= 20){
											if(pX[7] <= 1){
												return 0;
											} else {
												return 1;
											}
										} else {
											if(pX[0] <= 25){
												if(pX[5] <= -22){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[5] <= -12){
											if(pX[9] <= 218){
												return 0;
											} else {
												if(pX[6] <= 3){
													return 0;
												} else {
													if(pX[9] <= 228){
														if(pX[0] <= 12){
															if(pX[6] <= 5){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[8] <= 67){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														if(pX[9] <= 236){
															return 0;
														} else {
															if(pX[5] <= -14){
																return 0;
															} else {
																return 1;
															}
														}
													}
												}
											}
										} else {
											if(pX[6] <= 11){
												if(pX[7] <= 10){
													if(pX[9] <= 279){
														if(pX[1] <= 11){
															if(pX[9] <= 229){
																if(pX[8] <= 83){
																	if(pX[0] <= 15){
																		if(pX[9] <= 222){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[0] <= 17){
																			if(pX[8] <= 60){
																				if(pX[5] <= 11){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[9] <= 220){
																					if(pX[5] <= 0){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[9] <= 221){
																		return 0;
																	} else {
																		if(pX[1] <= 10){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																if(pX[9] <= 256){
																	if(pX[8] <= 65){
																		if(pX[5] <= 20){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[6] <= -15){
																return 0;
															} else {
																if(pX[9] <= 215){
																	if(pX[0] <= 22){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[5] <= -8){
																		return 0;
																	} else {
																		if(pX[0] <= 20){
																			if(pX[8] <= 66){
																				return 1;
																			} else {
																				if(pX[7] <= -8){
																					return 0;
																				} else {
																					if(pX[6] <= -6){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															}
														}
													} else {
														return 0;
													}
												} else {
													if(pX[6] <= -13){
														return 1;
													} else {
														if(pX[9] <= 256){
															if(pX[0] <= 17){
																if(pX[9] <= 217){
																	if(pX[6] <= -9){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[9] <= 250){
																	if(pX[0] <= 22){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 1;
																}
															}
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[9] <= 215){
													return 0;
												} else {
													if(pX[8] <= 60){
														if(pX[6] <= 15){
															return 1;
														} else {
															if(pX[6] <= 22){
																if(pX[5] <= 12){
																	if(pX[7] <= -7){
																		return 0;
																	} else {
																		if(pX[5] <= 8){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[0] <= 19){
															if(pX[8] <= 65){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[9] <= 225){
																return 1;
															} else {
																if(pX[0] <= 32){
																	if(pX[0] <= 29){
																		if(pX[7] <= 9){
																			return 1;
																		} else {
																			if(pX[0] <= 28){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				} else {
					if(pX[5] <= -20){
						if(pX[1] <= 26){
							if(pX[0] <= 38){
								return 0;
							} else {
								if(pX[6] <= -89){
									return 0;
								} else {
									return 1;
								}
							}
						} else {
							if(pX[8] <= 82){
								return 1;
							} else {
								if(pX[5] <= -44){
									if(pX[9] <= 186){
										return 0;
									} else {
										return 1;
									}
								} else {
									return 1;
								}
							}
						}
					} else {
						if(pX[0] <= 39){
							if(pX[1] <= 35){
								if(pX[5] <= 10){
									if(pX[9] <= 92){
										return 0;
									} else {
										if(pX[7] <= 17){
											if(pX[6] <= -11){
												if(pX[0] <= 35){
													return 0;
												} else {
													if(pX[9] <= 131){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												return 1;
											}
										} else {
											return 0;
										}
									}
								} else {
									return 0;
								}
							} else {
								return 1;
							}
						} else {
							if(pX[9] <= 32){
								return 0;
							} else {
								if(pX[0] <= 47){
									if(pX[1] <= 30){
										if(pX[0] <= 43){
											if(pX[6] <= -46){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									} else {
										return 0;
									}
								} else {
									return 1;
								}
							}
						}
					}
				}
			} else {
				if(pX[9] <= 130){
					if(pX[7] <= -6){
						if(pX[0] <= 55){
							if(pX[5] <= 47){
								if(pX[9] <= 55){
									if(pX[0] <= 40){
										return 0;
									} else {
										return 1;
									}
								} else {
									if(pX[1] <= 17){
										if(pX[6] <= 24){
											if(pX[8] <= 41){
												return 0;
											} else {
												if(pX[7] <= -7){
													return 0;
												} else {
													return 1;
												}
											}
										} else {
											if(pX[7] <= -7){
												if(pX[0] <= 32){
													return 0;
												} else {
													if(pX[1] <= 16){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												return 0;
											}
										}
									} else {
										if(pX[7] <= -25){
											return 1;
										} else {
											if(pX[8] <= 52){
												return 0;
											} else {
												if(pX[8] <= 58){
													return 1;
												} else {
													return 0;
												}
											}
										}
									}
								}
							} else {
								if(pX[7] <= -11){
									if(pX[8] <= 45){
										return 0;
									} else {
										return 1;
									}
								} else {
									return 1;
								}
							}
						} else {
							if(pX[1] <= 20){
								if(pX[0] <= 93){
									return 1;
								} else {
									return 0;
								}
							} else {
								if(pX[5] <= 21){
									return 1;
								} else {
									if(pX[8] <= 78){
										if(pX[7] <= -16){
											if(pX[8] <= 58){
												if(pX[9] <= 78){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										} else {
											return 0;
										}
									} else {
										return 0;
									}
								}
							}
						}
					} else {
						if(pX[7] <= 11){
							if(pX[0] <= 34){
								if(pX[6] <= 24){
									return 1;
								} else {
									if(pX[0] <= 29){
										return 1;
									} else {
										if(pX[8] <= 52){
											return 0;
										} else {
											if(pX[5] <= 24){
												return 1;
											} else {
												return 0;
											}
										}
									}
								}
							} else {
								if(pX[0] <= 98){
									if(pX[6] <= 46){
										return 1;
									} else {
										if(pX[9] <= 72){
											if(pX[1] <= 16){
												return 0;
											} else {
												return 1;
											}
										} else {
											if(pX[5] <= 35){
												return 1;
											} else {
												if(pX[7] <= 1){
													return 1;
												} else {
													return 0;
												}
											}
										}
									}
								} else {
									return 0;
								}
							}
						} else {
							if(pX[0] <= 60){
								if(pX[7] <= 28){
									if(pX[7] <= 13){
										if(pX[8] <= 35){
											return 1;
										} else {
											return 0;
										}
									} else {
										return 0;
									}
								} else {
									return 1;
								}
							} else {
								if(pX[0] <= 78){
									if(pX[9] <= 99){
										if(pX[9] <= 57){
											return 1;
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								} else {
									return 1;
								}
							}
						}
					}
				} else {
					if(pX[5] <= 44){
						if(pX[8] <= 40){
							if(pX[9] <= 235){
								if(pX[1] <= 13){
									if(pX[8] <= 31){
										if(pX[6] <= 28){
											if(pX[9] <= 146){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 1;
										}
									} else {
										return 1;
									}
								} else {
									if(pX[0] <= 70){
										if(pX[5] <= 7){
											return 0;
										} else {
											if(pX[5] <= 30){
												if(pX[9] <= 232){
													if(pX[6] <= 26){
														if(pX[8] <= 36){
															return 0;
														} else {
															if(pX[8] <= 39){
																return 1;
															} else {
																if(pX[6] <= 25){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[8] <= 33){
															if(pX[0] <= 42){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[1] <= 17){
																return 1;
															} else {
																if(pX[7] <= 13){
																	if(pX[7] <= -3){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															}
														}
													}
												} else {
													return 0;
												}
											} else {
												if(pX[1] <= 26){
													if(pX[0] <= 43){
														if(pX[8] <= 33){
															if(pX[0] <= 37){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											}
										}
									} else {
										return 1;
									}
								}
							} else {
								if(pX[8] <= 38){
									if(pX[5] <= 36){
										if(pX[5] <= -132){
											return 0;
										} else {
											if(pX[9] <= 327){
												if(pX[5] <= -48){
													if(pX[5] <= -54){
														if(pX[6] <= 64){
															return 1;
														} else {
															if(pX[2] <= 2){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[1] <= 35){
													return 1;
												} else {
													if(pX[1] <= 57){
														return 0;
													} else {
														return 1;
													}
												}
											}
										}
									} else {
										return 0;
									}
								} else {
									if(pX[5] <= 9){
										if(pX[9] <= 285){
											if(pX[5] <= -5){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								}
							}
						} else {
							if(pX[9] <= 208){
								if(pX[9] <= 206){
									if(pX[8] <= 47){
										if(pX[1] <= 18){
											return 1;
										} else {
											if(pX[6] <= 62){
												if(pX[0] <= 57){
													return 0;
												} else {
													if(pX[7] <= -4){
														return 1;
													} else {
														if(pX[9] <= 192){
															return 0;
														} else {
															return 1;
														}
													}
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[8] <= 59){
											if(pX[9] <= 131){
												return 0;
											} else {
												if(pX[9] <= 170){
													if(pX[5] <= 8){
														if(pX[1] <= 26){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[7] <= -26){
															return 0;
														} else {
															if(pX[6] <= 27){
																if(pX[5] <= 21){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														}
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[5] <= 36){
												return 1;
											} else {
												if(pX[9] <= 143){
													return 0;
												} else {
													return 1;
												}
											}
										}
									}
								} else {
									return 0;
								}
							} else {
								if(pX[6] <= 26){
									if(pX[9] <= 295){
										if(pX[6] <= 25){
											return 1;
										} else {
											if(pX[0] <= 28){
												if(pX[5] <= 18){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[6] <= 24){
											return 1;
										} else {
											return 0;
										}
									}
								} else {
									if(pX[6] <= 53){
										return 1;
									} else {
										if(pX[5] <= 17){
											return 1;
										} else {
											if(pX[9] <= 216){
												return 0;
											} else {
												return 1;
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[0] <= 46){
							if(pX[1] <= 20){
								return 1;
							} else {
								if(pX[5] <= 50){
									return 1;
								} else {
									return 0;
								}
							}
						} else {
							if(pX[1] <= 34){
								return 1;
							} else {
								if(pX[8] <= 35){
									if(pX[1] <= 46){
										return 0;
									} else {
										return 1;
									}
								} else {
									return 1;
								}
							}
						}
					}
				}
			}
		}
	} else {
		if(pX[8] <= 6){
			if(pX[5] <= -156){
				if(pX[8] <= 0){
					if(pX[9] <= 288){
						return 1;
					} else {
						return 0;
					}
				} else {
					return 1;
				}
			} else {
				if(pX[6] <= -103){
					if(pX[6] <= -123){
						return 1;
					} else {
						if(pX[0] <= 167){
							if(pX[1] <= 30){
								return 0;
							} else {
								return 1;
							}
						} else {
							return 1;
						}
					}
				} else {
					if(pX[0] <= 135){
						if(pX[8] <= 4){
							if(pX[7] <= -47){
								return 1;
							} else {
								if(pX[1] <= 70){
									if(pX[0] <= 117){
										if(pX[6] <= 1){
											if(pX[1] <= 23){
												return 0;
											} else {
												if(pX[8] <= 0){
													return 0;
												} else {
													return 1;
												}
											}
										} else {
											return 0;
										}
									} else {
										if(pX[1] <= 31){
											if(pX[1] <= 30){
												if(pX[0] <= 123){
													if(pX[9] <= 257){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											return 0;
										}
									}
								} else {
									if(pX[7] <= 27){
										return 1;
									} else {
										return 0;
									}
								}
							}
						} else {
							if(pX[7] <= 23){
								if(pX[5] <= -90){
									if(pX[6] <= 73){
										return 0;
									} else {
										return 1;
									}
								} else {
									if(pX[9] <= 212){
										if(pX[6] <= 20){
											return 1;
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								}
							} else {
								return 0;
							}
						}
					} else {
						if(pX[7] <= -25){
							return 1;
						} else {
							if(pX[6] <= 79){
								if(pX[0] <= 154){
									return 1;
								} else {
									if(pX[2] <= 2){
										return 0;
									} else {
										return 1;
									}
								}
							} else {
								return 0;
							}
						}
					}
				}
			}
		} else {
			if(pX[1] <= 22){
				if(pX[9] <= 207){
					if(pX[5] <= 86){
						if(pX[1] <= 20){
							if(pX[8] <= 15){
								if(pX[5] <= -12){
									if(pX[5] <= -163){
										return 0;
									} else {
										return 1;
									}
								} else {
									return 0;
								}
							} else {
								if(pX[7] <= 3){
									if(pX[8] <= 61){
										if(pX[6] <= 78){
											return 1;
										} else {
											if(pX[9] <= 101){
												return 0;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[5] <= -51){
											if(pX[5] <= -90){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 0;
										}
									}
								} else {
									return 1;
								}
							}
						} else {
							if(pX[5] <= -178){
								return 1;
							} else {
								if(pX[8] <= 18){
									return 1;
								} else {
									return 0;
								}
							}
						}
					} else {
						if(pX[0] <= 151){
							return 1;
						} else {
							if(pX[7] <= -11){
								return 0;
							} else {
								return 1;
							}
						}
					}
				} else {
					if(pX[7] <= -2){
						if(pX[5] <= -122){
							if(pX[9] <= 261){
								return 1;
							} else {
								if(pX[7] <= -13){
									return 1;
								} else {
									return 0;
								}
							}
						} else {
							return 1;
						}
					} else {
						return 1;
					}
				}
			} else {
				if(pX[2] <= 2){
					if(pX[8] <= 8){
						if(pX[7] <= -3){
							if(pX[6] <= -47){
								return 0;
							} else {
								return 1;
							}
						} else {
							return 1;
						}
					} else {
						if(pX[7] <= 16){
							if(pX[8] <= 11){
								if(pX[1] <= 23){
									return 0;
								} else {
									return 1;
								}
							} else {
								if(pX[7] <= -14){
									return 1;
								} else {
									if(pX[1] <= 24){
										if(pX[7] <= -13){
											return 0;
										} else {
											return 1;
										}
									} else {
										return 1;
									}
								}
							}
						} else {
							if(pX[6] <= 207){
								if(pX[0] <= 113){
									if(pX[7] <= 17){
										return 0;
									} else {
										if(pX[6] <= 87){
											return 1;
										} else {
											return 0;
										}
									}
								} else {
									if(pX[8] <= 42){
										return 1;
									} else {
										if(pX[0] <= 132){
											if(pX[5] <= -24){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 1;
										}
									}
								}
							} else {
								return 0;
							}
						}
					}
				} else {
					if(pX[8] <= 11){
						if(pX[9] <= 300){
							if(pX[6] <= 101){
								if(pX[6] <= -11){
									return 1;
								} else {
									if(pX[9] <= 275){
										return 1;
									} else {
										return 0;
									}
								}
							} else {
								if(pX[7] <= -74){
									return 1;
								} else {
									if(pX[5] <= -225){
										return 1;
									} else {
										return 0;
									}
								}
							}
						} else {
							return 1;
						}
					} else {
						if(pX[9] <= 42){
							if(pX[8] <= 73){
								return 1;
							} else {
								if(pX[8] <= 80){
									return 0;
								} else {
									return 1;
								}
							}
						} else {
							if(pX[8] <= 19){
								if(pX[1] <= 105){
									if(pX[6] <= 29){
										return 1;
									} else {
										if(pX[5] <= 177){
											return 1;
										} else {
											return 0;
										}
									}
								} else {
									return 0;
								}
							} else {
								if(pX[0] <= 133){
									if(pX[1] <= 117){
										if(pX[5] <= 205){
											return 1;
										} else {
											return 0;
										}
									} else {
										return 0;
									}
								} else {
									return 1;
								}
							}
						}
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict2( short const pX[10]){
	if(pX[1] <= 40){
		if(pX[0] <= 107){
			if(pX[8] <= 22){
				if(pX[8] <= 11){
					if(pX[6] <= 26){
						if(pX[5] <= -35){
							if(pX[7] <= -19){
								if(pX[9] <= 258){
									if(pX[7] <= -23){
										if(pX[0] <= 79){
											return 1;
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								} else {
									if(pX[1] <= 35){
										if(pX[9] <= 298){
											return 0;
										} else {
											if(pX[5] <= -99){
												return 1;
											} else {
												if(pX[7] <= -20){
													if(pX[0] <= 99){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										}
									} else {
										return 1;
									}
								}
							} else {
								if(pX[6] <= -48){
									if(pX[8] <= 1){
										return 0;
									} else {
										if(pX[7] <= 13){
											if(pX[5] <= -44){
												if(pX[1] <= 35){
													if(pX[0] <= 72){
														if(pX[5] <= -59){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[7] <= 4){
															return 1;
														} else {
															if(pX[5] <= -80){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													return 0;
												}
											} else {
												return 0;
											}
										} else {
											if(pX[6] <= -77){
												return 0;
											} else {
												if(pX[7] <= 31){
													if(pX[8] <= 6){
														if(pX[9] <= 242){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											}
										}
									}
								} else {
									if(pX[9] <= 126){
										if(pX[5] <= -63){
											return 1;
										} else {
											if(pX[0] <= 33){
												return 0;
											} else {
												if(pX[9] <= 108){
													return 0;
												} else {
													return 1;
												}
											}
										}
									} else {
										if(pX[1] <= 38){
											if(pX[0] <= 22){
												return 1;
											} else {
												if(pX[1] <= 13){
													if(pX[9] <= 292){
														if(pX[5] <= -71){
															return 0;
														} else {
															if(pX[7] <= 7){
																if(pX[5] <= -59){
																	if(pX[9] <= 238){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[6] <= 15){
																	if(pX[9] <= 208){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														}
													} else {
														return 0;
													}
												} else {
													if(pX[1] <= 18){
														return 0;
													} else {
														if(pX[0] <= 104){
															if(pX[1] <= 19){
																if(pX[9] <= 214){
																	if(pX[6] <= -6){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[1] <= 36){
																	if(pX[1] <= 22){
																		return 0;
																	} else {
																		if(pX[8] <= 1){
																			return 0;
																		} else {
																			if(pX[5] <= -54){
																				if(pX[0] <= 60){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[7] <= 19){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															return 1;
														}
													}
												}
											}
										} else {
											return 1;
										}
									}
								}
							}
						} else {
							if(pX[0] <= 17){
								if(pX[9] <= 194){
									if(pX[7] <= -5){
										if(pX[0] <= 13){
											if(pX[7] <= -9){
												if(pX[7] <= -10){
													if(pX[9] <= 114){
														return 0;
													} else {
														if(pX[6] <= -2){
															return 0;
														} else {
															if(pX[9] <= 129){
																if(pX[8] <= 9){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														}
													}
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											if(pX[6] <= 4){
												if(pX[9] <= 161){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[9] <= 152){
											if(pX[1] <= 9){
												if(pX[8] <= 8){
													if(pX[8] <= 4){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[8] <= 9){
													if(pX[7] <= 9){
														return 0;
													} else {
														if(pX[1] <= 10){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[9] <= 184){
												return 0;
											} else {
												if(pX[0] <= 10){
													return 1;
												} else {
													return 0;
												}
											}
										}
									}
								} else {
									if(pX[8] <= 10){
										if(pX[8] <= 8){
											if(pX[1] <= 9){
												return 1;
											} else {
												if(pX[9] <= 230){
													if(pX[9] <= 201){
														if(pX[9] <= 195){
															return 1;
														} else {
															if(pX[8] <= 6){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														return 0;
													}
												} else {
													if(pX[0] <= 13){
														if(pX[0] <= 12){
															return 1;
														} else {
															if(pX[6] <= 5){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														return 1;
													}
												}
											}
										} else {
											return 1;
										}
									} else {
										return 0;
									}
								}
							} else {
								if(pX[6] <= -12){
									if(pX[9] <= 162){
										if(pX[8] <= 4){
											if(pX[0] <= 23){
												if(pX[7] <= -5){
													if(pX[7] <= -11){
														return 1;
													} else {
														if(pX[1] <= 11){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													return 0;
												}
											} else {
												if(pX[5] <= -32){
													if(pX[0] <= 38){
														return 0;
													} else {
														if(pX[7] <= -5){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													if(pX[7] <= -19){
														if(pX[8] <= 1){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												}
											}
										} else {
											if(pX[6] <= -34){
												if(pX[8] <= 9){
													return 1;
												} else {
													return 0;
												}
											} else {
												if(pX[0] <= 62){
													if(pX[6] <= -29){
														if(pX[2] <= 2){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[7] <= -21){
															return 1;
														} else {
															if(pX[8] <= 6){
																if(pX[5] <= -33){
																	return 1;
																} else {
																	if(pX[7] <= 5){
																		if(pX[9] <= 88){
																			if(pX[7] <= -1){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[5] <= -4){
																				return 0;
																			} else {
																				if(pX[5] <= 0){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[7] <= 11){
																	if(pX[1] <= 19){
																		return 0;
																	} else {
																		if(pX[5] <= -9){
																			if(pX[2] <= 2){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[1] <= 14){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														}
													}
												} else {
													return 1;
												}
											}
										}
									} else {
										if(pX[6] <= -36){
											if(pX[0] <= 99){
												if(pX[0] <= 73){
													if(pX[6] <= -64){
														return 1;
													} else {
														if(pX[9] <= 330){
															if(pX[9] <= 179){
																if(pX[9] <= 177){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												} else {
													return 0;
												}
											} else {
												if(pX[1] <= 19){
													if(pX[0] <= 102){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 0;
												}
											}
										} else {
											if(pX[1] <= 36){
												if(pX[5] <= 104){
													if(pX[0] <= 31){
														if(pX[9] <= 173){
															if(pX[9] <= 172){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[7] <= -10){
																if(pX[6] <= -26){
																	if(pX[9] <= 208){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[7] <= -13){
																		if(pX[6] <= -16){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																return 0;
															}
														}
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[5] <= 55){
													return 0;
												} else {
													return 1;
												}
											}
										}
									}
								} else {
									if(pX[2] <= 2){
										if(pX[1] <= 10){
											if(pX[0] <= 28){
												if(pX[5] <= -14){
													if(pX[6] <= 0){
														return 0;
													} else {
														if(pX[9] <= 149){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													if(pX[8] <= 10){
														if(pX[7] <= -4){
															if(pX[1] <= 2){
																return 1;
															} else {
																if(pX[5] <= 2){
																	if(pX[8] <= 7){
																		if(pX[6] <= -1){
																			return 1;
																		} else {
																			if(pX[7] <= -10){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[0] <= 18){
																return 0;
															} else {
																if(pX[8] <= 8){
																	if(pX[1] <= 2){
																		return 0;
																	} else {
																		if(pX[7] <= 0){
																			if(pX[6] <= 0){
																				return 1;
																			} else {
																				if(pX[5] <= 11){
																					return 1;
																				} else {
																					if(pX[6] <= 19){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			}
																		} else {
																			if(pX[9] <= 234){
																				if(pX[6] <= 10){
																					return 0;
																				} else {
																					if(pX[9] <= 149){
																						if(pX[9] <= 145){
																							if(pX[7] <= 9){
																								if(pX[5] <= 24){
																									if(pX[9] <= 124){
																										if(pX[1] <= 7){
																											if(pX[9] <= 64){
																												return 1;
																											} else {
																												return 0;
																											}
																										} else {
																											if(pX[0] <= 20){
																												return 0;
																											} else {
																												return 1;
																											}
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							return 1;
																						}
																					} else {
																						if(pX[8] <= 1){
																							if(pX[5] <= -6){
																								return 1;
																							} else {
																								if(pX[1] <= 9){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							if(pX[5] <= 22){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					}
																				}
																			} else {
																				if(pX[5] <= 24){
																					if(pX[0] <= 23){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[5] <= -9){
																		return 0;
																	} else {
																		if(pX[0] <= 21){
																			if(pX[5] <= -1){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															}
														}
													} else {
														if(pX[1] <= 9){
															return 0;
														} else {
															if(pX[9] <= 137){
																return 0;
															} else {
																if(pX[6] <= 14){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													}
												}
											} else {
												if(pX[7] <= 6){
													if(pX[0] <= 41){
														if(pX[6] <= 24){
															if(pX[8] <= 8){
																if(pX[7] <= -8){
																	return 1;
																} else {
																	if(pX[6] <= 15){
																		if(pX[6] <= 7){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[9] <= 175){
																			if(pX[0] <= 39){
																				if(pX[5] <= 42){
																					if(pX[1] <= 6){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																if(pX[6] <= 22){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												} else {
													if(pX[5] <= 13){
														return 1;
													} else {
														if(pX[5] <= 20){
															return 0;
														} else {
															if(pX[9] <= 218){
																return 1;
															} else {
																return 0;
															}
														}
													}
												}
											}
										} else {
											if(pX[7] <= -22){
												if(pX[5] <= -1){
													return 1;
												} else {
													if(pX[0] <= 34){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												if(pX[1] <= 13){
													if(pX[0] <= 55){
														if(pX[9] <= 100){
															if(pX[0] <= 28){
																if(pX[6] <= -10){
																	return 1;
																} else {
																	if(pX[7] <= 1){
																		if(pX[7] <= -6){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																return 1;
															}
														} else {
															if(pX[0] <= 19){
																if(pX[6] <= 14){
																	return 0;
																} else {
																	if(pX[7] <= 8){
																		if(pX[8] <= 8){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[5] <= -5){
																	if(pX[9] <= 213){
																		return 0;
																	} else {
																		if(pX[7] <= 7){
																			return 0;
																		} else {
																			if(pX[9] <= 234){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[5] <= -2){
																		if(pX[8] <= 10){
																			if(pX[6] <= 19){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[5] <= 3){
																			if(pX[1] <= 11){
																				if(pX[5] <= 0){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[8] <= 9){
																					if(pX[5] <= 0){
																						if(pX[5] <= 0){
																							return 0;
																						} else {
																							if(pX[0] <= 21){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[9] <= 253){
																				if(pX[5] <= 20){
																					if(pX[8] <= 0){
																						if(pX[0] <= 25){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[8] <= 8){
																							return 0;
																						} else {
																							if(pX[6] <= 20){
																								return 0;
																							} else {
																								if(pX[9] <= 185){
																									return 0;
																								} else {
																									if(pX[8] <= 10){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[6] <= 18){
																						if(pX[8] <= 7){
																							if(pX[5] <= 22){
																								return 1;
																							} else {
																								if(pX[5] <= 27){
																									if(pX[6] <= 9){
																										if(pX[9] <= 208){
																											return 1;
																										} else {
																											return 0;
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									return 0;
																								}
																							}
																						} else {
																							if(pX[5] <= 28){
																								if(pX[1] <= 12){
																									if(pX[9] <= 196){
																										return 1;
																									} else {
																										return 0;
																									}
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						if(pX[7] <= -5){
																							return 0;
																						} else {
																							if(pX[9] <= 183){
																								return 0;
																							} else {
																								if(pX[0] <= 28){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				}
																			} else {
																				if(pX[0] <= 29){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																}
															}
														}
													} else {
														return 1;
													}
												} else {
													if(pX[1] <= 15){
														if(pX[9] <= 262){
															if(pX[8] <= 0){
																if(pX[7] <= -1){
																	return 0;
																} else {
																	if(pX[7] <= 7){
																		if(pX[9] <= 199){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[0] <= 25){
																	if(pX[9] <= 204){
																		if(pX[9] <= 114){
																			if(pX[9] <= 102){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[1] <= 14){
																			if(pX[8] <= 6){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[7] <= -10){
																		if(pX[6] <= 0){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[8] <= 9){
																if(pX[1] <= 14){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[0] <= 25){
															if(pX[6] <= 20){
																if(pX[5] <= 35){
																	if(pX[9] <= 221){
																		if(pX[7] <= -16){
																			return 1;
																		} else {
																			if(pX[1] <= 21){
																				if(pX[0] <= 20){
																					if(pX[7] <= -9){
																						if(pX[7] <= -11){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[8] <= 4){
																			return 0;
																		} else {
																			if(pX[0] <= 23){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[5] <= 28){
																	return 1;
																} else {
																	if(pX[7] <= 5){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[5] <= -14){
																if(pX[5] <= -15){
																	if(pX[6] <= 1){
																		return 1;
																	} else {
																		if(pX[1] <= 16){
																			if(pX[0] <= 29){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[5] <= 21){
																	if(pX[0] <= 48){
																		if(pX[6] <= 21){
																			return 0;
																		} else {
																			if(pX[5] <= 0){
																				if(pX[0] <= 30){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[7] <= -15){
																					if(pX[9] <= 246){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[1] <= 20){
																						return 0;
																					} else {
																						if(pX[0] <= 28){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		}
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[1] <= 16){
																		if(pX[9] <= 221){
																			if(pX[6] <= 23){
																				if(pX[0] <= 33){
																					return 0;
																				} else {
																					if(pX[9] <= 139){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				if(pX[5] <= 27){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[9] <= 231){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[6] <= 2){
																			if(pX[8] <= 5){
																				return 0;
																			} else {
																				if(pX[8] <= 8){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[5] <= 22){
																				if(pX[1] <= 20){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[6] <= 18){
																					if(pX[8] <= 0){
																						if(pX[6] <= 14){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[5] <= 25){
																							if(pX[6] <= 17){
																								return 0;
																							} else {
																								if(pX[1] <= 18){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[9] <= 360){
											if(pX[9] <= 91){
												if(pX[5] <= 1){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 0;
											}
										} else {
											return 1;
										}
									}
								}
							}
						}
					} else {
						if(pX[9] <= 46){
							return 1;
						} else {
							if(pX[5] <= 59){
								if(pX[8] <= 7){
									if(pX[5] <= -37){
										if(pX[6] <= 46){
											if(pX[9] <= 288){
												if(pX[1] <= 9){
													if(pX[0] <= 67){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[8] <= 6){
														if(pX[7] <= 24){
															if(pX[0] <= 103){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 1;
														}
													} else {
														if(pX[1] <= 20){
															if(pX[6] <= 35){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[5] <= -39){
													if(pX[8] <= 6){
														if(pX[6] <= 29){
															if(pX[1] <= 13){
																return 1;
															} else {
																if(pX[1] <= 30){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												} else {
													if(pX[6] <= 43){
														return 0;
													} else {
														return 1;
													}
												}
											}
										} else {
											if(pX[7] <= 13){
												return 0;
											} else {
												if(pX[8] <= 2){
													if(pX[0] <= 73){
														if(pX[0] <= 72){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												} else {
													if(pX[8] <= 5){
														if(pX[1] <= 19){
															return 1;
														} else {
															if(pX[0] <= 103){
																if(pX[9] <= 175){
																	return 1;
																} else {
																	if(pX[0] <= 82){
																		if(pX[6] <= 58){
																			return 0;
																		} else {
																			if(pX[5] <= -66){
																				return 0;
																			} else {
																				if(pX[9] <= 287){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																return 1;
															}
														}
													} else {
														return 0;
													}
												}
											}
										}
									} else {
										if(pX[6] <= 50){
											if(pX[0] <= 31){
												if(pX[5] <= 10){
													return 0;
												} else {
													if(pX[7] <= -4){
														return 1;
													} else {
														if(pX[7] <= 3){
															return 0;
														} else {
															if(pX[6] <= 31){
																return 0;
															} else {
																return 1;
															}
														}
													}
												}
											} else {
												if(pX[0] <= 98){
													if(pX[6] <= 49){
														if(pX[5] <= 35){
															if(pX[1] <= 8){
																return 1;
															} else {
																if(pX[1] <= 9){
																	if(pX[5] <= 28){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[7] <= 7){
																		if(pX[5] <= 31){
																			return 0;
																		} else {
																			if(pX[9] <= 251){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[0] <= 56){
																			if(pX[5] <= 4){
																				if(pX[6] <= 36){
																					return 0;
																				} else {
																					if(pX[7] <= 8){
																						return 1;
																					} else {
																						if(pX[7] <= 17){
																							if(pX[6] <= 42){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							return 1;
																						}
																					}
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															}
														} else {
															if(pX[9] <= 333){
																if(pX[6] <= 47){
																	if(pX[1] <= 14){
																		if(pX[8] <= 0){
																			return 0;
																		} else {
																			if(pX[6] <= 28){
																				return 1;
																			} else {
																				if(pX[9] <= 115){
																					return 1;
																				} else {
																					if(pX[0] <= 44){
																						if(pX[9] <= 246){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[1] <= 32){
																			if(pX[0] <= 56){
																				return 0;
																			} else {
																				if(pX[5] <= 41){
																					if(pX[8] <= 5){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[6] <= 45){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	if(pX[5] <= 47){
																		return 0;
																	} else {
																		if(pX[9] <= 256){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[6] <= 40){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[9] <= 223){
															if(pX[8] <= 3){
																if(pX[7] <= 3){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													}
												} else {
													if(pX[1] <= 24){
														return 1;
													} else {
														return 0;
													}
												}
											}
										} else {
											if(pX[2] <= 2){
												if(pX[6] <= 58){
													return 0;
												} else {
													if(pX[6] <= 61){
														if(pX[6] <= 59){
															if(pX[0] <= 51){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[8] <= 4){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														return 0;
													}
												}
											} else {
												if(pX[7] <= 9){
													return 0;
												} else {
													if(pX[7] <= 10){
														if(pX[2] <= 3){
															if(pX[9] <= 245){
																return 0;
															} else {
																if(pX[6] <= 69){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															return 0;
														}
													} else {
														if(pX[0] <= 101){
															if(pX[6] <= 79){
																return 0;
															} else {
																if(pX[6] <= 80){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[6] <= 64){
																return 0;
															} else {
																if(pX[6] <= 66){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[0] <= 29){
										return 1;
									} else {
										if(pX[9] <= 267){
											if(pX[1] <= 8){
												return 1;
											} else {
												if(pX[0] <= 55){
													if(pX[0] <= 38){
														if(pX[0] <= 37){
															if(pX[9] <= 103){
																if(pX[0] <= 32){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														} else {
															if(pX[7] <= -8){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														if(pX[7] <= -4){
															if(pX[7] <= -5){
																return 0;
															} else {
																if(pX[1] <= 11){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															return 0;
														}
													}
												} else {
													if(pX[5] <= 35){
														if(pX[7] <= 20){
															if(pX[1] <= 14){
																if(pX[5] <= -12){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														} else {
															if(pX[9] <= 251){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														if(pX[1] <= 16){
															if(pX[8] <= 8){
																return 0;
															} else {
																if(pX[6] <= 63){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[0] <= 61){
																return 1;
															} else {
																if(pX[7] <= -14){
																	if(pX[6] <= 59){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														}
													}
												}
											}
										} else {
											if(pX[1] <= 10){
												return 1;
											} else {
												if(pX[6] <= 62){
													if(pX[1] <= 24){
														if(pX[9] <= 331){
															if(pX[5] <= -61){
																if(pX[9] <= 274){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																if(pX[1] <= 16){
																	if(pX[7] <= -10){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[2] <= 2){
															if(pX[7] <= 25){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													}
												} else {
													return 0;
												}
											}
										}
									}
								}
							} else {
								if(pX[1] <= 10){
									if(pX[7] <= -6){
										return 0;
									} else {
										return 1;
									}
								} else {
									if(pX[5] <= 69){
										if(pX[9] <= 228){
											return 0;
										} else {
											if(pX[9] <= 242){
												if(pX[7] <= 10){
													return 1;
												} else {
													if(pX[0] <= 70){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												if(pX[0] <= 57){
													if(pX[6] <= 44){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[9] <= 248){
														if(pX[6] <= 58){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												}
											}
										}
									} else {
										if(pX[6] <= 37){
											if(pX[7] <= -6){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 0;
										}
									}
								}
							}
						}
					}
				} else {
					if(pX[5] <= -29){
						if(pX[9] <= 288){
							if(pX[6] <= -37){
								if(pX[9] <= 197){
									if(pX[1] <= 19){
										if(pX[8] <= 15){
											if(pX[0] <= 71){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 1;
										}
									} else {
										return 1;
									}
								} else {
									if(pX[8] <= 18){
										if(pX[9] <= 213){
											return 0;
										} else {
											if(pX[7] <= 16){
												return 1;
											} else {
												return 0;
											}
										}
									} else {
										return 1;
									}
								}
							} else {
								if(pX[5] <= -30){
									if(pX[8] <= 15){
										if(pX[7] <= -27){
											return 1;
										} else {
											if(pX[5] <= -31){
												if(pX[1] <= 24){
													if(pX[0] <= 100){
														if(pX[6] <= -33){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												} else {
													if(pX[9] <= 268){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												if(pX[7] <= 8){
													return 1;
												} else {
													return 0;
												}
											}
										}
									} else {
										if(pX[7] <= 17){
											if(pX[6] <= 60){
												if(pX[5] <= -38){
													if(pX[1] <= 16){
														if(pX[7] <= -10){
															return 1;
														} else {
															if(pX[6] <= -7){
																if(pX[6] <= -27){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[5] <= -53){
															return 0;
														} else {
															if(pX[7] <= -12){
																if(pX[0] <= 39){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														}
													}
												} else {
													if(pX[9] <= 223){
														if(pX[8] <= 19){
															if(pX[9] <= 94){
																return 1;
															} else {
																if(pX[1] <= 19){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											} else {
												if(pX[5] <= -87){
													return 0;
												} else {
													return 1;
												}
											}
										} else {
											return 1;
										}
									}
								} else {
									if(pX[8] <= 12){
										return 1;
									} else {
										if(pX[9] <= 169){
											return 1;
										} else {
											return 0;
										}
									}
								}
							}
						} else {
							if(pX[0] <= 77){
								if(pX[1] <= 28){
									if(pX[9] <= 323){
										if(pX[8] <= 17){
											if(pX[5] <= -40){
												return 0;
											} else {
												return 1;
											}
										} else {
											if(pX[5] <= -48){
												return 1;
											} else {
												return 0;
											}
										}
									} else {
										return 1;
									}
								} else {
									if(pX[5] <= -64){
										return 1;
									} else {
										if(pX[8] <= 17){
											return 0;
										} else {
											return 1;
										}
									}
								}
							} else {
								return 1;
							}
						}
					} else {
						if(pX[1] <= 14){
							if(pX[0] <= 41){
								if(pX[0] <= 11){
									return 1;
								} else {
									if(pX[6] <= 10){
										if(pX[7] <= 13){
											if(pX[9] <= 52){
												if(pX[5] <= -6){
													return 1;
												} else {
													if(pX[6] <= 2){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												if(pX[5] <= 2){
													if(pX[1] <= 5){
														if(pX[7] <= -3){
															return 1;
														} else {
															if(pX[6] <= -10){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														if(pX[5] <= 1){
															if(pX[7] <= -7){
																if(pX[1] <= 9){
																	return 1;
																} else {
																	if(pX[8] <= 20){
																		if(pX[0] <= 33){
																			if(pX[6] <= -26){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[9] <= 201){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[8] <= 21){
																			if(pX[0] <= 26){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																if(pX[8] <= 18){
																	if(pX[8] <= 17){
																		if(pX[5] <= -26){
																			if(pX[0] <= 20){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[6] <= -11){
																				return 0;
																			} else {
																				if(pX[6] <= -10){
																					if(pX[8] <= 16){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[8] <= 15){
																						if(pX[8] <= 14){
																							return 0;
																						} else {
																							if(pX[9] <= 160){
																								if(pX[6] <= -6){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[9] <= 166){
																			if(pX[5] <= -17){
																				return 0;
																			} else {
																				if(pX[1] <= 12){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[1] <= 10){
																				return 0;
																			} else {
																				if(pX[5] <= 0){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[7] <= 11){
																		return 0;
																	} else {
																		if(pX[6] <= -13){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															}
														} else {
															return 0;
														}
													}
												} else {
													if(pX[8] <= 14){
														if(pX[6] <= -12){
															if(pX[9] <= 110){
																if(pX[1] <= 12){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														} else {
															if(pX[9] <= 210){
																if(pX[0] <= 20){
																	if(pX[6] <= -7){
																		return 0;
																	} else {
																		if(pX[7] <= -8){
																			return 1;
																		} else {
																			if(pX[8] <= 12){
																				if(pX[1] <= 8){
																					if(pX[5] <= 10){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[0] <= 25){
																		if(pX[6] <= -1){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[6] <= -28){
															return 1;
														} else {
															if(pX[7] <= 12){
																if(pX[1] <= 12){
																	if(pX[6] <= 6){
																		if(pX[1] <= 6){
																			if(pX[9] <= 140){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[0] <= 15){
																				if(pX[7] <= 8){
																					if(pX[8] <= 19){
																						if(pX[8] <= 15){
																							return 0;
																						} else {
																							if(pX[7] <= -10){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[9] <= 101){
																			return 1;
																		} else {
																			if(pX[9] <= 225){
																				if(pX[0] <= 17){
																					if(pX[5] <= 7){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	if(pX[9] <= 183){
																		return 0;
																	} else {
																		if(pX[9] <= 216){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																return 1;
															}
														}
													}
												}
											}
										} else {
											return 1;
										}
									} else {
										if(pX[0] <= 15){
											return 1;
										} else {
											if(pX[7] <= 6){
												if(pX[5] <= 31){
													if(pX[8] <= 14){
														if(pX[9] <= 192){
															if(pX[0] <= 18){
																if(pX[9] <= 95){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																if(pX[1] <= 8){
																	return 0;
																} else {
																	if(pX[5] <= 19){
																		if(pX[1] <= 11){
																			return 0;
																		} else {
																			if(pX[6] <= 21){
																				if(pX[9] <= 138){
																					return 0;
																				} else {
																					if(pX[1] <= 12){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[9] <= 134){
																			return 1;
																		} else {
																			if(pX[6] <= 18){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															}
														} else {
															if(pX[6] <= 22){
																if(pX[9] <= 243){
																	if(pX[6] <= 14){
																		return 0;
																	} else {
																		if(pX[1] <= 11){
																			if(pX[9] <= 210){
																				if(pX[7] <= -9){
																					return 1;
																				} else {
																					if(pX[6] <= 17){
																						return 0;
																					} else {
																						if(pX[6] <= 21){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[1] <= 11){
																	return 1;
																} else {
																	if(pX[6] <= 31){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														}
													} else {
														if(pX[5] <= -1){
															if(pX[9] <= 55){
																return 1;
															} else {
																if(pX[6] <= 19){
																	if(pX[9] <= 125){
																		if(pX[9] <= 102){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[0] <= 34){
																		if(pX[5] <= -8){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[0] <= 19){
																if(pX[6] <= 12){
																	return 0;
																} else {
																	if(pX[5] <= 18){
																		return 1;
																	} else {
																		if(pX[9] <= 63){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[9] <= 239){
																	if(pX[8] <= 18){
																		if(pX[0] <= 22){
																			if(pX[9] <= 198){
																				if(pX[0] <= 20){
																					if(pX[7] <= -5){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[1] <= 10){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[1] <= 9){
																				if(pX[9] <= 78){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[5] <= 13){
																					if(pX[0] <= 25){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[6] <= 18){
																						if(pX[8] <= 15){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 1;
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[6] <= 30){
																			if(pX[1] <= 7){
																				if(pX[0] <= 31){
																					if(pX[0] <= 20){
																						return 0;
																					} else {
																						if(pX[7] <= 1){
																							if(pX[5] <= 22){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[0] <= 25){
																					if(pX[6] <= 20){
																						if(pX[6] <= 15){
																							if(pX[6] <= 13){
																								return 1;
																							} else {
																								if(pX[1] <= 13){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	return 1;
																}
															}
														}
													}
												} else {
													return 0;
												}
											} else {
												if(pX[6] <= 15){
													if(pX[1] <= 9){
														return 1;
													} else {
														if(pX[7] <= 9){
															if(pX[9] <= 170){
																return 0;
															} else {
																if(pX[6] <= 12){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[6] <= 13){
																if(pX[7] <= 10){
																	if(pX[1] <= 11){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[9] <= 212){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													}
												} else {
													if(pX[9] <= 212){
														if(pX[5] <= 34){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[1] <= 11){
															if(pX[9] <= 222){
																return 1;
															} else {
																if(pX[8] <= 15){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															return 0;
														}
													}
												}
											}
										}
									}
								}
							} else {
								if(pX[9] <= 88){
									return 1;
								} else {
									if(pX[2] <= 2){
										if(pX[6] <= 18){
											if(pX[6] <= -52){
												return 1;
											} else {
												if(pX[7] <= 9){
													return 0;
												} else {
													if(pX[1] <= 13){
														return 1;
													} else {
														return 0;
													}
												}
											}
										} else {
											if(pX[1] <= 11){
												if(pX[9] <= 201){
													if(pX[5] <= 26){
														if(pX[6] <= 33){
															return 1;
														} else {
															if(pX[5] <= 7){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[6] <= 43){
													if(pX[6] <= 38){
														if(pX[7] <= 1){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												} else {
													if(pX[7] <= 3){
														return 1;
													} else {
														return 0;
													}
												}
											}
										}
									} else {
										return 1;
									}
								}
							}
						} else {
							if(pX[1] <= 33){
								if(pX[7] <= -17){
									if(pX[0] <= 29){
										if(pX[9] <= 193){
											return 1;
										} else {
											return 0;
										}
									} else {
										if(pX[9] <= 246){
											if(pX[5] <= -13){
												if(pX[5] <= -17){
													return 0;
												} else {
													return 1;
												}
											} else {
												if(pX[6] <= -4){
													return 1;
												} else {
													return 0;
												}
											}
										} else {
											if(pX[2] <= 2){
												return 1;
											} else {
												if(pX[9] <= 285){
													return 1;
												} else {
													return 0;
												}
											}
										}
									}
								} else {
									if(pX[7] <= 31){
										if(pX[1] <= 18){
											if(pX[6] <= 17){
												if(pX[8] <= 21){
													if(pX[7] <= -16){
														return 1;
													} else {
														if(pX[0] <= 65){
															if(pX[2] <= 2){
																if(pX[1] <= 17){
																	if(pX[5] <= -20){
																		if(pX[5] <= -26){
																			return 0;
																		} else {
																			if(pX[5] <= -23){
																				if(pX[1] <= 16){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[9] <= 184){
																					if(pX[1] <= 16){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		if(pX[6] <= -38){
																			return 1;
																		} else {
																			if(pX[6] <= 12){
																				if(pX[1] <= 16){
																					return 0;
																				} else {
																					if(pX[7] <= 16){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				if(pX[5] <= 7){
																					return 0;
																				} else {
																					if(pX[0] <= 33){
																						if(pX[0] <= 23){
																							if(pX[5] <= 11){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[0] <= 36){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		}
																	}
																} else {
																	if(pX[9] <= 219){
																		if(pX[5] <= 5){
																			if(pX[6] <= -16){
																				return 0;
																			} else {
																				if(pX[8] <= 17){
																					if(pX[8] <= 13){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																return 0;
															}
														} else {
															if(pX[7] <= 2){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													if(pX[6] <= 12){
														if(pX[0] <= 24){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												}
											} else {
												if(pX[6] <= 21){
													if(pX[0] <= 36){
														if(pX[1] <= 16){
															if(pX[9] <= 174){
																if(pX[6] <= 20){
																	return 0;
																} else {
																	if(pX[7] <= -8){
																		return 1;
																	} else {
																		if(pX[0] <= 26){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[9] <= 215){
																	if(pX[6] <= 18){
																		if(pX[9] <= 199){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[9] <= 185){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[9] <= 59){
																return 1;
															} else {
																if(pX[7] <= 12){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													} else {
														return 0;
													}
												} else {
													if(pX[2] <= 2){
														if(pX[9] <= 268){
															if(pX[0] <= 35){
																if(pX[1] <= 15){
																	if(pX[5] <= 32){
																		if(pX[0] <= 31){
																			return 0;
																		} else {
																			if(pX[0] <= 33){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[0] <= 33){
																		return 0;
																	} else {
																		if(pX[5] <= 15){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[8] <= 21){
																	if(pX[8] <= 12){
																		if(pX[1] <= 15){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[9] <= 242){
																			return 0;
																		} else {
																			if(pX[9] <= 247){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[5] <= -6){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														if(pX[5] <= 19){
															return 0;
														} else {
															if(pX[7] <= 6){
																if(pX[0] <= 53){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														}
													}
												}
											}
										} else {
											if(pX[5] <= 73){
												if(pX[6] <= -29){
													if(pX[0] <= 48){
														return 1;
													} else {
														if(pX[0] <= 83){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													if(pX[9] <= 252){
														if(pX[0] <= 55){
															if(pX[7] <= 24){
																if(pX[9] <= 128){
																	if(pX[8] <= 16){
																		if(pX[9] <= 126){
																			if(pX[9] <= 113){
																				return 0;
																			} else {
																				if(pX[5] <= 6){
																					return 0;
																				} else {
																					if(pX[7] <= 8){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[8] <= 21){
																if(pX[0] <= 60){
																	if(pX[1] <= 22){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[8] <= 20){
																		return 0;
																	} else {
																		if(pX[9] <= 133){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[9] <= 258){
															return 1;
														} else {
															if(pX[5] <= 24){
																return 0;
															} else {
																if(pX[0] <= 47){
																	return 1;
																} else {
																	if(pX[0] <= 74){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[0] <= 84){
													return 1;
												} else {
													if(pX[0] <= 99){
														return 0;
													} else {
														if(pX[0] <= 106){
															return 1;
														} else {
															return 0;
														}
													}
												}
											}
										}
									} else {
										if(pX[1] <= 29){
											return 1;
										} else {
											return 0;
										}
									}
								}
							} else {
								if(pX[9] <= 190){
									if(pX[5] <= -2){
										return 1;
									} else {
										return 0;
									}
								} else {
									if(pX[5] <= 50){
										if(pX[8] <= 15){
											return 0;
										} else {
											return 1;
										}
									} else {
										return 0;
									}
								}
							}
						}
					}
				}
			} else {
				if(pX[5] <= -27){
					if(pX[0] <= 36){
						if(pX[1] <= 14){
							if(pX[8] <= 53){
								if(pX[9] <= 147){
									if(pX[6] <= -9){
										if(pX[1] <= 7){
											return 1;
										} else {
											return 0;
										}
									} else {
										return 0;
									}
								} else {
									if(pX[9] <= 180){
										return 1;
									} else {
										if(pX[7] <= 5){
											if(pX[8] <= 42){
												if(pX[7] <= -10){
													return 0;
												} else {
													return 1;
												}
											} else {
												if(pX[8] <= 45){
													return 0;
												} else {
													if(pX[0] <= 28){
														return 0;
													} else {
														return 1;
													}
												}
											}
										} else {
											return 0;
										}
									}
								}
							} else {
								if(pX[0] <= 23){
									if(pX[5] <= -32){
										if(pX[7] <= 1){
											return 0;
										} else {
											return 1;
										}
									} else {
										return 1;
									}
								} else {
									return 1;
								}
							}
						} else {
							if(pX[9] <= 213){
								if(pX[1] <= 18){
									if(pX[6] <= -25){
										return 1;
									} else {
										if(pX[7] <= 14){
											if(pX[8] <= 71){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									}
								} else {
									if(pX[6] <= -10){
										if(pX[8] <= 71){
											return 0;
										} else {
											return 1;
										}
									} else {
										if(pX[5] <= -31){
											if(pX[0] <= 27){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 0;
										}
									}
								}
							} else {
								if(pX[6] <= 16){
									return 1;
								} else {
									if(pX[7] <= 0){
										return 1;
									} else {
										return 0;
									}
								}
							}
						}
					} else {
						if(pX[0] <= 82){
							if(pX[1] <= 39){
								if(pX[7] <= -13){
									if(pX[5] <= -101){
										return 0;
									} else {
										if(pX[5] <= -29){
											if(pX[1] <= 22){
												if(pX[1] <= 21){
													if(pX[6] <= -29){
														return 1;
													} else {
														if(pX[2] <= 2){
															if(pX[1] <= 19){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[6] <= 36){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												return 1;
											}
										} else {
											return 0;
										}
									}
								} else {
									if(pX[0] <= 50){
										if(pX[5] <= -56){
											if(pX[9] <= 285){
												if(pX[5] <= -62){
													if(pX[8] <= 40){
														if(pX[7] <= 8){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											} else {
												return 0;
											}
										} else {
											if(pX[6] <= -32){
												if(pX[0] <= 44){
													if(pX[9] <= 77){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[1] <= 27){
														if(pX[5] <= -32){
															return 1;
														} else {
															if(pX[0] <= 47){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														return 0;
													}
												}
											} else {
												if(pX[6] <= 33){
													return 1;
												} else {
													if(pX[0] <= 42){
														return 0;
													} else {
														return 1;
													}
												}
											}
										}
									} else {
										if(pX[9] <= 163){
											if(pX[8] <= 30){
												if(pX[5] <= -59){
													return 0;
												} else {
													return 1;
												}
											} else {
												if(pX[0] <= 60){
													if(pX[7] <= -10){
														if(pX[1] <= 22){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[8] <= 29){
												if(pX[5] <= -78){
													if(pX[0] <= 71){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[6] <= 33){
														return 1;
													} else {
														if(pX[1] <= 25){
															return 0;
														} else {
															return 1;
														}
													}
												}
											} else {
												return 1;
											}
										}
									}
								}
							} else {
								return 0;
							}
						} else {
							if(pX[8] <= 83){
								return 1;
							} else {
								if(pX[7] <= 6){
									return 1;
								} else {
									return 0;
								}
							}
						}
					}
				} else {
					if(pX[6] <= 21){
						if(pX[6] <= -25){
							if(pX[0] <= 60){
								if(pX[7] <= 15){
									if(pX[2] <= 2){
										if(pX[8] <= 48){
											if(pX[0] <= 42){
												if(pX[9] <= 38){
													if(pX[7] <= -15){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[0] <= 56){
													if(pX[8] <= 37){
														if(pX[1] <= 16){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[9] <= 168){
												return 1;
											} else {
												if(pX[5] <= -12){
													if(pX[5] <= -15){
														return 1;
													} else {
														if(pX[0] <= 43){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													return 1;
												}
											}
										}
									} else {
										if(pX[9] <= 133){
											if(pX[5] <= -8){
												return 0;
											} else {
												return 1;
											}
										} else {
											if(pX[0] <= 33){
												return 0;
											} else {
												return 1;
											}
										}
									}
								} else {
									if(pX[9] <= 158){
										if(pX[1] <= 31){
											if(pX[0] <= 45){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								}
							} else {
								if(pX[7] <= -18){
									return 0;
								} else {
									if(pX[0] <= 100){
										return 1;
									} else {
										if(pX[9] <= 155){
											return 1;
										} else {
											return 0;
										}
									}
								}
							}
						} else {
							if(pX[8] <= 48){
								if(pX[0] <= 30){
									if(pX[6] <= 13){
										if(pX[2] <= 2){
											if(pX[0] <= 11){
												return 1;
											} else {
												if(pX[9] <= 219){
													if(pX[1] <= 6){
														if(pX[5] <= -20){
															return 0;
														} else {
															if(pX[9] <= 117){
																if(pX[8] <= 25){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																if(pX[0] <= 20){
																	return 1;
																} else {
																	if(pX[6] <= -5){
																		return 0;
																	} else {
																		if(pX[7] <= -8){
																			return 1;
																		} else {
																			if(pX[7] <= 17){
																				if(pX[5] <= 9){
																					return 0;
																				} else {
																					if(pX[5] <= 21){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															}
														}
													} else {
														if(pX[8] <= 28){
															if(pX[0] <= 20){
																if(pX[5] <= -1){
																	if(pX[0] <= 14){
																		return 0;
																	} else {
																		if(pX[9] <= 189){
																			if(pX[9] <= 101){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[5] <= -12){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	if(pX[9] <= 47){
																		if(pX[0] <= 18){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[1] <= 7){
																			if(pX[0] <= 18){
																				if(pX[0] <= 17){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																if(pX[8] <= 23){
																	if(pX[7] <= -1){
																		return 0;
																	} else {
																		if(pX[5] <= -14){
																			return 0;
																		} else {
																			if(pX[1] <= 11){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[6] <= -9){
																		if(pX[1] <= 21){
																			if(pX[0] <= 21){
																				if(pX[6] <= -17){
																					if(pX[9] <= 179){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[5] <= -5){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[5] <= -7){
																			if(pX[1] <= 17){
																				if(pX[8] <= 24){
																					return 0;
																				} else {
																					if(pX[7] <= 10){
																						if(pX[7] <= -5){
																							return 1;
																						} else {
																							if(pX[8] <= 26){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[9] <= 205){
																				if(pX[7] <= -7){
																					if(pX[1] <= 9){
																						return 1;
																					} else {
																						if(pX[8] <= 24){
																							if(pX[7] <= -11){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[9] <= 106){
																						if(pX[0] <= 21){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[5] <= 32){
																							if(pX[9] <= 179){
																								return 0;
																							} else {
																								if(pX[8] <= 27){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							if(pX[8] <= 26){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					}
																				}
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															}
														} else {
															if(pX[5] <= 2){
																if(pX[9] <= 178){
																	if(pX[0] <= 12){
																		if(pX[5] <= -13){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[6] <= -23){
																			if(pX[5] <= -25){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[6] <= 10){
																				if(pX[0] <= 19){
																					if(pX[7] <= 8){
																						if(pX[5] <= -18){
																							if(pX[9] <= 126){
																								if(pX[9] <= 72){
																									return 0;
																								} else {
																									if(pX[6] <= -13){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							} else {
																								if(pX[1] <= 9){
																									return 0;
																								} else {
																									if(pX[8] <= 33){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						} else {
																							if(pX[8] <= 40){
																								if(pX[6] <= 7){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[9] <= 163){
																									if(pX[7] <= 5){
																										return 0;
																									} else {
																										if(pX[7] <= 6){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									return 1;
																								}
																							}
																						}
																					} else {
																						if(pX[1] <= 11){
																							if(pX[8] <= 40){
																								return 0;
																							} else {
																								if(pX[5] <= -13){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							if(pX[1] <= 14){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					}
																				} else {
																					if(pX[6] <= -21){
																						if(pX[7] <= 4){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[8] <= 44){
																							if(pX[7] <= -5){
																								return 0;
																							} else {
																								if(pX[0] <= 25){
																									if(pX[1] <= 8){
																										if(pX[6] <= 7){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									if(pX[1] <= 16){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						} else {
																							if(pX[9] <= 148){
																								if(pX[7] <= 12){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[9] <= 165){
																									if(pX[6] <= -9){
																										return 1;
																									} else {
																										if(pX[8] <= 45){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[5] <= -26){
																		if(pX[9] <= 205){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[5] <= -10){
																			if(pX[6] <= -3){
																				return 0;
																			} else {
																				if(pX[6] <= 0){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[5] <= -9){
																				return 1;
																			} else {
																				if(pX[6] <= 9){
																					if(pX[9] <= 206){
																						if(pX[8] <= 33){
																							if(pX[1] <= 9){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[6] <= -6){
																							if(pX[6] <= -9){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[0] <= 17){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		}
																	}
																}
															} else {
																if(pX[5] <= 12){
																	if(pX[9] <= 71){
																		return 0;
																	} else {
																		if(pX[8] <= 32){
																			if(pX[7] <= -2){
																				if(pX[9] <= 86){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[1] <= 18){
																				if(pX[1] <= 17){
																					if(pX[8] <= 38){
																						if(pX[7] <= 14){
																							if(pX[7] <= -8){
																								return 0;
																							} else {
																								if(pX[0] <= 23){
																									if(pX[6] <= 11){
																										if(pX[1] <= 16){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										return 1;
																									}
																								} else {
																									if(pX[8] <= 36){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						} else {
																							return 1;
																						}
																					} else {
																						if(pX[8] <= 40){
																							return 1;
																						} else {
																							if(pX[7] <= -6){
																								if(pX[6] <= -14){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[5] <= 4){
																									if(pX[6] <= -10){
																										return 1;
																									} else {
																										if(pX[5] <= 3){
																											if(pX[9] <= 141){
																												return 0;
																											} else {
																												if(pX[8] <= 44){
																													return 1;
																												} else {
																													return 0;
																												}
																											}
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[8] <= 30){
																		if(pX[9] <= 134){
																			if(pX[1] <= 17){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[7] <= 8){
																				return 1;
																			} else {
																				if(pX[6] <= 2){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	} else {
																		if(pX[6] <= 1){
																			if(pX[6] <= 0){
																				if(pX[5] <= 39){
																					if(pX[0] <= 14){
																						if(pX[7] <= 9){
																							if(pX[9] <= 168){
																								if(pX[6] <= -7){
																									if(pX[6] <= -8){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[1] <= 10){
																									return 1;
																								} else {
																									if(pX[7] <= 0){
																										if(pX[5] <= 14){
																											return 0;
																										} else {
																											if(pX[6] <= -6){
																												return 1;
																											} else {
																												return 0;
																											}
																										}
																									} else {
																										return 1;
																									}
																								}
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[7] <= -14){
																							return 1;
																						} else {
																							if(pX[5] <= 15){
																								if(pX[6] <= -17){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[6] <= -6){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[9] <= 203){
																				if(pX[0] <= 26){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[0] <= 19){
																					return 1;
																				} else {
																					if(pX[6] <= 12){
																						if(pX[9] <= 207){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 1;
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												} else {
													if(pX[6] <= 11){
														if(pX[8] <= 25){
															if(pX[5] <= 13){
																if(pX[5] <= -1){
																	if(pX[7] <= -2){
																		if(pX[5] <= -3){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[0] <= 14){
																if(pX[5] <= 13){
																	if(pX[7] <= 3){
																		return 1;
																	} else {
																		if(pX[6] <= 6){
																			return 0;
																		} else {
																			if(pX[7] <= 7){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	if(pX[8] <= 28){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[0] <= 25){
																	if(pX[8] <= 36){
																		if(pX[0] <= 16){
																			return 1;
																		} else {
																			if(pX[9] <= 227){
																				if(pX[5] <= -2){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[7] <= -8){
																					if(pX[9] <= 232){
																						return 0;
																					} else {
																						if(pX[5] <= 5){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		if(pX[1] <= 17){
																			if(pX[9] <= 235){
																				if(pX[0] <= 21){
																					if(pX[0] <= 17){
																						if(pX[1] <= 11){
																							if(pX[9] <= 224){
																								return 1;
																							} else {
																								if(pX[7] <= -5){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[0] <= 19){
																							if(pX[0] <= 18){
																								if(pX[1] <= 9){
																									return 0;
																								} else {
																									if(pX[5] <= 23){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							if(pX[9] <= 229){
																								return 1;
																							} else {
																								if(pX[9] <= 231){
																									return 0;
																								} else {
																									if(pX[0] <= 20){
																										return 0;
																									} else {
																										if(pX[8] <= 43){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								}
																							}
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[0] <= 21){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[7] <= 0){
																		if(pX[5] <= 4){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														}
													} else {
														if(pX[5] <= -7){
															return 0;
														} else {
															return 1;
														}
													}
												}
											}
										} else {
											return 1;
										}
									} else {
										if(pX[7] <= -5){
											if(pX[0] <= 22){
												if(pX[9] <= 146){
													if(pX[7] <= -6){
														return 0;
													} else {
														if(pX[6] <= 15){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													if(pX[9] <= 230){
														if(pX[6] <= 15){
															if(pX[7] <= -10){
																if(pX[0] <= 18){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[8] <= 38){
																if(pX[9] <= 152){
																	return 0;
																} else {
																	if(pX[8] <= 25){
																		if(pX[9] <= 216){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[6] <= 17){
																	return 0;
																} else {
																	if(pX[9] <= 206){
																		if(pX[9] <= 162){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[1] <= 10){
															return 0;
														} else {
															if(pX[6] <= 18){
																return 0;
															} else {
																return 1;
															}
														}
													}
												}
											} else {
												if(pX[1] <= 10){
													if(pX[9] <= 134){
														return 1;
													} else {
														if(pX[8] <= 41){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													if(pX[9] <= 195){
														return 0;
													} else {
														if(pX[9] <= 203){
															return 1;
														} else {
															if(pX[7] <= -15){
																return 1;
															} else {
																if(pX[6] <= 19){
																	return 0;
																} else {
																	if(pX[1] <= 16){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														}
													}
												}
											}
										} else {
											if(pX[0] <= 17){
												if(pX[5] <= -5){
													return 0;
												} else {
													return 1;
												}
											} else {
												if(pX[1] <= 11){
													if(pX[6] <= 14){
														if(pX[5] <= 1){
															return 0;
														} else {
															if(pX[0] <= 19){
																if(pX[8] <= 30){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[9] <= 181){
															if(pX[8] <= 45){
																if(pX[9] <= 48){
																	return 1;
																} else {
																	if(pX[0] <= 25){
																		if(pX[5] <= 0){
																			return 0;
																		} else {
																			if(pX[1] <= 8){
																				return 1;
																			} else {
																				if(pX[9] <= 147){
																					return 0;
																				} else {
																					if(pX[6] <= 20){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[6] <= 15){
																			return 0;
																		} else {
																			if(pX[6] <= 17){
																				return 1;
																			} else {
																				if(pX[6] <= 19){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																}
															} else {
																if(pX[9] <= 174){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[0] <= 28){
																if(pX[7] <= -4){
																	if(pX[6] <= 19){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[0] <= 25){
																		if(pX[7] <= 0){
																			if(pX[5] <= 12){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[6] <= 17){
																			return 0;
																		} else {
																			if(pX[7] <= 4){
																				if(pX[0] <= 26){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															} else {
																if(pX[8] <= 42){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													}
												} else {
													if(pX[7] <= 13){
														if(pX[8] <= 32){
															if(pX[8] <= 26){
																if(pX[7] <= 9){
																	return 0;
																} else {
																	if(pX[8] <= 23){
																		if(pX[9] <= 126){
																			return 1;
																		} else {
																			if(pX[0] <= 26){
																				if(pX[5] <= 21){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																return 0;
															}
														} else {
															if(pX[1] <= 17){
																if(pX[9] <= 220){
																	if(pX[0] <= 29){
																		if(pX[9] <= 95){
																			return 0;
																		} else {
																			if(pX[9] <= 121){
																				if(pX[0] <= 21){
																					return 1;
																				} else {
																					if(pX[1] <= 15){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				if(pX[5] <= 22){
																					if(pX[8] <= 38){
																						if(pX[1] <= 14){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[0] <= 21){
																							if(pX[9] <= 210){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[5] <= 24){
																						return 1;
																					} else {
																						if(pX[8] <= 42){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				}
																			}
																		}
																	} else {
																		return 1;
																	}
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[6] <= 14){
															if(pX[8] <= 42){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[9] <= 112){
																if(pX[1] <= 23){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[0] <= 44){
										if(pX[9] <= 226){
											if(pX[7] <= -5){
												if(pX[6] <= -5){
													if(pX[1] <= 7){
														return 1;
													} else {
														if(pX[6] <= -19){
															if(pX[0] <= 40){
																if(pX[7] <= -10){
																	if(pX[6] <= -21){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													}
												} else {
													if(pX[9] <= 200){
														if(pX[0] <= 35){
															if(pX[5] <= -22){
																return 1;
															} else {
																if(pX[0] <= 33){
																	return 0;
																} else {
																	if(pX[1] <= 9){
																		return 1;
																	} else {
																		if(pX[5] <= 19){
																			if(pX[7] <= -9){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															}
														} else {
															if(pX[0] <= 41){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														return 1;
													}
												}
											} else {
												if(pX[0] <= 38){
													if(pX[1] <= 12){
														if(pX[9] <= 146){
															if(pX[9] <= 57){
																if(pX[0] <= 34){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[8] <= 35){
																if(pX[0] <= 36){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[6] <= 18){
															if(pX[8] <= 31){
																return 0;
															} else {
																if(pX[6] <= 1){
																	if(pX[9] <= 192){
																		return 0;
																	} else {
																		if(pX[1] <= 20){
																			if(pX[8] <= 41){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[8] <= 42){
																		if(pX[9] <= 120){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															return 0;
														}
													}
												} else {
													if(pX[8] <= 26){
														if(pX[1] <= 10){
															return 1;
														} else {
															return 0;
														}
													} else {
														if(pX[0] <= 39){
															if(pX[2] <= 2){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												}
											}
										} else {
											if(pX[9] <= 315){
												if(pX[5] <= 38){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 0;
											}
										}
									} else {
										if(pX[6] <= 18){
											return 1;
										} else {
											if(pX[6] <= 19){
												return 0;
											} else {
												return 1;
											}
										}
									}
								}
							} else {
								if(pX[9] <= 214){
									if(pX[0] <= 26){
										if(pX[0] <= 11){
											return 1;
										} else {
											if(pX[0] <= 20){
												if(pX[5] <= -16){
													if(pX[8] <= 84){
														if(pX[1] <= 15){
															if(pX[7] <= -2){
																if(pX[8] <= 81){
																	if(pX[5] <= -26){
																		if(pX[6] <= -1){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[5] <= -23){
																			return 0;
																		} else {
																			if(pX[9] <= 138){
																				if(pX[5] <= -22){
																					return 1;
																				} else {
																					if(pX[8] <= 56){
																						return 1;
																					} else {
																						if(pX[9] <= 101){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[5] <= -18){
																	if(pX[8] <= 82){
																		if(pX[9] <= 121){
																			if(pX[9] <= 79){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[8] <= 59){
																				if(pX[7] <= 9){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												} else {
													if(pX[6] <= -18){
														return 1;
													} else {
														if(pX[1] <= 6){
															if(pX[1] <= 5){
																return 1;
															} else {
																if(pX[9] <= 99){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[9] <= 34){
																if(pX[5] <= 9){
																	if(pX[5] <= -2){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[7] <= -11){
																	if(pX[9] <= 86){
																		return 0;
																	} else {
																		if(pX[6] <= 12){
																			return 1;
																		} else {
																			if(pX[9] <= 174){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	if(pX[1] <= 9){
																		if(pX[8] <= 82){
																			if(pX[8] <= 70){
																				if(pX[8] <= 69){
																					if(pX[9] <= 204){
																						if(pX[0] <= 12){
																							if(pX[7] <= 3){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							if(pX[6] <= -7){
																								if(pX[6] <= -9){
																									if(pX[9] <= 170){
																										if(pX[9] <= 111){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[1] <= 8){
																									if(pX[0] <= 19){
																										if(pX[8] <= 66){
																											if(pX[9] <= 122){
																												return 0;
																											} else {
																												if(pX[1] <= 7){
																													if(pX[6] <= -2){
																														return 0;
																													} else {
																														if(pX[6] <= 0){
																															return 1;
																														} else {
																															return 0;
																														}
																													}
																												} else {
																													return 1;
																												}
																											}
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									return 0;
																								}
																							}
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[5] <= -11){
																					if(pX[9] <= 166){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[0] <= 17){
																						if(pX[8] <= 74){
																							return 0;
																						} else {
																							if(pX[6] <= 7){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[8] <= 57){
																			if(pX[0] <= 17){
																				if(pX[9] <= 114){
																					if(pX[0] <= 12){
																						return 1;
																					} else {
																						if(pX[7] <= -4){
																							return 0;
																						} else {
																							if(pX[9] <= 100){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					}
																				} else {
																					if(pX[6] <= 2){
																						if(pX[5] <= 2){
																							return 0;
																						} else {
																							if(pX[1] <= 12){
																								if(pX[0] <= 12){
																									if(pX[7] <= 9){
																										return 0;
																									} else {
																										if(pX[8] <= 49){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									if(pX[7] <= 1){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						if(pX[8] <= 50){
																							if(pX[9] <= 199){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					}
																				}
																			} else {
																				if(pX[5] <= -10){
																					if(pX[1] <= 14){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[7] <= 8){
																						if(pX[5] <= -1){
																							if(pX[1] <= 11){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[7] <= 9){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[6] <= 2){
																				if(pX[9] <= 179){
																					if(pX[6] <= -14){
																						if(pX[0] <= 17){
																							return 1;
																						} else {
																							if(pX[1] <= 17){
																								if(pX[6] <= -15){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						if(pX[0] <= 18){
																							if(pX[6] <= 0){
																								if(pX[9] <= 111){
																									if(pX[9] <= 110){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[8] <= 65){
																									if(pX[0] <= 14){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							}
																						} else {
																							if(pX[9] <= 63){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					}
																				} else {
																					if(pX[9] <= 185){
																						return 1;
																					} else {
																						if(pX[0] <= 19){
																							if(pX[5] <= -7){
																								if(pX[7] <= -7){
																									if(pX[6] <= -6){
																										return 1;
																									} else {
																										return 0;
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							if(pX[7] <= 0){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					}
																				}
																			} else {
																				if(pX[0] <= 17){
																					if(pX[6] <= 7){
																						if(pX[7] <= -5){
																							if(pX[1] <= 10){
																								if(pX[9] <= 160){
																									return 0;
																								} else {
																									if(pX[8] <= 71){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								if(pX[0] <= 15){
																									if(pX[7] <= -8){
																										if(pX[8] <= 71){
																											if(pX[8] <= 61){
																												return 0;
																											} else {
																												return 1;
																											}
																										} else {
																											return 0;
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							if(pX[7] <= 10){
																								return 0;
																							} else {
																								if(pX[5] <= 13){
																									return 0;
																								} else {
																									if(pX[9] <= 163){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						}
																					} else {
																						if(pX[7] <= -5){
																							return 1;
																						} else {
																							if(pX[0] <= 12){
																								return 0;
																							} else {
																								if(pX[6] <= 17){
																									if(pX[9] <= 179){
																										if(pX[7] <= 5){
																											return 1;
																										} else {
																											if(pX[8] <= 61){
																												return 1;
																											} else {
																												return 0;
																											}
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									return 1;
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[8] <= 83){
																						if(pX[6] <= 10){
																							if(pX[6] <= 8){
																								if(pX[5] <= 18){
																									return 0;
																								} else {
																									if(pX[8] <= 78){
																										if(pX[8] <= 72){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								if(pX[5] <= -5){
																									return 1;
																								} else {
																									if(pX[9] <= 169){
																										return 0;
																									} else {
																										if(pX[7] <= -4){
																											return 0;
																										} else {
																											return 1;
																										}
																									}
																								}
																							}
																						} else {
																							if(pX[5] <= -7){
																								if(pX[6] <= 17){
																									if(pX[6] <= 15){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[7] <= -4){
																									if(pX[7] <= -7){
																										return 0;
																									} else {
																										if(pX[9] <= 123){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									return 0;
																								}
																							}
																						}
																					} else {
																						if(pX[6] <= 6){
																							return 1;
																						} else {
																							if(pX[8] <= 85){
																								if(pX[5] <= 3){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[5] <= 25){
													if(pX[7] <= 7){
														if(pX[1] <= 15){
															if(pX[9] <= 105){
																if(pX[9] <= 93){
																	if(pX[6] <= -11){
																		if(pX[5] <= -6){
																			if(pX[9] <= 53){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[9] <= 58){
																			if(pX[1] <= 11){
																				return 1;
																			} else {
																				if(pX[8] <= 84){
																					if(pX[0] <= 23){
																						if(pX[7] <= -8){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[8] <= 67){
																				if(pX[6] <= 15){
																					if(pX[0] <= 22){
																						if(pX[7] <= -6){
																							return 1;
																						} else {
																							if(pX[9] <= 78){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[8] <= 58){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				if(pX[0] <= 22){
																					if(pX[9] <= 68){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[7] <= -5){
																		return 0;
																	} else {
																		if(pX[8] <= 55){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																if(pX[1] <= 6){
																	if(pX[8] <= 75){
																		if(pX[0] <= 23){
																			if(pX[8] <= 74){
																				if(pX[0] <= 22){
																					if(pX[7] <= -3){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[9] <= 113){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[6] <= 3){
																			return 0;
																		} else {
																			if(pX[8] <= 80){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	if(pX[8] <= 66){
																		if(pX[7] <= -10){
																			if(pX[9] <= 188){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[9] <= 197){
																				if(pX[6] <= 17){
																					if(pX[0] <= 22){
																						if(pX[7] <= 0){
																							if(pX[0] <= 21){
																								return 0;
																							} else {
																								if(pX[9] <= 145){
																									return 0;
																								} else {
																									if(pX[5] <= -1){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							}
																						} else {
																							if(pX[9] <= 172){
																								if(pX[7] <= 4){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						if(pX[8] <= 51){
																							return 0;
																						} else {
																							if(pX[9] <= 177){
																								return 1;
																							} else {
																								if(pX[7] <= -4){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[1] <= 8){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				if(pX[0] <= 25){
																					if(pX[9] <= 208){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 1;
																				}
																			}
																		}
																	} else {
																		if(pX[5] <= -10){
																			if(pX[8] <= 82){
																				return 0;
																			} else {
																				if(pX[5] <= -20){
																					return 1;
																				} else {
																					if(pX[7] <= -5){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			}
																		} else {
																			if(pX[5] <= 17){
																				if(pX[6] <= 18){
																					if(pX[9] <= 209){
																						if(pX[5] <= -1){
																							if(pX[7] <= -8){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															}
														} else {
															if(pX[5] <= -3){
																if(pX[1] <= 17){
																	if(pX[8] <= 65){
																		if(pX[0] <= 23){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[9] <= 99){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[7] <= 6){
																	if(pX[7] <= -13){
																		if(pX[7] <= -15){
																			return 0;
																		} else {
																			if(pX[6] <= 3){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[1] <= 16){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[1] <= 20){
															if(pX[9] <= 160){
																if(pX[1] <= 9){
																	return 1;
																} else {
																	if(pX[5] <= 24){
																		if(pX[6] <= -13){
																			if(pX[0] <= 23){
																				if(pX[1] <= 16){
																					return 1;
																				} else {
																					if(pX[5] <= 5){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[7] <= 16){
																				if(pX[9] <= 58){
																					if(pX[9] <= 51){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[1] <= 18){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[1] <= 12){
																	if(pX[9] <= 173){
																		if(pX[7] <= 9){
																			return 1;
																		} else {
																			if(pX[0] <= 24){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[6] <= 1){
																		if(pX[8] <= 86){
																			if(pX[9] <= 166){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[5] <= -12){
																return 0;
															} else {
																if(pX[5] <= -2){
																	return 1;
																} else {
																	if(pX[5] <= -1){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													}
												} else {
													if(pX[5] <= 28){
														return 1;
													} else {
														if(pX[5] <= 31){
															if(pX[6] <= 16){
																if(pX[7] <= -8){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																if(pX[1] <= 14){
																	if(pX[6] <= 19){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[6] <= -4){
																if(pX[6] <= -13){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[6] <= -7){
											if(pX[8] <= 53){
												if(pX[7] <= -10){
													return 1;
												} else {
													if(pX[8] <= 52){
														if(pX[7] <= 11){
															if(pX[9] <= 182){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												}
											} else {
												if(pX[9] <= 63){
													if(pX[0] <= 48){
														if(pX[9] <= 25){
															return 1;
														} else {
															if(pX[1] <= 9){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														return 1;
													}
												} else {
													if(pX[7] <= 12){
														if(pX[0] <= 30){
															if(pX[9] <= 132){
																if(pX[6] <= -9){
																	if(pX[1] <= 6){
																		return 1;
																	} else {
																		if(pX[5] <= -24){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[5] <= 16){
																	if(pX[8] <= 60){
																		if(pX[5] <= -6){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[1] <= 16){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[7] <= -17){
																return 0;
															} else {
																if(pX[2] <= 2){
																	if(pX[1] <= 10){
																		if(pX[0] <= 31){
																			if(pX[1] <= 9){
																				return 1;
																			} else {
																				if(pX[6] <= -10){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[6] <= -17){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														}
													} else {
														if(pX[8] <= 69){
															if(pX[6] <= -23){
																if(pX[2] <= 2){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[9] <= 174){
																if(pX[1] <= 24){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														}
													}
												}
											}
										} else {
											if(pX[0] <= 33){
												if(pX[7] <= -12){
													if(pX[9] <= 148){
														if(pX[0] <= 31){
															return 0;
														} else {
															if(pX[9] <= 82){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														return 1;
													}
												} else {
													if(pX[2] <= 2){
														if(pX[5] <= 25){
															if(pX[1] <= 16){
																if(pX[0] <= 27){
																	if(pX[1] <= 11){
																		if(pX[7] <= 0){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[1] <= 14){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[7] <= 11){
																		if(pX[6] <= 17){
																			if(pX[9] <= 51){
																				if(pX[5] <= 8){
																					if(pX[8] <= 74){
																						if(pX[6] <= 6){
																							return 1;
																						} else {
																							if(pX[5] <= -15){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[5] <= 22){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[8] <= 64){
																	if(pX[8] <= 53){
																		return 0;
																	} else {
																		if(pX[0] <= 31){
																			if(pX[9] <= 195){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 0;
																}
															}
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												}
											} else {
												if(pX[0] <= 36){
													if(pX[6] <= 20){
														if(pX[2] <= 2){
															if(pX[9] <= 61){
																return 0;
															} else {
																if(pX[5] <= -21){
																	if(pX[6] <= 9){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[6] <= 14){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											}
										}
									}
								} else {
									if(pX[0] <= 30){
										if(pX[1] <= 11){
											if(pX[8] <= 69){
												if(pX[8] <= 65){
													if(pX[9] <= 216){
														return 0;
													} else {
														if(pX[0] <= 19){
															if(pX[0] <= 16){
																if(pX[9] <= 228){
																	if(pX[6] <= -2){
																		if(pX[8] <= 58){
																			if(pX[9] <= 221){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[6] <= 8){
																			if(pX[6] <= 2){
																				return 0;
																			} else {
																				if(pX[0] <= 12){
																					return 0;
																				} else {
																					if(pX[9] <= 220){
																						return 1;
																					} else {
																						if(pX[6] <= 4){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[5] <= 0){
																		if(pX[8] <= 56){
																			if(pX[1] <= 10){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[7] <= -9){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																return 1;
															}
														} else {
															if(pX[9] <= 242){
																if(pX[8] <= 57){
																	if(pX[5] <= 14){
																		if(pX[7] <= -7){
																			return 0;
																		} else {
																			if(pX[1] <= 9){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														}
													}
												} else {
													if(pX[5] <= 20){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												if(pX[0] <= 29){
													if(pX[6] <= 12){
														if(pX[1] <= 9){
															if(pX[0] <= 19){
																return 1;
															} else {
																if(pX[9] <= 231){
																	return 1;
																} else {
																	if(pX[5] <= -7){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[7] <= 10){
																if(pX[5] <= -14){
																	if(pX[6] <= -1){
																		return 1;
																	} else {
																		if(pX[6] <= 4){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[0] <= 12){
																		return 1;
																	} else {
																		if(pX[7] <= -1){
																			if(pX[8] <= 75){
																				return 1;
																			} else {
																				if(pX[6] <= 9){
																					if(pX[8] <= 83){
																						return 0;
																					} else {
																						if(pX[5] <= 8){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[5] <= -1){
																				if(pX[9] <= 254){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															} else {
																if(pX[1] <= 10){
																	return 0;
																} else {
																	if(pX[6] <= -3){
																		if(pX[9] <= 217){
																			return 1;
																		} else {
																			if(pX[0] <= 17){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[1] <= 10){
															return 1;
														} else {
															if(pX[7] <= 9){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													return 0;
												}
											}
										} else {
											if(pX[9] <= 285){
												if(pX[5] <= 6){
													if(pX[6] <= -6){
														if(pX[0] <= 20){
															if(pX[7] <= 13){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[6] <= -15){
																return 1;
															} else {
																if(pX[1] <= 17){
																	if(pX[9] <= 217){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[6] <= -11){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[9] <= 250){
															return 1;
														} else {
															if(pX[5] <= -10){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													if(pX[6] <= 17){
														if(pX[9] <= 225){
															if(pX[6] <= 9){
																if(pX[0] <= 21){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														} else {
															return 1;
														}
													} else {
														if(pX[5] <= 15){
															return 1;
														} else {
															return 0;
														}
													}
												}
											} else {
												return 0;
											}
										}
									} else {
										return 1;
									}
								}
							}
						}
					} else {
						if(pX[0] <= 46){
							if(pX[1] <= 15){
								if(pX[8] <= 27){
									if(pX[8] <= 24){
										if(pX[9] <= 127){
											if(pX[8] <= 23){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									} else {
										if(pX[1] <= 10){
											return 1;
										} else {
											if(pX[6] <= 28){
												if(pX[5] <= 39){
													return 0;
												} else {
													if(pX[7] <= 6){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												return 1;
											}
										}
									}
								} else {
									if(pX[7] <= 8){
										if(pX[7] <= -13){
											if(pX[6] <= 24){
												return 0;
											} else {
												return 1;
											}
										} else {
											if(pX[9] <= 145){
												if(pX[9] <= 72){
													if(pX[6] <= 26){
														if(pX[9] <= 66){
															return 0;
														} else {
															if(pX[9] <= 69){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														return 1;
													}
												} else {
													if(pX[7] <= -5){
														if(pX[0] <= 28){
															return 0;
														} else {
															if(pX[1] <= 11){
																return 1;
															} else {
																if(pX[8] <= 42){
																	return 0;
																} else {
																	if(pX[7] <= -7){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														}
													} else {
														if(pX[5] <= 6){
															return 1;
														} else {
															if(pX[5] <= 9){
																return 0;
															} else {
																if(pX[8] <= 35){
																	if(pX[5] <= 22){
																		return 0;
																	} else {
																		if(pX[5] <= 26){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 1;
																}
															}
														}
													}
												}
											} else {
												if(pX[7] <= 3){
													return 1;
												} else {
													if(pX[1] <= 8){
														if(pX[9] <= 236){
															if(pX[9] <= 168){
																if(pX[9] <= 156){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														if(pX[0] <= 30){
															if(pX[6] <= 23){
																if(pX[5] <= -7){
																	return 1;
																} else {
																	if(pX[6] <= 22){
																		if(pX[0] <= 27){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[5] <= 22){
																	return 1;
																} else {
																	if(pX[7] <= 7){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															return 1;
														}
													}
												}
											}
										}
									} else {
										if(pX[0] <= 43){
											if(pX[8] <= 53){
												if(pX[0] <= 33){
													if(pX[1] <= 12){
														if(pX[6] <= 23){
															return 0;
														} else {
															if(pX[8] <= 35){
																return 1;
															} else {
																if(pX[8] <= 36){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										} else {
											return 0;
										}
									}
								}
							} else {
								if(pX[8] <= 36){
									if(pX[9] <= 183){
										if(pX[6] <= 32){
											if(pX[9] <= 62){
												if(pX[7] <= -12){
													return 1;
												} else {
													return 0;
												}
											} else {
												if(pX[7] <= 21){
													if(pX[9] <= 154){
														return 0;
													} else {
														if(pX[6] <= 24){
															if(pX[0] <= 29){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[0] <= 45){
												if(pX[8] <= 30){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[1] <= 21){
											if(pX[7] <= -10){
												return 0;
											} else {
												if(pX[5] <= 1){
													if(pX[6] <= 24){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[0] <= 25){
														return 1;
													} else {
														return 0;
													}
												}
											}
										} else {
											if(pX[5] <= 13){
												if(pX[7] <= 22){
													return 0;
												} else {
													if(pX[9] <= 208){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												return 1;
											}
										}
									}
								} else {
									if(pX[8] <= 66){
										if(pX[1] <= 30){
											if(pX[9] <= 177){
												if(pX[5] <= 5){
													if(pX[1] <= 28){
														if(pX[9] <= 42){
															return 0;
														} else {
															if(pX[1] <= 16){
																if(pX[6] <= 23){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														}
													} else {
														return 0;
													}
												} else {
													if(pX[0] <= 23){
														return 1;
													} else {
														if(pX[8] <= 42){
															return 0;
														} else {
															if(pX[1] <= 20){
																if(pX[8] <= 51){
																	return 0;
																} else {
																	if(pX[6] <= 24){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[8] <= 44){
																	return 1;
																} else {
																	if(pX[7] <= -22){
																		return 1;
																	} else {
																		if(pX[7] <= 22){
																			if(pX[0] <= 37){
																				if(pX[9] <= 111){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[7] <= -8){
													if(pX[7] <= -10){
														if(pX[9] <= 256){
															if(pX[0] <= 27){
																if(pX[7] <= -14){
																	return 1;
																} else {
																	if(pX[6] <= 23){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														if(pX[5] <= 18){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													if(pX[9] <= 215){
														if(pX[9] <= 209){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											}
										} else {
											return 0;
										}
									} else {
										if(pX[9] <= 133){
											if(pX[0] <= 39){
												if(pX[6] <= 30){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 0;
											}
										} else {
											if(pX[0] <= 26){
												if(pX[0] <= 24){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										}
									}
								}
							}
						} else {
							if(pX[1] <= 23){
								if(pX[6] <= 61){
									if(pX[7] <= -10){
										if(pX[7] <= -13){
											return 1;
										} else {
											if(pX[1] <= 16){
												return 1;
											} else {
												if(pX[9] <= 87){
													return 1;
												} else {
													return 0;
												}
											}
										}
									} else {
										if(pX[1] <= 13){
											return 1;
										} else {
											if(pX[0] <= 53){
												if(pX[9] <= 202){
													if(pX[5] <= 7){
														if(pX[0] <= 52){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												} else {
													if(pX[8] <= 38){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												if(pX[9] <= 124){
													if(pX[9] <= 118){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											}
										}
									}
								} else {
									if(pX[0] <= 71){
										if(pX[9] <= 267){
											if(pX[5] <= 44){
												if(pX[0] <= 55){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									} else {
										if(pX[5] <= 22){
											if(pX[8] <= 55){
												return 1;
											} else {
												return 0;
											}
										} else {
											if(pX[6] <= 88){
												return 1;
											} else {
												if(pX[1] <= 15){
													return 0;
												} else {
													return 1;
												}
											}
										}
									}
								}
							} else {
								if(pX[7] <= 13){
									if(pX[0] <= 74){
										if(pX[1] <= 36){
											if(pX[0] <= 48){
												return 1;
											} else {
												if(pX[7] <= -12){
													if(pX[8] <= 33){
														return 0;
													} else {
														if(pX[2] <= 2){
															if(pX[6] <= 49){
																return 1;
															} else {
																if(pX[5] <= 16){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[1] <= 32){
														return 0;
													} else {
														return 1;
													}
												}
											}
										} else {
											if(pX[9] <= 217){
												return 0;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[7] <= -24){
											if(pX[7] <= -25){
												return 1;
											} else {
												if(pX[6] <= 103){
													return 1;
												} else {
													return 0;
												}
											}
										} else {
											return 1;
										}
									}
								} else {
									if(pX[8] <= 28){
										if(pX[0] <= 84){
											if(pX[7] <= 20){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								}
							}
						}
					}
				}
			}
		} else {
			if(pX[6] <= 76){
				if(pX[8] <= 2){
					if(pX[9] <= 243){
						return 1;
					} else {
						if(pX[5] <= -147){
							return 1;
						} else {
							if(pX[7] <= 16){
								return 0;
							} else {
								if(pX[1] <= 28){
									return 1;
								} else {
									return 0;
								}
							}
						}
					}
				} else {
					if(pX[5] <= 150){
						if(pX[0] <= 140){
							if(pX[6] <= -143){
								if(pX[0] <= 124){
									return 1;
								} else {
									return 0;
								}
							} else {
								if(pX[7] <= -22){
									return 1;
								} else {
									if(pX[9] <= 46){
										return 0;
									} else {
										if(pX[5] <= -143){
											if(pX[9] <= 290){
												if(pX[5] <= -198){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											if(pX[1] <= 38){
												if(pX[9] <= 150){
													if(pX[7] <= -9){
														if(pX[5] <= -76){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[8] <= 61){
															return 1;
														} else {
															if(pX[5] <= 21){
																return 0;
															} else {
																return 1;
															}
														}
													}
												} else {
													if(pX[7] <= 15){
														if(pX[9] <= 334){
															return 1;
														} else {
															if(pX[8] <= 7){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														if(pX[9] <= 283){
															if(pX[7] <= 18){
																return 0;
															} else {
																if(pX[6] <= 51){
																	return 1;
																} else {
																	if(pX[8] <= 14){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															return 1;
														}
													}
												}
											} else {
												if(pX[7] <= 11){
													return 0;
												} else {
													return 1;
												}
											}
										}
									}
								}
							}
						} else {
							if(pX[0] <= 198){
								return 1;
							} else {
								if(pX[5] <= -171){
									return 1;
								} else {
									if(pX[0] <= 200){
										return 0;
									} else {
										if(pX[1] <= 14){
											return 0;
										} else {
											return 1;
										}
									}
								}
							}
						}
					} else {
						return 0;
					}
				}
			} else {
				if(pX[5] <= -156){
					if(pX[7] <= 29){
						if(pX[9] <= 265){
							if(pX[9] <= 250){
								return 1;
							} else {
								if(pX[6] <= 160){
									return 1;
								} else {
									return 0;
								}
							}
						} else {
							if(pX[8] <= 6){
								return 0;
							} else {
								return 1;
							}
						}
					} else {
						if(pX[9] <= 253){
							return 1;
						} else {
							return 0;
						}
					}
				} else {
					if(pX[0] <= 117){
						if(pX[5] <= -74){
							return 0;
						} else {
							if(pX[8] <= 4){
								return 0;
							} else {
								if(pX[7] <= -13){
									return 1;
								} else {
									if(pX[6] <= 110){
										if(pX[6] <= 95){
											return 1;
										} else {
											return 0;
										}
									} else {
										if(pX[1] <= 33){
											return 1;
										} else {
											return 0;
										}
									}
								}
							}
						}
					} else {
						if(pX[5] <= -143){
							return 0;
						} else {
							if(pX[5] <= 95){
								if(pX[6] <= 189){
									if(pX[8] <= 5){
										if(pX[1] <= 36){
											if(pX[0] <= 121){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 1;
										}
									} else {
										return 1;
									}
								} else {
									return 0;
								}
							} else {
								if(pX[6] <= 92){
									if(pX[9] <= 233){
										return 0;
									} else {
										return 1;
									}
								} else {
									if(pX[5] <= 115){
										if(pX[6] <= 110){
											return 1;
										} else {
											return 0;
										}
									} else {
										if(pX[1] <= 39){
											return 1;
										} else {
											return 0;
										}
									}
								}
							}
						}
					}
				}
			}
		}
	} else {
		if(pX[1] <= 47){
			if(pX[8] <= 9){
				if(pX[5] <= -106){
					if(pX[0] <= 123){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[5] <= 118){
						if(pX[0] <= 119){
							if(pX[0] <= 59){
								if(pX[1] <= 41){
									return 1;
								} else {
									return 0;
								}
							} else {
								if(pX[8] <= 4){
									if(pX[9] <= 355){
										return 0;
									} else {
										if(pX[7] <= -27){
											return 1;
										} else {
											return 0;
										}
									}
								} else {
									if(pX[0] <= 103){
										if(pX[8] <= 8){
											return 0;
										} else {
											if(pX[1] <= 45){
												return 0;
											} else {
												if(pX[6] <= -1){
													return 1;
												} else {
													return 0;
												}
											}
										}
									} else {
										return 1;
									}
								}
							}
						} else {
							return 1;
						}
					} else {
						return 1;
					}
				}
			} else {
				if(pX[1] <= 46){
					if(pX[2] <= 2){
						if(pX[1] <= 41){
							if(pX[7] <= -23){
								return 1;
							} else {
								if(pX[6] <= 22){
									return 0;
								} else {
									return 1;
								}
							}
						} else {
							return 1;
						}
					} else {
						if(pX[0] <= 94){
							if(pX[5] <= 77){
								if(pX[7] <= -42){
									return 0;
								} else {
									if(pX[0] <= 92){
										if(pX[0] <= 61){
											if(pX[0] <= 52){
												return 1;
											} else {
												if(pX[8] <= 38){
													return 1;
												} else {
													return 0;
												}
											}
										} else {
											return 1;
										}
									} else {
										return 0;
									}
								}
							} else {
								return 0;
							}
						} else {
							return 1;
						}
					}
				} else {
					if(pX[7] <= 27){
						if(pX[0] <= 97){
							return 0;
						} else {
							return 1;
						}
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[8] <= 6){
				if(pX[2] <= 3){
					if(pX[9] <= 164){
						return 1;
					} else {
						if(pX[0] <= 140){
							if(pX[9] <= 353){
								if(pX[6] <= -86){
									return 1;
								} else {
									if(pX[1] <= 72){
										if(pX[9] <= 237){
											if(pX[9] <= 215){
												return 0;
											} else {
												return 1;
											}
										} else {
											if(pX[1] <= 63){
												return 0;
											} else {
												if(pX[0] <= 93){
													return 0;
												} else {
													return 1;
												}
											}
										}
									} else {
										return 1;
									}
								}
							} else {
								return 1;
							}
						} else {
							return 1;
						}
					}
				} else {
					if(pX[7] <= -46){
						return 1;
					} else {
						if(pX[6] <= -83){
							return 1;
						} else {
							return 0;
						}
					}
				}
			} else {
				if(pX[5] <= 7){
					if(pX[6] <= -59){
						return 1;
					} else {
						if(pX[8] <= 23){
							if(pX[2] <= 3){
								if(pX[7] <= 47){
									if(pX[0] <= 105){
										return 1;
									} else {
										if(pX[5] <= -74){
											return 1;
										} else {
											if(pX[5] <= -42){
												if(pX[9] <= 296){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										}
									}
								} else {
									if(pX[0] <= 94){
										return 0;
									} else {
										return 1;
									}
								}
							} else {
								return 0;
							}
						} else {
							return 1;
						}
					}
				} else {
					if(pX[2] <= 3){
						if(pX[1] <= 51){
							if(pX[9] <= 237){
								if(pX[9] <= 202){
									if(pX[5] <= 51){
										return 0;
									} else {
										if(pX[8] <= 12){
											if(pX[8] <= 7){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 1;
										}
									}
								} else {
									return 0;
								}
							} else {
								return 1;
							}
						} else {
							return 1;
						}
					} else {
						if(pX[1] <= 165){
							if(pX[8] <= 13){
								if(pX[7] <= -3){
									if(pX[5] <= 72){
										return 0;
									} else {
										return 1;
									}
								} else {
									return 1;
								}
							} else {
								if(pX[0] <= 109){
									if(pX[7] <= -81){
										return 0;
									} else {
										return 1;
									}
								} else {
									return 1;
								}
							}
						} else {
							return 0;
						}
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict3( short const pX[10]){
	if(pX[1] <= 40){
		if(pX[5] <= -65){
			if(pX[0] <= 107){
				if(pX[0] <= 61){
					if(pX[1] <= 25){
						if(pX[8] <= 36){
							if(pX[6] <= -38){
								return 1;
							} else {
								if(pX[5] <= -74){
									return 0;
								} else {
									if(pX[8] <= 19){
										if(pX[8] <= 5){
											return 0;
										} else {
											if(pX[8] <= 7){
												return 1;
											} else {
												return 0;
											}
										}
									} else {
										if(pX[0] <= 48){
											return 0;
										} else {
											return 1;
										}
									}
								}
							}
						} else {
							if(pX[8] <= 51){
								return 1;
							} else {
								if(pX[8] <= 52){
									return 0;
								} else {
									return 1;
								}
							}
						}
					} else {
						if(pX[8] <= 10){
							return 0;
						} else {
							return 1;
						}
					}
				} else {
					if(pX[8] <= 15){
						if(pX[7] <= -23){
							if(pX[0] <= 69){
								if(pX[7] <= -24){
									return 1;
								} else {
									if(pX[8] <= 11){
										return 1;
									} else {
										return 0;
									}
								}
							} else {
								if(pX[6] <= -62){
									if(pX[9] <= 302){
										return 0;
									} else {
										return 1;
									}
								} else {
									if(pX[6] <= 74){
										return 0;
									} else {
										return 1;
									}
								}
							}
						} else {
							if(pX[6] <= -64){
								if(pX[8] <= 5){
									if(pX[8] <= 1){
										return 0;
									} else {
										if(pX[5] <= -102){
											return 1;
										} else {
											if(pX[9] <= 350){
												return 0;
											} else {
												return 1;
											}
										}
									}
								} else {
									return 0;
								}
							} else {
								if(pX[8] <= 9){
									if(pX[0] <= 103){
										if(pX[9] <= 69){
											return 1;
										} else {
											if(pX[1] <= 13){
												if(pX[9] <= 219){
													if(pX[2] <= 2){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[5] <= -98){
														return 0;
													} else {
														if(pX[5] <= -92){
															return 1;
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[8] <= 2){
													if(pX[6] <= -53){
														if(pX[1] <= 26){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												} else {
													if(pX[6] <= 70){
														if(pX[7] <= 24){
															if(pX[1] <= 36){
																return 0;
															} else {
																if(pX[6] <= 66){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[0] <= 67){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														if(pX[0] <= 78){
															return 1;
														} else {
															if(pX[6] <= 71){
																if(pX[5] <= -96){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																if(pX[1] <= 32){
																	return 0;
																} else {
																	if(pX[9] <= 239){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[7] <= 0){
											return 0;
										} else {
											if(pX[6] <= 50){
												return 1;
											} else {
												return 0;
											}
										}
									}
								} else {
									if(pX[6] <= 71){
										if(pX[7] <= -17){
											return 1;
										} else {
											if(pX[7] <= 34){
												if(pX[0] <= 101){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[0] <= 93){
											return 1;
										} else {
											return 0;
										}
									}
								}
							}
						}
					} else {
						if(pX[2] <= 2){
							if(pX[6] <= 69){
								if(pX[8] <= 17){
									if(pX[5] <= -85){
										return 0;
									} else {
										return 1;
									}
								} else {
									if(pX[8] <= 28){
										if(pX[1] <= 15){
											if(pX[8] <= 22){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 1;
										}
									} else {
										return 1;
									}
								}
							} else {
								if(pX[6] <= 73){
									return 0;
								} else {
									return 1;
								}
							}
						} else {
							if(pX[8] <= 19){
								if(pX[6] <= 28){
									return 1;
								} else {
									return 0;
								}
							} else {
								return 1;
							}
						}
					}
				}
			} else {
				if(pX[8] <= 8){
					if(pX[9] <= 261){
						if(pX[0] <= 123){
							if(pX[7] <= 8){
								return 1;
							} else {
								if(pX[7] <= 16){
									return 0;
								} else {
									return 1;
								}
							}
						} else {
							return 1;
						}
					} else {
						if(pX[5] <= -80){
							if(pX[5] <= -133){
								if(pX[5] <= -145){
									if(pX[9] <= 353){
										if(pX[6] <= 73){
											if(pX[5] <= -156){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								} else {
									return 1;
								}
							} else {
								if(pX[9] <= 325){
									return 0;
								} else {
									if(pX[1] <= 30){
										return 0;
									} else {
										if(pX[6] <= 7){
											return 1;
										} else {
											return 0;
										}
									}
								}
							}
						} else {
							if(pX[7] <= 4){
								if(pX[0] <= 114){
									return 1;
								} else {
									return 0;
								}
							} else {
								return 1;
							}
						}
					}
				} else {
					if(pX[6] <= -181){
						if(pX[1] <= 22){
							return 0;
						} else {
							return 1;
						}
					} else {
						if(pX[9] <= 151){
							if(pX[0] <= 120){
								if(pX[8] <= 60){
									if(pX[7] <= -5){
										return 0;
									} else {
										return 1;
									}
								} else {
									return 0;
								}
							} else {
								if(pX[5] <= -102){
									return 1;
								} else {
									if(pX[8] <= 72){
										return 1;
									} else {
										return 0;
									}
								}
							}
						} else {
							if(pX[7] <= -21){
								if(pX[9] <= 272){
									if(pX[5] <= -167){
										if(pX[5] <= -181){
											return 1;
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								} else {
									return 1;
								}
							} else {
								if(pX[5] <= -278){
									return 0;
								} else {
									if(pX[7] <= 22){
										return 1;
									} else {
										if(pX[2] <= 2){
											if(pX[1] <= 32){
												if(pX[9] <= 323){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									}
								}
							}
						}
					}
				}
			}
		} else {
			if(pX[1] <= 9){
				if(pX[6] <= 18){
					if(pX[9] <= 212){
						if(pX[8] <= 15){
							if(pX[7] <= -10){
								if(pX[7] <= -18){
									return 1;
								} else {
									if(pX[8] <= 6){
										return 1;
									} else {
										return 0;
									}
								}
							} else {
								if(pX[6] <= -6){
									if(pX[5] <= 52){
										if(pX[7] <= -2){
											return 0;
										} else {
											if(pX[0] <= 35){
												if(pX[9] <= 198){
													if(pX[0] <= 15){
														return 1;
													} else {
														if(pX[9] <= 171){
															return 0;
														} else {
															if(pX[9] <= 173){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													if(pX[7] <= 0){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												if(pX[9] <= 153){
													return 1;
												} else {
													return 0;
												}
											}
										}
									} else {
										return 1;
									}
								} else {
									if(pX[7] <= 8){
										if(pX[5] <= 18){
											if(pX[0] <= 20){
												if(pX[5] <= 5){
													if(pX[9] <= 182){
														if(pX[8] <= 14){
															if(pX[9] <= 170){
																return 0;
															} else {
																if(pX[6] <= 2){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												} else {
													if(pX[7] <= -7){
														return 0;
													} else {
														if(pX[9] <= 166){
															return 1;
														} else {
															if(pX[0] <= 19){
																return 0;
															} else {
																return 1;
															}
														}
													}
												}
											} else {
												if(pX[5] <= 8){
													if(pX[0] <= 25){
														if(pX[6] <= 16){
															if(pX[0] <= 21){
																if(pX[6] <= 13){
																	if(pX[7] <= 1){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[9] <= 179){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[7] <= -1){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													if(pX[9] <= 205){
														return 0;
													} else {
														return 1;
													}
												}
											}
										} else {
											if(pX[1] <= 1){
												return 0;
											} else {
												if(pX[7] <= -1){
													if(pX[9] <= 132){
														if(pX[6] <= 10){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												} else {
													if(pX[0] <= 24){
														if(pX[7] <= 5){
															if(pX[0] <= 18){
																return 1;
															} else {
																if(pX[9] <= 140){
																	if(pX[1] <= 6){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															}
														} else {
															return 0;
														}
													} else {
														if(pX[5] <= 33){
															return 1;
														} else {
															return 0;
														}
													}
												}
											}
										}
									} else {
										if(pX[9] <= 110){
											return 1;
										} else {
											if(pX[5] <= 19){
												return 1;
											} else {
												return 0;
											}
										}
									}
								}
							}
						} else {
							if(pX[0] <= 27){
								if(pX[0] <= 17){
									if(pX[6] <= 10){
										if(pX[1] <= 8){
											if(pX[1] <= 6){
												return 1;
											} else {
												if(pX[5] <= 0){
													if(pX[7] <= 0){
														if(pX[6] <= -1){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[6] <= -9){
															return 1;
														} else {
															if(pX[0] <= 16){
																return 0;
															} else {
																return 1;
															}
														}
													}
												} else {
													if(pX[0] <= 16){
														return 1;
													} else {
														if(pX[8] <= 46){
															return 1;
														} else {
															return 0;
														}
													}
												}
											}
										} else {
											if(pX[6] <= -10){
												return 1;
											} else {
												if(pX[6] <= -1){
													if(pX[7] <= -12){
														return 1;
													} else {
														if(pX[8] <= 77){
															if(pX[0] <= 13){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[5] <= 12){
														if(pX[6] <= 5){
															return 1;
														} else {
															if(pX[7] <= -7){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														return 1;
													}
												}
											}
										}
									} else {
										return 1;
									}
								} else {
									if(pX[6] <= -17){
										if(pX[8] <= 87){
											if(pX[8] <= 77){
												if(pX[5] <= -11){
													return 1;
												} else {
													if(pX[8] <= 41){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												return 0;
											}
										} else {
											return 1;
										}
									} else {
										if(pX[7] <= 6){
											if(pX[6] <= 15){
												if(pX[7] <= -6){
													if(pX[8] <= 42){
														if(pX[0] <= 23){
															if(pX[1] <= 4){
																if(pX[9] <= 170){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																if(pX[5] <= -8){
																	if(pX[7] <= -7){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[5] <= 2){
															if(pX[5] <= 0){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[8] <= 82){
														if(pX[7] <= -2){
															if(pX[8] <= 16){
																if(pX[6] <= -10){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																if(pX[8] <= 28){
																	return 0;
																} else {
																	if(pX[6] <= 10){
																		if(pX[5] <= -5){
																			if(pX[0] <= 23){
																				if(pX[9] <= 79){
																					if(pX[9] <= 45){
																						return 0;
																					} else {
																						if(pX[7] <= -5){
																							return 1;
																						} else {
																							if(pX[9] <= 70){
																								return 1;
																							} else {
																								if(pX[5] <= -20){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[0] <= 22){
																				if(pX[9] <= 84){
																					if(pX[6] <= 9){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[8] <= 73){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		if(pX[0] <= 26){
																			if(pX[5] <= 19){
																				if(pX[5] <= 8){
																					if(pX[1] <= 8){
																						return 0;
																					} else {
																						if(pX[8] <= 50){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[9] <= 195){
																					if(pX[9] <= 119){
																						if(pX[8] <= 39){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															}
														} else {
															if(pX[8] <= 63){
																if(pX[1] <= 7){
																	if(pX[6] <= -14){
																		return 0;
																	} else {
																		if(pX[1] <= 6){
																			if(pX[5] <= 18){
																				if(pX[5] <= -21){
																					if(pX[5] <= -28){
																						return 1;
																					} else {
																						if(pX[6] <= -12){
																							if(pX[8] <= 52){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[8] <= 20){
																						return 0;
																					} else {
																						if(pX[5] <= -4){
																							return 1;
																						} else {
																							if(pX[7] <= 2){
																								if(pX[6] <= -1){
																									return 0;
																								} else {
																									if(pX[9] <= 131){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							} else {
																								return 1;
																							}
																						}
																					}
																				}
																			} else {
																				if(pX[5] <= 26){
																					return 0;
																				} else {
																					if(pX[0] <= 23){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			if(pX[0] <= 26){
																				if(pX[6] <= 7){
																					if(pX[0] <= 18){
																						if(pX[8] <= 41){
																							if(pX[7] <= 1){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[9] <= 110){
																						if(pX[6] <= 10){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[6] <= 9){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			} else {
																				if(pX[6] <= -7){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[6] <= -12){
																		return 0;
																	} else {
																		if(pX[5] <= 10){
																			if(pX[9] <= 131){
																				return 0;
																			} else {
																				if(pX[0] <= 25){
																					if(pX[7] <= 3){
																						if(pX[6] <= 14){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[8] <= 39){
																				if(pX[7] <= 2){
																					if(pX[6] <= 12){
																						return 1;
																					} else {
																						if(pX[8] <= 20){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[6] <= -1){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																}
															} else {
																if(pX[8] <= 79){
																	if(pX[0] <= 18){
																		return 1;
																	} else {
																		if(pX[9] <= 198){
																			if(pX[0] <= 19){
																				return 1;
																			} else {
																				if(pX[0] <= 20){
																					return 0;
																				} else {
																					if(pX[8] <= 71){
																						if(pX[5] <= 4){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						if(pX[6] <= -14){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[5] <= 8){
																				if(pX[9] <= 205){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[5] <= 4){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[1] <= 7){
															if(pX[6] <= -8){
																return 0;
															} else {
																if(pX[6] <= -6){
																	return 1;
																} else {
																	if(pX[8] <= 87){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															return 1;
														}
													}
												}
											} else {
												if(pX[7] <= -9){
													return 0;
												} else {
													if(pX[1] <= 3){
														if(pX[6] <= 16){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[8] <= 51){
															if(pX[5] <= 17){
																return 1;
															} else {
																if(pX[0] <= 20){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[8] <= 61){
																return 0;
															} else {
																return 1;
															}
														}
													}
												}
											}
										} else {
											if(pX[7] <= 8){
												return 1;
											} else {
												if(pX[6] <= 15){
													if(pX[9] <= 166){
														if(pX[9] <= 148){
															if(pX[5] <= -3){
																return 1;
															} else {
																if(pX[8] <= 67){
																	if(pX[5] <= 7){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[8] <= 19){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													if(pX[0] <= 23){
														if(pX[0] <= 20){
															if(pX[9] <= 150){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											}
										}
									}
								}
							} else {
								if(pX[0] <= 31){
									if(pX[8] <= 53){
										if(pX[8] <= 17){
											return 1;
										} else {
											if(pX[8] <= 21){
												return 0;
											} else {
												if(pX[9] <= 89){
													return 1;
												} else {
													if(pX[6] <= -18){
														return 1;
													} else {
														if(pX[8] <= 28){
															return 1;
														} else {
															if(pX[1] <= 8){
																if(pX[7] <= 2){
																	return 0;
																} else {
																	if(pX[6] <= 17){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[8] <= 38){
																	if(pX[0] <= 29){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[5] <= -32){
											return 0;
										} else {
											return 1;
										}
									}
								} else {
									if(pX[6] <= 17){
										if(pX[1] <= 1){
											if(pX[9] <= 141){
												return 1;
											} else {
												return 0;
											}
										} else {
											if(pX[9] <= 88){
												if(pX[1] <= 8){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[5] <= 15){
											return 0;
										} else {
											return 1;
										}
									}
								}
							}
						}
					} else {
						if(pX[0] <= 16){
							if(pX[7] <= 5){
								return 1;
							} else {
								if(pX[7] <= 10){
									if(pX[8] <= 42){
										return 0;
									} else {
										return 1;
									}
								} else {
									return 0;
								}
							}
						} else {
							if(pX[0] <= 23){
								if(pX[6] <= -15){
									return 1;
								} else {
									if(pX[8] <= 34){
										if(pX[0] <= 20){
											if(pX[8] <= 32){
												if(pX[8] <= 31){
													if(pX[6] <= 11){
														if(pX[5] <= 4){
															if(pX[0] <= 18){
																if(pX[7] <= 7){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														} else {
															if(pX[8] <= 18){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														if(pX[9] <= 229){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													return 1;
												}
											} else {
												return 0;
											}
										} else {
											if(pX[8] <= 20){
												return 0;
											} else {
												if(pX[0] <= 21){
													if(pX[6] <= -6){
														return 0;
													} else {
														if(pX[6] <= 0){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													return 1;
												}
											}
										}
									} else {
										if(pX[9] <= 223){
											if(pX[6] <= -9){
												if(pX[6] <= -13){
													return 1;
												} else {
													return 0;
												}
											} else {
												if(pX[5] <= 0){
													if(pX[6] <= 9){
														if(pX[0] <= 18){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[1] <= 7){
												if(pX[8] <= 71){
													if(pX[8] <= 39){
														if(pX[9] <= 228){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[5] <= -4){
															if(pX[9] <= 236){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													}
												} else {
													if(pX[5] <= 22){
														if(pX[0] <= 19){
															if(pX[0] <= 18){
																return 1;
															} else {
																if(pX[7] <= 0){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												}
											} else {
												if(pX[6] <= 12){
													if(pX[8] <= 67){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										}
									}
								}
							} else {
								if(pX[1] <= 2){
									if(pX[6] <= 0){
										return 0;
									} else {
										return 1;
									}
								} else {
									if(pX[9] <= 237){
										if(pX[5] <= -38){
											if(pX[6] <= 6){
												if(pX[8] <= 1){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 0;
											}
										} else {
											if(pX[5] <= 14){
												if(pX[8] <= 17){
													if(pX[8] <= 2){
														return 1;
													} else {
														return 0;
													}
												} else {
													if(pX[5] <= 9){
														return 1;
													} else {
														if(pX[6] <= 14){
															return 1;
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[6] <= 9){
													return 0;
												} else {
													return 1;
												}
											}
										}
									} else {
										if(pX[1] <= 7){
											if(pX[9] <= 251){
												return 1;
											} else {
												if(pX[5] <= 0){
													return 0;
												} else {
													return 1;
												}
											}
										} else {
											if(pX[1] <= 8){
												if(pX[7] <= 9){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										}
									}
								}
							}
						}
					}
				} else {
					if(pX[6] <= 24){
						if(pX[0] <= 20){
							return 1;
						} else {
							if(pX[9] <= 126){
								if(pX[1] <= 8){
									if(pX[8] <= 4){
										return 0;
									} else {
										if(pX[9] <= 122){
											if(pX[8] <= 63){
												return 1;
											} else {
												if(pX[9] <= 98){
													return 0;
												} else {
													return 1;
												}
											}
										} else {
											return 0;
										}
									}
								} else {
									if(pX[9] <= 49){
										return 1;
									} else {
										if(pX[8] <= 45){
											return 0;
										} else {
											if(pX[9] <= 103){
												return 0;
											} else {
												if(pX[6] <= 21){
													return 0;
												} else {
													return 1;
												}
											}
										}
									}
								}
							} else {
								if(pX[7] <= -1){
									if(pX[0] <= 26){
										if(pX[8] <= 78){
											if(pX[5] <= 13){
												if(pX[6] <= 22){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 0;
											}
										} else {
											return 1;
										}
									} else {
										if(pX[5] <= 21){
											if(pX[5] <= 8){
												return 1;
											} else {
												if(pX[7] <= -7){
													return 0;
												} else {
													return 1;
												}
											}
										} else {
											if(pX[9] <= 231){
												if(pX[7] <= -6){
													if(pX[9] <= 205){
														if(pX[8] <= 39){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												} else {
													if(pX[9] <= 179){
														return 0;
													} else {
														if(pX[9] <= 202){
															return 1;
														} else {
															return 0;
														}
													}
												}
											} else {
												return 1;
											}
										}
									}
								} else {
									if(pX[0] <= 34){
										if(pX[0] <= 33){
											if(pX[9] <= 178){
												if(pX[0] <= 26){
													if(pX[0] <= 22){
														return 1;
													} else {
														if(pX[5] <= 13){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													if(pX[8] <= 54){
														if(pX[0] <= 30){
															if(pX[5] <= 28){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[9] <= 151){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														return 1;
													}
												}
											} else {
												if(pX[6] <= 19){
													if(pX[8] <= 35){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[8] <= 57){
														if(pX[8] <= 7){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											}
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								}
							}
						}
					} else {
						if(pX[6] <= 27){
							if(pX[8] <= 2){
								return 0;
							} else {
								if(pX[8] <= 18){
									if(pX[9] <= 205){
										if(pX[7] <= -5){
											return 0;
										} else {
											if(pX[9] <= 194){
												return 1;
											} else {
												return 0;
											}
										}
									} else {
										return 1;
									}
								} else {
									if(pX[1] <= 8){
										return 1;
									} else {
										if(pX[9] <= 133){
											if(pX[7] <= 7){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 1;
										}
									}
								}
							}
						} else {
							if(pX[5] <= 37){
								if(pX[9] <= 304){
									if(pX[8] <= 31){
										if(pX[6] <= 29){
											if(pX[5] <= 21){
												return 0;
											} else {
												return 1;
											}
										} else {
											if(pX[7] <= -6){
												if(pX[7] <= -8){
													return 1;
												} else {
													if(pX[5] <= 15){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												if(pX[1] <= 8){
													return 1;
												} else {
													if(pX[7] <= 5){
														if(pX[0] <= 44){
															if(pX[8] <= 21){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 1;
														}
													} else {
														if(pX[5] <= -8){
															return 0;
														} else {
															return 1;
														}
													}
												}
											}
										}
									} else {
										return 1;
									}
								} else {
									return 0;
								}
							} else {
								if(pX[1] <= 8){
									if(pX[0] <= 68){
										return 1;
									} else {
										return 0;
									}
								} else {
									if(pX[9] <= 129){
										return 1;
									} else {
										if(pX[5] <= 59){
											return 0;
										} else {
											if(pX[6] <= 51){
												return 0;
											} else {
												return 1;
											}
										}
									}
								}
							}
						}
					}
				}
			} else {
				if(pX[8] <= 27){
					if(pX[0] <= 22){
						if(pX[6] <= 20){
							if(pX[6] <= -20){
								if(pX[6] <= -21){
									return 1;
								} else {
									if(pX[5] <= -7){
										return 0;
									} else {
										return 1;
									}
								}
							} else {
								if(pX[5] <= 36){
									if(pX[6] <= -1){
										if(pX[9] <= 231){
											if(pX[7] <= 16){
												if(pX[0] <= 18){
													if(pX[1] <= 15){
														if(pX[6] <= -7){
															if(pX[8] <= 26){
																if(pX[1] <= 10){
																	if(pX[7] <= -4){
																		return 1;
																	} else {
																		if(pX[7] <= 4){
																			return 0;
																		} else {
																			if(pX[5] <= -7){
																				if(pX[8] <= 15){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[9] <= 210){
																		if(pX[8] <= 20){
																			if(pX[5] <= 15){
																				if(pX[5] <= 2){
																					if(pX[8] <= 14){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[7] <= 7){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[0] <= 14){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																return 1;
															}
														} else {
															if(pX[5] <= -2){
																if(pX[6] <= -6){
																	if(pX[7] <= 7){
																		return 1;
																	} else {
																		if(pX[9] <= 97){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[7] <= 5){
																		return 0;
																	} else {
																		if(pX[8] <= 9){
																			return 1;
																		} else {
																			if(pX[0] <= 14){
																				if(pX[9] <= 157){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															} else {
																if(pX[0] <= 17){
																	if(pX[9] <= 182){
																		if(pX[9] <= 175){
																			if(pX[8] <= 19){
																				if(pX[9] <= 123){
																					if(pX[8] <= 17){
																						if(pX[9] <= 114){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[6] <= -5){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														return 0;
													}
												} else {
													if(pX[7] <= -13){
														if(pX[5] <= -1){
															return 1;
														} else {
															if(pX[8] <= 16){
																if(pX[9] <= 130){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[7] <= 9){
															if(pX[5] <= 0){
																return 0;
															} else {
																if(pX[6] <= -5){
																	if(pX[9] <= 199){
																		return 0;
																	} else {
																		if(pX[6] <= -13){
																			if(pX[6] <= -15){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[9] <= 149){
																		return 0;
																	} else {
																		if(pX[8] <= 3){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															}
														} else {
															if(pX[0] <= 20){
																return 0;
															} else {
																if(pX[1] <= 13){
																	if(pX[6] <= -16){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															}
														}
													}
												}
											} else {
												return 1;
											}
										} else {
											if(pX[7] <= 11){
												if(pX[6] <= -11){
													return 0;
												} else {
													if(pX[7] <= -9){
														return 1;
													} else {
														if(pX[1] <= 10){
															return 1;
														} else {
															if(pX[9] <= 232){
																return 1;
															} else {
																if(pX[7] <= -3){
																	if(pX[1] <= 11){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[6] <= -7){
																		return 0;
																	} else {
																		if(pX[7] <= 6){
																			return 0;
																		} else {
																			if(pX[6] <= -6){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															}
														}
													}
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[5] <= -35){
											return 1;
										} else {
											if(pX[6] <= 11){
												if(pX[7] <= -15){
													return 1;
												} else {
													if(pX[9] <= 200){
														if(pX[5] <= 27){
															if(pX[7] <= -1){
																if(pX[8] <= 23){
																	return 0;
																} else {
																	if(pX[6] <= 6){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[9] <= 166){
																	if(pX[0] <= 18){
																		if(pX[1] <= 10){
																			return 0;
																		} else {
																			if(pX[9] <= 46){
																				return 1;
																			} else {
																				if(pX[7] <= 8){
																					if(pX[8] <= 11){
																						return 0;
																					} else {
																						if(pX[5] <= 1){
																							return 0;
																						} else {
																							if(pX[0] <= 16){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					}
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		if(pX[9] <= 128){
																			if(pX[1] <= 13){
																				if(pX[7] <= 2){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[5] <= -25){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[7] <= 9){
																		if(pX[5] <= 0){
																			return 0;
																		} else {
																			if(pX[7] <= 8){
																				if(pX[0] <= 17){
																					return 1;
																				} else {
																					if(pX[1] <= 11){
																						if(pX[6] <= 6){
																							return 0;
																						} else {
																							if(pX[8] <= 21){
																								if(pX[6] <= 8){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[0] <= 16){
																			if(pX[9] <= 198){
																				if(pX[6] <= 3){
																					return 1;
																				} else {
																					if(pX[8] <= 9){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[9] <= 201){
															return 1;
														} else {
															if(pX[5] <= -11){
																if(pX[6] <= 8){
																	return 0;
																} else {
																	if(pX[7] <= 0){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[7] <= -8){
																	if(pX[8] <= 26){
																		if(pX[8] <= 6){
																			return 1;
																		} else {
																			if(pX[8] <= 21){
																				if(pX[5] <= -1){
																					return 0;
																				} else {
																					if(pX[6] <= 6){
																						if(pX[6] <= 5){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[8] <= 12){
																		if(pX[5] <= 8){
																			if(pX[6] <= 5){
																				return 1;
																			} else {
																				if(pX[5] <= 2){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[0] <= 18){
																				if(pX[8] <= 11){
																					if(pX[0] <= 15){
																						return 0;
																					} else {
																						if(pX[9] <= 214){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[7] <= -4){
																			if(pX[9] <= 202){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[5] <= 19){
																				if(pX[9] <= 244){
																					if(pX[7] <= 4){
																						return 1;
																					} else {
																						if(pX[5] <= 0){
																							return 0;
																						} else {
																							if(pX[0] <= 12){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[0] <= 16){
													return 1;
												} else {
													if(pX[9] <= 197){
														if(pX[1] <= 14){
															if(pX[9] <= 146){
																if(pX[0] <= 17){
																	if(pX[8] <= 22){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[7] <= 9){
																		if(pX[9] <= 140){
																			if(pX[8] <= 6){
																				return 0;
																			} else {
																				if(pX[6] <= 19){
																					if(pX[8] <= 18){
																						if(pX[0] <= 21){
																							if(pX[5] <= 10){
																								if(pX[1] <= 10){
																									return 0;
																								} else {
																									if(pX[1] <= 13){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							if(pX[8] <= 11){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[0] <= 20){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[9] <= 184){
																	if(pX[5] <= 10){
																		if(pX[8] <= 26){
																			if(pX[8] <= 24){
																				if(pX[7] <= -10){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[5] <= -5){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[1] <= 11){
																			if(pX[9] <= 182){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[0] <= 19){
																return 0;
															} else {
																if(pX[8] <= 16){
																	if(pX[8] <= 2){
																		return 0;
																	} else {
																		if(pX[6] <= 15){
																			if(pX[5] <= 9){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[7] <= 3){
																				return 1;
																			} else {
																				if(pX[1] <= 15){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[7] <= 11){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[9] <= 253){
															if(pX[7] <= 2){
																if(pX[9] <= 228){
																	if(pX[9] <= 226){
																		if(pX[7] <= -10){
																			return 0;
																		} else {
																			if(pX[5] <= 10){
																				if(pX[1] <= 11){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[7] <= -5){
																					return 0;
																				} else {
																					if(pX[9] <= 209){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			}
																		}
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[8] <= 4){
																	return 0;
																} else {
																	if(pX[1] <= 11){
																		return 1;
																	} else {
																		if(pX[5] <= 12){
																			if(pX[8] <= 19){
																				return 1;
																			} else {
																				if(pX[1] <= 15){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															}
														} else {
															return 1;
														}
													}
												}
											}
										}
									}
								} else {
									return 1;
								}
							}
						} else {
							return 1;
						}
					} else {
						if(pX[1] <= 11){
							if(pX[8] <= 8){
								if(pX[9] <= 97){
									if(pX[9] <= 74){
										return 0;
									} else {
										return 1;
									}
								} else {
									if(pX[9] <= 260){
										if(pX[9] <= 126){
											if(pX[6] <= -14){
												return 0;
											} else {
												if(pX[6] <= 1){
													return 1;
												} else {
													if(pX[6] <= 23){
														return 0;
													} else {
														if(pX[0] <= 37){
															return 1;
														} else {
															return 0;
														}
													}
												}
											}
										} else {
											if(pX[9] <= 219){
												if(pX[0] <= 25){
													if(pX[8] <= 0){
														if(pX[5] <= 9){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												} else {
													if(pX[7] <= -8){
														if(pX[9] <= 166){
															if(pX[9] <= 147){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												}
											} else {
												if(pX[1] <= 10){
													if(pX[9] <= 221){
														return 1;
													} else {
														return 0;
													}
												} else {
													if(pX[0] <= 27){
														return 1;
													} else {
														return 0;
													}
												}
											}
										}
									} else {
										if(pX[2] <= 2){
											if(pX[9] <= 289){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 1;
										}
									}
								}
							} else {
								if(pX[6] <= 22){
									if(pX[9] <= 182){
										if(pX[0] <= 32){
											if(pX[9] <= 151){
												return 0;
											} else {
												if(pX[7] <= 0){
													if(pX[9] <= 156){
														return 1;
													} else {
														if(pX[8] <= 19){
															return 0;
														} else {
															if(pX[8] <= 22){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													return 0;
												}
											}
										} else {
											if(pX[9] <= 140){
												if(pX[1] <= 10){
													return 1;
												} else {
													if(pX[8] <= 18){
														if(pX[0] <= 53){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												}
											} else {
												if(pX[6] <= 18){
													return 0;
												} else {
													if(pX[5] <= 5){
														return 0;
													} else {
														return 1;
													}
												}
											}
										}
									} else {
										if(pX[1] <= 10){
											if(pX[0] <= 23){
												return 0;
											} else {
												if(pX[5] <= -29){
													if(pX[9] <= 266){
														if(pX[9] <= 226){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												} else {
													if(pX[8] <= 18){
														if(pX[9] <= 204){
															return 0;
														} else {
															if(pX[5] <= 31){
																if(pX[9] <= 219){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																if(pX[7] <= 4){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													} else {
														return 1;
													}
												}
											}
										} else {
											if(pX[8] <= 17){
												if(pX[9] <= 187){
													return 1;
												} else {
													if(pX[0] <= 28){
														return 0;
													} else {
														if(pX[0] <= 29){
															return 1;
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[5] <= 13){
													if(pX[8] <= 20){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[8] <= 20){
														return 1;
													} else {
														return 0;
													}
												}
											}
										}
									}
								} else {
									if(pX[6] <= 72){
										if(pX[6] <= 28){
											if(pX[0] <= 30){
												return 1;
											} else {
												if(pX[2] <= 2){
													if(pX[0] <= 44){
														if(pX[8] <= 14){
															return 0;
														} else {
															if(pX[8] <= 15){
																return 1;
															} else {
																if(pX[7] <= -6){
																	return 0;
																} else {
																	if(pX[0] <= 37){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[2] <= 2){
												if(pX[6] <= 40){
													if(pX[5] <= 43){
														return 1;
													} else {
														if(pX[0] <= 49){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													if(pX[7] <= 6){
														if(pX[9] <= 213){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[7] <= 8){
															return 0;
														} else {
															return 1;
														}
													}
												}
											} else {
												return 1;
											}
										}
									} else {
										return 0;
									}
								}
							}
						} else {
							if(pX[8] <= 10){
								if(pX[7] <= -27){
									if(pX[9] <= 222){
										if(pX[9] <= 162){
											return 0;
										} else {
											if(pX[2] <= 3){
												return 1;
											} else {
												return 0;
											}
										}
									} else {
										if(pX[7] <= -28){
											return 0;
										} else {
											if(pX[6] <= 45){
												return 1;
											} else {
												return 0;
											}
										}
									}
								} else {
									if(pX[5] <= -34){
										if(pX[9] <= 124){
											if(pX[0] <= 42){
												if(pX[6] <= -16){
													if(pX[0] <= 27){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 0;
												}
											} else {
												if(pX[5] <= -58){
													if(pX[0] <= 69){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[7] <= 19){
												if(pX[9] <= 351){
													if(pX[7] <= -18){
														if(pX[8] <= 6){
															if(pX[5] <= -46){
																return 0;
															} else {
																if(pX[9] <= 300){
																	if(pX[6] <= 58){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[0] <= 67){
																if(pX[7] <= -20){
																	return 1;
																} else {
																	if(pX[0] <= 58){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[1] <= 12){
															if(pX[6] <= 18){
																return 0;
															} else {
																if(pX[0] <= 42){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[2] <= 2){
																if(pX[8] <= 5){
																	if(pX[9] <= 147){
																		if(pX[7] <= 1){
																			if(pX[7] <= -5){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[9] <= 266){
																			if(pX[8] <= 2){
																				if(pX[1] <= 26){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[1] <= 27){
																		if(pX[8] <= 7){
																			if(pX[5] <= -57){
																				if(pX[0] <= 50){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[6] <= 29){
																					return 0;
																				} else {
																					if(pX[6] <= 39){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[8] <= 2){
																	if(pX[7] <= -16){
																		if(pX[6] <= -56){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[1] <= 20){
																		if(pX[7] <= 9){
																			if(pX[9] <= 319){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[0] <= 86){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[6] <= -17){
																			if(pX[7] <= -11){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[8] <= 9){
																				if(pX[8] <= 4){
																					if(pX[9] <= 306){
																						if(pX[7] <= 15){
																							return 0;
																						} else {
																							if(pX[1] <= 30){
																								return 0;
																							} else {
																								if(pX[7] <= 17){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					} else {
																						if(pX[9] <= 312){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[7] <= 13){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												} else {
													if(pX[7] <= -9){
														return 0;
													} else {
														if(pX[9] <= 376){
															return 1;
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[6] <= 43){
													if(pX[0] <= 55){
														return 0;
													} else {
														if(pX[2] <= 2){
															return 1;
														} else {
															if(pX[6] <= -35){
																return 0;
															} else {
																return 1;
															}
														}
													}
												} else {
													if(pX[8] <= 7){
														if(pX[1] <= 26){
															if(pX[6] <= 77){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											}
										}
									} else {
										if(pX[8] <= 5){
											if(pX[1] <= 25){
												if(pX[6] <= -71){
													return 1;
												} else {
													if(pX[6] <= -16){
														if(pX[1] <= 24){
															if(pX[5] <= 23){
																if(pX[8] <= 3){
																	return 0;
																} else {
																	if(pX[0] <= 32){
																		if(pX[6] <= -19){
																			return 0;
																		} else {
																			if(pX[1] <= 16){
																				return 0;
																			} else {
																				if(pX[1] <= 19){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[9] <= 128){
																	if(pX[0] <= 37){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[0] <= 31){
																		if(pX[6] <= -23){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[9] <= 152){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														if(pX[2] <= 2){
															if(pX[1] <= 18){
																if(pX[7] <= 15){
																	if(pX[5] <= 18){
																		if(pX[1] <= 12){
																			return 0;
																		} else {
																			if(pX[9] <= 186){
																				if(pX[9] <= 143){
																					if(pX[7] <= 14){
																						return 0;
																					} else {
																						if(pX[8] <= 2){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[5] <= -29){
																					if(pX[7] <= 12){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[9] <= 188){
																						if(pX[5] <= -15){
																							return 0;
																						} else {
																							if(pX[6] <= 37){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						if(pX[9] <= 220){
																							if(pX[0] <= 30){
																								if(pX[6] <= 22){
																									if(pX[5] <= 6){
																										return 0;
																									} else {
																										if(pX[7] <= -4){
																											return 1;
																										} else {
																											if(pX[0] <= 27){
																												return 0;
																											} else {
																												if(pX[9] <= 199){
																													return 1;
																												} else {
																													return 0;
																												}
																											}
																										}
																									}
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[9] <= 219){
																									return 0;
																								} else {
																									if(pX[8] <= 2){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						} else {
																							if(pX[5] <= -18){
																								if(pX[0] <= 34){
																									if(pX[6] <= -13){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[8] <= 0){
																			if(pX[1] <= 13){
																				if(pX[5] <= 32){
																					if(pX[5] <= 30){
																						if(pX[5] <= 25){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[0] <= 27){
																					if(pX[0] <= 25){
																						if(pX[9] <= 179){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[9] <= 136){
																						if(pX[7] <= 8){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			if(pX[8] <= 4){
																				if(pX[1] <= 13){
																					if(pX[7] <= -10){
																						if(pX[5] <= 30){
																							return 0;
																						} else {
																							if(pX[7] <= -11){
																								if(pX[8] <= 3){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						if(pX[8] <= 1){
																							if(pX[6] <= 6){
																								if(pX[0] <= 42){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[7] <= -15){
																						if(pX[6] <= 53){
																							return 0;
																						} else {
																							if(pX[5] <= 47){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						if(pX[8] <= 3){
																							return 0;
																						} else {
																							if(pX[7] <= -11){
																								if(pX[6] <= 10){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			} else {
																				if(pX[0] <= 26){
																					if(pX[9] <= 149){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[1] <= 12){
																						if(pX[0] <= 44){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		}
																	}
																} else {
																	if(pX[9] <= 172){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[1] <= 19){
																	if(pX[7] <= 18){
																		if(pX[9] <= 193){
																			if(pX[7] <= 11){
																				if(pX[8] <= 4){
																					if(pX[6] <= 28){
																						if(pX[9] <= 110){
																							return 0;
																						} else {
																							if(pX[7] <= -9){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[8] <= 3){
																		if(pX[5] <= 0){
																			if(pX[5] <= -6){
																				return 0;
																			} else {
																				if(pX[0] <= 35){
																					if(pX[8] <= 2){
																						return 0;
																					} else {
																						if(pX[9] <= 203){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[5] <= 47){
																				if(pX[9] <= 256){
																					return 0;
																				} else {
																					if(pX[7] <= -8){
																						if(pX[8] <= 1){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				if(pX[6] <= 9){
																					return 0;
																				} else {
																					if(pX[6] <= 19){
																						return 1;
																					} else {
																						if(pX[6] <= 51){
																							if(pX[0] <= 59){
																								return 0;
																							} else {
																								if(pX[6] <= 50){
																									if(pX[9] <= 179){
																										return 1;
																									} else {
																										return 0;
																									}
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[7] <= -20){
																if(pX[9] <= 165){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																if(pX[0] <= 98){
																	if(pX[1] <= 22){
																		return 0;
																	} else {
																		if(pX[7] <= 9){
																			return 0;
																		} else {
																			if(pX[0] <= 74){
																				if(pX[9] <= 327){
																					if(pX[0] <= 73){
																						return 0;
																					} else {
																						if(pX[7] <= 10){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[8] <= 4){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[0] <= 48){
													if(pX[9] <= 239){
														if(pX[1] <= 29){
															return 0;
														} else {
															if(pX[6] <= 12){
																if(pX[6] <= -10){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[7] <= -8){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													if(pX[1] <= 26){
														if(pX[6] <= 69){
															return 0;
														} else {
															if(pX[6] <= 72){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														if(pX[7] <= -24){
															if(pX[8] <= 4){
																return 0;
															} else {
																if(pX[7] <= -26){
																	return 0;
																} else {
																	if(pX[0] <= 79){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															return 0;
														}
													}
												}
											}
										} else {
											if(pX[7] <= -20){
												if(pX[5] <= 32){
													if(pX[9] <= 301){
														return 1;
													} else {
														if(pX[8] <= 9){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													if(pX[9] <= 181){
														if(pX[0] <= 64){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												}
											} else {
												if(pX[6] <= 141){
													if(pX[7] <= 23){
														if(pX[6] <= -61){
															if(pX[5] <= -7){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[0] <= 118){
																if(pX[1] <= 16){
																	if(pX[0] <= 34){
																		if(pX[6] <= 18){
																			if(pX[7] <= 10){
																				if(pX[9] <= 201){
																					return 0;
																				} else {
																					if(pX[0] <= 23){
																						if(pX[5] <= 11){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				if(pX[1] <= 13){
																					if(pX[0] <= 33){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[5] <= 43){
																				if(pX[5] <= 9){
																					if(pX[9] <= 232){
																						return 0;
																					} else {
																						if(pX[5] <= -10){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					if(pX[0] <= 29){
																						if(pX[7] <= 7){
																							return 0;
																						} else {
																							if(pX[8] <= 7){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						if(pX[7] <= -12){
																							return 0;
																						} else {
																							if(pX[1] <= 14){
																								return 0;
																							} else {
																								if(pX[8] <= 8){
																									if(pX[5] <= 37){
																										if(pX[7] <= 4){
																											if(pX[9] <= 187){
																												return 1;
																											} else {
																												return 0;
																											}
																										} else {
																											if(pX[8] <= 7){
																												if(pX[0] <= 31){
																													return 1;
																												} else {
																													if(pX[6] <= 26){
																														return 1;
																													} else {
																														return 0;
																													}
																												}
																											} else {
																												return 1;
																											}
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				}
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[6] <= 46){
																			if(pX[2] <= 2){
																				return 0;
																			} else {
																				if(pX[1] <= 15){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[5] <= 24){
																				if(pX[5] <= 17){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[6] <= 52){
																					if(pX[9] <= 239){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[0] <= 25){
																		if(pX[6] <= 15){
																			if(pX[0] <= 23){
																				return 0;
																			} else {
																				if(pX[5] <= -12){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[9] <= 91){
																			if(pX[9] <= 85){
																				return 0;
																			} else {
																				if(pX[1] <= 17){
																					return 0;
																				} else {
																					if(pX[1] <= 18){
																						return 1;
																					} else {
																						if(pX[6] <= 33){
																							if(pX[6] <= 13){
																								return 0;
																							} else {
																								if(pX[5] <= 4){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						} else {
																							return 1;
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[7] <= -16){
																				if(pX[0] <= 99){
																					if(pX[1] <= 23){
																						return 0;
																					} else {
																						if(pX[6] <= 48){
																							if(pX[1] <= 35){
																								if(pX[7] <= -18){
																									return 0;
																								} else {
																									if(pX[0] <= 58){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							if(pX[2] <= 2){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[5] <= -31){
																					if(pX[0] <= 52){
																						return 0;
																					} else {
																						if(pX[7] <= 5){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[8] <= 9){
																						if(pX[7] <= 5){
																							if(pX[0] <= 56){
																								if(pX[7] <= 4){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[9] <= 192){
																									if(pX[2] <= 2){
																										return 1;
																									} else {
																										return 0;
																									}
																								} else {
																									if(pX[7] <= -2){
																										return 0;
																									} else {
																										if(pX[1] <= 19){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								}
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[1] <= 22){
																							if(pX[6] <= -29){
																								return 1;
																							} else {
																								if(pX[5] <= -11){
																									if(pX[9] <= 153){
																										return 1;
																									} else {
																										return 0;
																									}
																								} else {
																									if(pX[7] <= 11){
																										return 0;
																									} else {
																										if(pX[9] <= 288){
																											return 0;
																										} else {
																											return 1;
																										}
																									}
																								}
																							}
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		}
																	}
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[2] <= 2){
															if(pX[9] <= 254){
																return 1;
															} else {
																if(pX[6] <= 69){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															return 0;
														}
													}
												} else {
													return 1;
												}
											}
										}
									}
								}
							} else {
								if(pX[9] <= 306){
									if(pX[9] <= 220){
										if(pX[0] <= 91){
											if(pX[6] <= -29){
												if(pX[8] <= 12){
													if(pX[6] <= -40){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[1] <= 13){
														if(pX[8] <= 20){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[8] <= 18){
															if(pX[7] <= -11){
																if(pX[7] <= -13){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[6] <= -44){
																return 1;
															} else {
																if(pX[9] <= 86){
																	return 1;
																} else {
																	if(pX[5] <= -15){
																		return 0;
																	} else {
																		if(pX[1] <= 24){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[7] <= -19){
													if(pX[0] <= 55){
														if(pX[5] <= -10){
															if(pX[6] <= 15){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[0] <= 45){
																return 1;
															} else {
																if(pX[2] <= 2){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													} else {
														if(pX[8] <= 20){
															return 0;
														} else {
															if(pX[1] <= 36){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													if(pX[5] <= -45){
														if(pX[6] <= 11){
															return 1;
														} else {
															return 0;
														}
													} else {
														if(pX[5] <= 62){
															if(pX[0] <= 46){
																if(pX[1] <= 15){
																	if(pX[1] <= 13){
																		if(pX[7] <= 9){
																			if(pX[6] <= 33){
																				if(pX[5] <= -17){
																					if(pX[5] <= -20){
																						if(pX[5] <= -25){
																							if(pX[8] <= 13){
																								if(pX[9] <= 161){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[0] <= 42){
																						if(pX[6] <= -14){
																							return 0;
																						} else {
																							if(pX[0] <= 26){
																								if(pX[7] <= -8){
																									if(pX[6] <= 0){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									if(pX[5] <= 31){
																										if(pX[7] <= 8){
																											return 0;
																										} else {
																											if(pX[5] <= 15){
																												return 1;
																											} else {
																												return 0;
																											}
																										}
																									} else {
																										return 1;
																									}
																								}
																							} else {
																								if(pX[6] <= -13){
																									return 1;
																								} else {
																									if(pX[9] <= 182){
																										if(pX[9] <= 154){
																											if(pX[8] <= 11){
																												if(pX[0] <= 31){
																													return 1;
																												} else {
																													return 0;
																												}
																											} else {
																												return 0;
																											}
																										} else {
																											return 0;
																										}
																									} else {
																										if(pX[8] <= 12){
																											return 1;
																										} else {
																											if(pX[6] <= 15){
																												if(pX[7] <= 0){
																													if(pX[7] <= -7){
																														return 1;
																													} else {
																														return 0;
																													}
																												} else {
																													return 1;
																												}
																											} else {
																												return 0;
																											}
																										}
																									}
																								}
																							}
																						}
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				if(pX[8] <= 16){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[5] <= 25){
																				if(pX[5] <= -25){
																					return 0;
																				} else {
																					if(pX[0] <= 25){
																						return 1;
																					} else {
																						if(pX[7] <= 10){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				}
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[2] <= 2){
																			if(pX[5] <= -24){
																				if(pX[9] <= 149){
																					return 1;
																				} else {
																					if(pX[0] <= 27){
																						return 0;
																					} else {
																						if(pX[9] <= 214){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			} else {
																				if(pX[6] <= 11){
																					if(pX[9] <= 205){
																						return 0;
																					} else {
																						if(pX[8] <= 13){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[0] <= 23){
																						if(pX[8] <= 18){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						if(pX[0] <= 38){
																							if(pX[8] <= 15){
																								if(pX[1] <= 14){
																									if(pX[5] <= 15){
																										if(pX[0] <= 26){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									if(pX[6] <= 14){
																										return 1;
																									} else {
																										if(pX[9] <= 143){
																											return 0;
																										} else {
																											if(pX[9] <= 155){
																												return 1;
																											} else {
																												return 0;
																											}
																										}
																									}
																								}
																							} else {
																								if(pX[5] <= 23){
																									return 0;
																								} else {
																									if(pX[9] <= 203){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							}
																						} else {
																							if(pX[8] <= 23){
																								if(pX[9] <= 206){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 1;
																							}
																						}
																					}
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[0] <= 29){
																		if(pX[6] <= -20){
																			if(pX[6] <= -21){
																				if(pX[5] <= 27){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[9] <= 210){
																				if(pX[5] <= -16){
																					if(pX[0] <= 27){
																						if(pX[0] <= 26){
																							return 0;
																						} else {
																							if(pX[1] <= 21){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[6] <= 17){
																						if(pX[9] <= 127){
																							if(pX[6] <= -2){
																								return 0;
																							} else {
																								if(pX[9] <= 125){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[9] <= 100){
																							if(pX[8] <= 17){
																								if(pX[9] <= 87){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[1] <= 16){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						} else {
																							if(pX[5] <= -6){
																								if(pX[9] <= 154){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								if(pX[8] <= 23){
																									return 0;
																								} else {
																									if(pX[0] <= 25){
																										return 0;
																									} else {
																										if(pX[0] <= 28){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								}
																							}
																						}
																					}
																				}
																			} else {
																				if(pX[8] <= 21){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		if(pX[7] <= 17){
																			if(pX[9] <= 218){
																				if(pX[9] <= 215){
																					if(pX[6] <= 10){
																						if(pX[1] <= 23){
																							if(pX[8] <= 22){
																								return 0;
																							} else {
																								if(pX[2] <= 2){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							if(pX[8] <= 22){
																								if(pX[8] <= 14){
																									if(pX[5] <= -13){
																										return 1;
																									} else {
																										return 0;
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[0] <= 38){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					} else {
																						if(pX[0] <= 42){
																							if(pX[0] <= 30){
																								if(pX[8] <= 26){
																									return 0;
																								} else {
																									if(pX[9] <= 153){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							if(pX[9] <= 115){
																								if(pX[6] <= 40){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[1] <= 21){
																									return 0;
																								} else {
																									if(pX[9] <= 177){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[0] <= 33){
																						if(pX[1] <= 18){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				if(pX[8] <= 20){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[9] <= 74){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															} else {
																if(pX[8] <= 21){
																	if(pX[6] <= 61){
																		if(pX[9] <= 218){
																			if(pX[8] <= 20){
																				if(pX[7] <= 10){
																					if(pX[6] <= 24){
																						return 0;
																					} else {
																						if(pX[6] <= 42){
																							if(pX[0] <= 58){
																								if(pX[8] <= 15){
																									if(pX[5] <= 36){
																										return 0;
																									} else {
																										if(pX[0] <= 55){
																											return 0;
																										} else {
																											if(pX[8] <= 12){
																												return 0;
																											} else {
																												return 1;
																											}
																										}
																									}
																								} else {
																									if(pX[6] <= 32){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								return 1;
																							}
																						} else {
																							if(pX[7] <= 9){
																								if(pX[8] <= 14){
																									return 0;
																								} else {
																									if(pX[6] <= 55){
																										return 0;
																									} else {
																										if(pX[0] <= 59){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								}
																							} else {
																								if(pX[1] <= 18){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[5] <= -1){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[1] <= 32){
																			return 0;
																		} else {
																			if(pX[5] <= 53){
																				return 0;
																			} else {
																				if(pX[1] <= 34){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[1] <= 26){
																		return 1;
																	} else {
																		if(pX[0] <= 55){
																			return 1;
																		} else {
																			if(pX[2] <= 2){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															}
														} else {
															if(pX[2] <= 2){
																if(pX[5] <= 70){
																	if(pX[0] <= 67){
																		if(pX[7] <= 2){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														}
													}
												}
											}
										} else {
											if(pX[9] <= 208){
												if(pX[7] <= 25){
													return 1;
												} else {
													if(pX[1] <= 33){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												return 0;
											}
										}
									} else {
										if(pX[8] <= 16){
											if(pX[6] <= 105){
												if(pX[9] <= 226){
													return 0;
												} else {
													if(pX[9] <= 227){
														if(pX[5] <= 25){
															return 1;
														} else {
															return 0;
														}
													} else {
														if(pX[9] <= 290){
															if(pX[9] <= 289){
																if(pX[8] <= 12){
																	if(pX[1] <= 13){
																		return 1;
																	} else {
																		if(pX[5] <= 49){
																			return 0;
																		} else {
																			if(pX[7] <= -6){
																				if(pX[9] <= 240){
																					return 1;
																				} else {
																					if(pX[6] <= 64){
																						return 0;
																					} else {
																						if(pX[9] <= 259){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[5] <= 56){
																		if(pX[9] <= 238){
																			if(pX[5] <= -25){
																				if(pX[6] <= 23){
																					if(pX[5] <= -37){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[6] <= 44){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[5] <= 43){
																				if(pX[8] <= 15){
																					if(pX[6] <= 56){
																						if(pX[6] <= 16){
																							if(pX[9] <= 273){
																								if(pX[0] <= 44){
																									if(pX[7] <= -5){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							if(pX[2] <= 2){
																								if(pX[7] <= -9){
																									if(pX[8] <= 13){
																										if(pX[0] <= 46){
																											return 1;
																										} else {
																											return 0;
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									if(pX[1] <= 17){
																										if(pX[8] <= 14){
																											return 1;
																										} else {
																											if(pX[0] <= 32){
																												return 1;
																											} else {
																												return 0;
																											}
																										}
																									} else {
																										return 1;
																									}
																								}
																							} else {
																								if(pX[5] <= 30){
																									return 0;
																								} else {
																									if(pX[0] <= 67){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							}
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[5] <= -50){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													}
												}
											} else {
												return 1;
											}
										} else {
											if(pX[5] <= -19){
												if(pX[8] <= 18){
													if(pX[0] <= 32){
														return 1;
													} else {
														return 0;
													}
												} else {
													if(pX[6] <= 2){
														return 1;
													} else {
														if(pX[6] <= 40){
															return 0;
														} else {
															return 1;
														}
													}
												}
											} else {
												if(pX[7] <= -19){
													if(pX[6] <= 41){
														return 0;
													} else {
														if(pX[1] <= 29){
															if(pX[6] <= 64){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[5] <= 65){
														if(pX[6] <= 70){
															if(pX[5] <= 0){
																if(pX[0] <= 29){
																	return 0;
																} else {
																	if(pX[5] <= -2){
																		return 1;
																	} else {
																		if(pX[8] <= 23){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[1] <= 15){
																	if(pX[9] <= 241){
																		if(pX[1] <= 12){
																			return 0;
																		} else {
																			if(pX[5] <= 28){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[9] <= 260){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[8] <= 22){
																		if(pX[0] <= 38){
																			if(pX[9] <= 223){
																				return 1;
																			} else {
																				if(pX[0] <= 36){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[1] <= 28){
																			if(pX[0] <= 62){
																				if(pX[9] <= 227){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[9] <= 247){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[6] <= 122){
															if(pX[5] <= 73){
																if(pX[0] <= 59){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[0] <= 94){
										if(pX[7] <= 14){
											if(pX[9] <= 314){
												if(pX[7] <= -14){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										} else {
											if(pX[7] <= 28){
												return 0;
											} else {
												return 1;
											}
										}
									} else {
										return 1;
									}
								}
							}
						}
					}
				} else {
					if(pX[9] <= 170){
						if(pX[6] <= -23){
							if(pX[1] <= 11){
								return 1;
							} else {
								if(pX[8] <= 76){
									if(pX[5] <= 19){
										if(pX[5] <= 1){
											if(pX[6] <= -115){
												if(pX[8] <= 52){
													if(pX[0] <= 132){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											} else {
												if(pX[0] <= 62){
													if(pX[6] <= -28){
														if(pX[0] <= 58){
															if(pX[9] <= 150){
																if(pX[9] <= 58){
																	if(pX[7] <= -8){
																		return 0;
																	} else {
																		if(pX[8] <= 56){
																			return 1;
																		} else {
																			if(pX[0] <= 46){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	if(pX[8] <= 68){
																		if(pX[8] <= 32){
																			if(pX[7] <= 9){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[7] <= 13){
																			if(pX[1] <= 16){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																if(pX[6] <= -35){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[6] <= -67){
																return 0;
															} else {
																if(pX[9] <= 68){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[6] <= -53){
												return 0;
											} else {
												if(pX[0] <= 40){
													if(pX[0] <= 29){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											}
										}
									} else {
										return 1;
									}
								} else {
									if(pX[0] <= 39){
										if(pX[7] <= 7){
											return 0;
										} else {
											if(pX[1] <= 14){
												return 1;
											} else {
												return 0;
											}
										}
									} else {
										if(pX[0] <= 84){
											if(pX[6] <= -40){
												return 1;
											} else {
												if(pX[6] <= -28){
													return 0;
												} else {
													return 1;
												}
											}
										} else {
											return 0;
										}
									}
								}
							}
						} else {
							if(pX[0] <= 31){
								if(pX[6] <= 21){
									if(pX[8] <= 66){
										if(pX[7] <= -11){
											if(pX[1] <= 16){
												if(pX[6] <= 16){
													if(pX[9] <= 121){
														if(pX[7] <= -13){
															if(pX[9] <= 60){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														if(pX[9] <= 157){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													return 0;
												}
											} else {
												if(pX[8] <= 29){
													return 1;
												} else {
													if(pX[5] <= -4){
														return 0;
													} else {
														if(pX[5] <= -2){
															return 1;
														} else {
															if(pX[8] <= 36){
																return 0;
															} else {
																if(pX[8] <= 46){
																	if(pX[0] <= 25){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[5] <= 15){
																		return 0;
																	} else {
																		if(pX[0] <= 22){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															}
														}
													}
												}
											}
										} else {
											if(pX[1] <= 10){
												if(pX[0] <= 12){
													if(pX[8] <= 46){
														if(pX[6] <= 0){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												} else {
													if(pX[0] <= 25){
														if(pX[9] <= 72){
															if(pX[6] <= -4){
																return 0;
															} else {
																if(pX[9] <= 64){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[6] <= -9){
																if(pX[8] <= 43){
																	if(pX[6] <= -18){
																		return 0;
																	} else {
																		if(pX[5] <= -21){
																			if(pX[8] <= 34){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[9] <= 153){
																	if(pX[8] <= 48){
																		if(pX[9] <= 143){
																			if(pX[0] <= 17){
																				if(pX[9] <= 121){
																					return 0;
																				} else {
																					if(pX[9] <= 124){
																						return 1;
																					} else {
																						if(pX[7] <= 1){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[9] <= 134){
																			if(pX[8] <= 51){
																				if(pX[6] <= 8){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[6] <= 11){
																		if(pX[6] <= -2){
																			return 0;
																		} else {
																			if(pX[0] <= 20){
																				if(pX[8] <= 37){
																					if(pX[9] <= 155){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[7] <= 9){
																			if(pX[6] <= 15){
																				return 1;
																			} else {
																				if(pX[9] <= 158){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															}
														}
													} else {
														if(pX[6] <= -11){
															return 0;
														} else {
															if(pX[6] <= 6){
																return 1;
															} else {
																if(pX[0] <= 29){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													}
												}
											} else {
												if(pX[5] <= 30){
													if(pX[5] <= -36){
														if(pX[9] <= 95){
															if(pX[7] <= 3){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 1;
														}
													} else {
														if(pX[9] <= 167){
															if(pX[0] <= 16){
																if(pX[0] <= 12){
																	if(pX[1] <= 11){
																		if(pX[6] <= -6){
																			if(pX[8] <= 32){
																				return 1;
																			} else {
																				if(pX[7] <= -8){
																					if(pX[8] <= 47){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[5] <= 14){
																						return 0;
																					} else {
																						if(pX[8] <= 52){
																							if(pX[9] <= 101){
																								return 0;
																							} else {
																								if(pX[6] <= -9){
																									return 1;
																								} else {
																									if(pX[7] <= 10){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							}
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[5] <= -8){
																		if(pX[9] <= 91){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[0] <= 14){
																			if(pX[1] <= 11){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[5] <= 4){
																				if(pX[6] <= 10){
																					if(pX[6] <= -1){
																						return 0;
																					} else {
																						if(pX[9] <= 135){
																							if(pX[7] <= -5){
																								return 0;
																							} else {
																								if(pX[7] <= 0){
																									return 1;
																								} else {
																									if(pX[8] <= 42){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															} else {
																if(pX[6] <= 19){
																	if(pX[5] <= -8){
																		if(pX[8] <= 28){
																			if(pX[6] <= 1){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[6] <= -18){
																				if(pX[9] <= 46){
																					if(pX[5] <= -12){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[0] <= 18){
																			if(pX[9] <= 30){
																				return 1;
																			} else {
																				if(pX[5] <= 16){
																					return 0;
																				} else {
																					if(pX[9] <= 92){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			}
																		} else {
																			if(pX[9] <= 76){
																				if(pX[0] <= 26){
																					return 0;
																				} else {
																					if(pX[7] <= -7){
																						if(pX[0] <= 27){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[8] <= 38){
																							return 1;
																						} else {
																							if(pX[8] <= 59){
																								return 0;
																							} else {
																								if(pX[5] <= 12){
																									return 0;
																								} else {
																									if(pX[5] <= 22){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						}
																					}
																				}
																			} else {
																				if(pX[1] <= 17){
																					if(pX[8] <= 40){
																						if(pX[8] <= 33){
																							if(pX[5] <= 0){
																								if(pX[5] <= -5){
																									return 1;
																								} else {
																									if(pX[6] <= 1){
																										if(pX[0] <= 21){
																											return 1;
																										} else {
																											return 0;
																										}
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								if(pX[5] <= 25){
																									if(pX[6] <= -9){
																										if(pX[6] <= -14){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									if(pX[7] <= -1){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[6] <= -6){
																							if(pX[9] <= 135){
																								if(pX[7] <= 4){
																									return 1;
																								} else {
																									if(pX[9] <= 109){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							} else {
																								if(pX[5] <= -1){
																									return 1;
																								} else {
																									if(pX[8] <= 65){
																										if(pX[9] <= 165){
																											return 0;
																										} else {
																											if(pX[1] <= 15){
																												return 0;
																											} else {
																												return 1;
																											}
																										}
																									} else {
																										return 1;
																									}
																								}
																							}
																						} else {
																							if(pX[1] <= 16){
																								if(pX[5] <= -5){
																									return 1;
																								} else {
																									if(pX[9] <= 158){
																										if(pX[6] <= 16){
																											if(pX[6] <= 15){
																												if(pX[7] <= -9){
																													if(pX[1] <= 11){
																														return 1;
																													} else {
																														return 0;
																													}
																												} else {
																													return 0;
																												}
																											} else {
																												return 1;
																											}
																										} else {
																											return 0;
																										}
																									} else {
																										if(pX[7] <= 1){
																											return 0;
																										} else {
																											return 1;
																										}
																									}
																								}
																							} else {
																								if(pX[6] <= 2){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[9] <= 81){
																						return 1;
																					} else {
																						if(pX[7] <= 13){
																							return 0;
																						} else {
																							if(pX[7] <= 15){
																								if(pX[0] <= 24){
																									return 0;
																								} else {
																									if(pX[8] <= 51){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																} else {
																	if(pX[7] <= -6){
																		return 0;
																	} else {
																		if(pX[8] <= 47){
																			if(pX[8] <= 38){
																				if(pX[5] <= 20){
																					return 0;
																				} else {
																					if(pX[9] <= 158){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				if(pX[5] <= -12){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															}
														} else {
															if(pX[8] <= 48){
																if(pX[1] <= 13){
																	if(pX[5] <= 11){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[9] <= 168){
																	if(pX[0] <= 18){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															}
														}
													}
												} else {
													if(pX[6] <= 17){
														if(pX[1] <= 14){
															return 1;
														} else {
															if(pX[6] <= -16){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														return 0;
													}
												}
											}
										}
									} else {
										if(pX[0] <= 20){
											if(pX[1] <= 17){
												if(pX[8] <= 85){
													if(pX[7] <= 10){
														if(pX[0] <= 15){
															if(pX[1] <= 10){
																if(pX[9] <= 125){
																	if(pX[7] <= 1){
																		if(pX[8] <= 72){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														} else {
															if(pX[9] <= 127){
																if(pX[5] <= -2){
																	return 0;
																} else {
																	if(pX[9] <= 64){
																		if(pX[0] <= 17){
																			if(pX[1] <= 12){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[9] <= 103){
																			return 0;
																		} else {
																			if(pX[6] <= -11){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															} else {
																if(pX[9] <= 130){
																	return 1;
																} else {
																	if(pX[1] <= 10){
																		return 0;
																	} else {
																		if(pX[6] <= 10){
																			if(pX[6] <= 0){
																				if(pX[6] <= -8){
																					if(pX[0] <= 18){
																						return 1;
																					} else {
																						if(pX[1] <= 14){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															}
														}
													} else {
														if(pX[9] <= 137){
															if(pX[9] <= 104){
																if(pX[9] <= 58){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[9] <= 152){
														if(pX[1] <= 14){
															if(pX[1] <= 10){
																if(pX[7] <= 8){
																	return 0;
																} else {
																	if(pX[5] <= -4){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[1] <= 12){
																	if(pX[7] <= 7){
																		if(pX[9] <= 47){
																			return 0;
																		} else {
																			if(pX[9] <= 105){
																				return 1;
																			} else {
																				if(pX[5] <= 3){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												}
											} else {
												return 1;
											}
										} else {
											if(pX[7] <= -7){
												if(pX[6] <= 15){
													if(pX[6] <= -3){
														if(pX[6] <= -15){
															if(pX[5] <= -18){
																return 1;
															} else {
																if(pX[6] <= -19){
																	if(pX[0] <= 26){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														} else {
															return 0;
														}
													} else {
														if(pX[1] <= 11){
															if(pX[7] <= -10){
																if(pX[5] <= 0){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[8] <= 86){
																if(pX[9] <= 140){
																	if(pX[8] <= 68){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[0] <= 24){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																return 0;
															}
														}
													}
												} else {
													return 0;
												}
											} else {
												if(pX[8] <= 75){
													if(pX[8] <= 68){
														if(pX[0] <= 30){
															return 1;
														} else {
															if(pX[9] <= 82){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														if(pX[5] <= 13){
															if(pX[9] <= 157){
																if(pX[7] <= 14){
																	if(pX[7] <= 8){
																		if(pX[1] <= 16){
																			if(pX[8] <= 71){
																				return 1;
																			} else {
																				if(pX[1] <= 12){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[6] <= 11){
														if(pX[1] <= 15){
															if(pX[1] <= 14){
																if(pX[9] <= 56){
																	if(pX[5] <= -7){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[5] <= -35){
																		return 1;
																	} else {
																		if(pX[5] <= 0){
																			return 0;
																		} else {
																			if(pX[6] <= -11){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															} else {
																return 1;
															}
														} else {
															if(pX[6] <= -11){
																if(pX[8] <= 83){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[9] <= 61){
															return 0;
														} else {
															if(pX[8] <= 88){
																return 1;
															} else {
																if(pX[5] <= 11){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[1] <= 16){
										if(pX[8] <= 37){
											if(pX[7] <= 11){
												if(pX[7] <= -4){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											if(pX[5] <= -35){
												return 0;
											} else {
												if(pX[9] <= 49){
													return 0;
												} else {
													if(pX[9] <= 120){
														if(pX[8] <= 51){
															return 1;
														} else {
															if(pX[5] <= -11){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														return 1;
													}
												}
											}
										}
									} else {
										if(pX[5] <= -16){
											return 1;
										} else {
											if(pX[5] <= 28){
												if(pX[6] <= 31){
													return 0;
												} else {
													return 1;
												}
											} else {
												if(pX[0] <= 26){
													return 0;
												} else {
													return 1;
												}
											}
										}
									}
								}
							} else {
								if(pX[6] <= -13){
									if(pX[2] <= 2){
										if(pX[0] <= 47){
											if(pX[7] <= -5){
												if(pX[7] <= -11){
													if(pX[0] <= 34){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[9] <= 82){
														return 0;
													} else {
														if(pX[9] <= 153){
															return 1;
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[7] <= 7){
													return 1;
												} else {
													if(pX[5] <= 10){
														if(pX[9] <= 50){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											}
										} else {
											return 1;
										}
									} else {
										if(pX[8] <= 80){
											return 0;
										} else {
											return 1;
										}
									}
								} else {
									if(pX[1] <= 16){
										if(pX[8] <= 38){
											if(pX[2] <= 2){
												if(pX[5] <= 47){
													if(pX[7] <= 3){
														if(pX[1] <= 11){
															if(pX[9] <= 88){
																return 1;
															} else {
																if(pX[0] <= 47){
																	if(pX[1] <= 10){
																		if(pX[9] <= 117){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[6] <= 25){
																if(pX[8] <= 31){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														}
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											if(pX[6] <= 74){
												if(pX[7] <= 10){
													if(pX[0] <= 35){
														if(pX[9] <= 130){
															return 1;
														} else {
															if(pX[7] <= 0){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														return 1;
													}
												} else {
													if(pX[6] <= 42){
														if(pX[7] <= 11){
															if(pX[6] <= 6){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													} else {
														if(pX[1] <= 14){
															return 0;
														} else {
															return 1;
														}
													}
												}
											} else {
												return 0;
											}
										}
									} else {
										if(pX[8] <= 65){
											if(pX[5] <= 46){
												if(pX[8] <= 61){
													if(pX[9] <= 116){
														if(pX[9] <= 104){
															if(pX[9] <= 70){
																if(pX[0] <= 57){
																	return 0;
																} else {
																	if(pX[1] <= 28){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[6] <= 18){
																	return 0;
																} else {
																	if(pX[0] <= 47){
																		if(pX[9] <= 77){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															return 0;
														}
													} else {
														if(pX[7] <= -11){
															if(pX[0] <= 67){
																if(pX[1] <= 25){
																	return 0;
																} else {
																	if(pX[5] <= 28){
																		if(pX[8] <= 39){
																			if(pX[0] <= 51){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																return 1;
															}
														} else {
															if(pX[8] <= 44){
																return 1;
															} else {
																if(pX[7] <= 15){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													}
												} else {
													if(pX[7] <= -24){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												if(pX[0] <= 151){
													return 1;
												} else {
													if(pX[1] <= 23){
														return 0;
													} else {
														return 1;
													}
												}
											}
										} else {
											if(pX[0] <= 46){
												if(pX[7] <= 21){
													if(pX[9] <= 132){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[9] <= 122){
													if(pX[7] <= 27){
														if(pX[1] <= 26){
															if(pX[0] <= 81){
																if(pX[1] <= 23){
																	if(pX[6] <= 41){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[9] <= 106){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																return 1;
															}
														} else {
															if(pX[0] <= 68){
																if(pX[9] <= 74){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														}
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[5] <= 25){
							if(pX[1] <= 23){
								if(pX[0] <= 25){
									if(pX[6] <= 21){
										if(pX[8] <= 59){
											if(pX[9] <= 174){
												if(pX[0] <= 12){
													return 0;
												} else {
													if(pX[8] <= 32){
														return 0;
													} else {
														if(pX[0] <= 20){
															if(pX[5] <= -19){
																return 0;
															} else {
																if(pX[8] <= 49){
																	if(pX[6] <= 6){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													}
												}
											} else {
												if(pX[0] <= 24){
													if(pX[5] <= 4){
														if(pX[6] <= 0){
															if(pX[6] <= -7){
																if(pX[6] <= -21){
																	return 1;
																} else {
																	if(pX[8] <= 50){
																		if(pX[7] <= -16){
																			return 1;
																		} else {
																			if(pX[9] <= 220){
																				return 0;
																			} else {
																				if(pX[0] <= 17){
																					return 1;
																				} else {
																					if(pX[1] <= 11){
																						return 0;
																					} else {
																						if(pX[6] <= -12){
																							return 0;
																						} else {
																							if(pX[0] <= 22){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[8] <= 54){
																			if(pX[7] <= 11){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																if(pX[8] <= 31){
																	if(pX[8] <= 29){
																		if(pX[7] <= 8){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[0] <= 21){
																		if(pX[1] <= 14){
																			if(pX[5] <= -13){
																				if(pX[0] <= 16){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[6] <= -1){
																					return 0;
																				} else {
																					if(pX[1] <= 10){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			if(pX[6] <= -5){
																				return 1;
																			} else {
																				if(pX[2] <= 1){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[6] <= 6){
																return 0;
															} else {
																if(pX[6] <= 15){
																	if(pX[5] <= -26){
																		return 1;
																	} else {
																		if(pX[5] <= 0){
																			if(pX[8] <= 43){
																				if(pX[8] <= 34){
																					if(pX[6] <= 10){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[7] <= -15){
																					return 0;
																				} else {
																					if(pX[5] <= -16){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			if(pX[8] <= 35){
																				return 1;
																			} else {
																				if(pX[1] <= 16){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[7] <= 9){
															if(pX[5] <= 9){
																if(pX[9] <= 209){
																	return 1;
																} else {
																	if(pX[7] <= -10){
																		if(pX[6] <= 3){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[7] <= -10){
																	if(pX[9] <= 191){
																		if(pX[8] <= 53){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[5] <= 20){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[9] <= 213){
																		if(pX[8] <= 51){
																			if(pX[7] <= 5){
																				return 0;
																			} else {
																				if(pX[6] <= 17){
																					return 0;
																				} else {
																					if(pX[7] <= 7){
																						if(pX[0] <= 22){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			if(pX[8] <= 53){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[8] <= 40){
																			return 0;
																		} else {
																			if(pX[7] <= 3){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															}
														} else {
															if(pX[0] <= 18){
																if(pX[9] <= 215){
																	if(pX[7] <= 11){
																		if(pX[7] <= 10){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														}
													}
												} else {
													if(pX[8] <= 52){
														if(pX[1] <= 16){
															if(pX[7] <= -6){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											}
										} else {
											if(pX[7] <= 14){
												if(pX[6] <= 13){
													if(pX[8] <= 62){
														if(pX[7] <= 6){
															if(pX[9] <= 208){
																if(pX[5] <= -13){
																	if(pX[6] <= 9){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[9] <= 218){
																	return 1;
																} else {
																	if(pX[5] <= 2){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[7] <= 12){
																return 0;
															} else {
																if(pX[6] <= 10){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													} else {
														if(pX[0] <= 17){
															if(pX[6] <= 6){
																if(pX[9] <= 231){
																	if(pX[5] <= 14){
																		if(pX[9] <= 186){
																			if(pX[0] <= 16){
																				if(pX[7] <= 9){
																					if(pX[8] <= 72){
																						if(pX[1] <= 10){
																							return 1;
																						} else {
																							if(pX[8] <= 67){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					} else {
																						if(pX[0] <= 14){
																							return 0;
																						} else {
																							if(pX[8] <= 81){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[8] <= 87){
																				return 0;
																			} else {
																				if(pX[5] <= -6){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		if(pX[8] <= 83){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[6] <= 0){
																		if(pX[6] <= -3){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																return 0;
															}
														} else {
															if(pX[1] <= 17){
																if(pX[8] <= 85){
																	if(pX[0] <= 23){
																		if(pX[0] <= 20){
																			if(pX[9] <= 232){
																				if(pX[5] <= -2){
																					return 0;
																				} else {
																					if(pX[9] <= 207){
																						if(pX[9] <= 190){
																							if(pX[7] <= 0){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 1;
																						}
																					} else {
																						if(pX[7] <= -3){
																							return 1;
																						} else {
																							if(pX[9] <= 220){
																								return 0;
																							} else {
																								if(pX[7] <= 8){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					}
																				}
																			} else {
																				return 1;
																			}
																		} else {
																			if(pX[8] <= 65){
																				return 1;
																			} else {
																				if(pX[1] <= 10){
																					if(pX[7] <= -4){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[5] <= -15){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[0] <= 24){
																			return 1;
																		} else {
																			if(pX[8] <= 72){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	if(pX[5] <= 6){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 0;
															}
														}
													}
												} else {
													if(pX[8] <= 83){
														if(pX[0] <= 21){
															if(pX[1] <= 16){
																return 1;
															} else {
																if(pX[6] <= 17){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[7] <= -8){
																return 1;
															} else {
																if(pX[8] <= 65){
																	return 0;
																} else {
																	if(pX[5] <= 10){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														}
													} else {
														if(pX[7] <= -7){
															return 0;
														} else {
															if(pX[7] <= 9){
																return 1;
															} else {
																return 0;
															}
														}
													}
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[0] <= 24){
											return 1;
										} else {
											if(pX[5] <= 11){
												return 1;
											} else {
												return 0;
											}
										}
									}
								} else {
									if(pX[0] <= 32){
										if(pX[6] <= 16){
											if(pX[0] <= 29){
												if(pX[7] <= 9){
													if(pX[7] <= 8){
														if(pX[9] <= 179){
															if(pX[6] <= 14){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[1] <= 16){
																if(pX[9] <= 229){
																	if(pX[0] <= 28){
																		return 1;
																	} else {
																		if(pX[7] <= -1){
																			if(pX[6] <= -19){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[8] <= 46){
																		return 0;
																	} else {
																		if(pX[9] <= 232){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[9] <= 229){
																	if(pX[6] <= -16){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														}
													} else {
														return 0;
													}
												} else {
													if(pX[8] <= 32){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												if(pX[5] <= -35){
													return 0;
												} else {
													if(pX[8] <= 38){
														if(pX[5] <= -18){
															return 0;
														} else {
															if(pX[9] <= 205){
																if(pX[6] <= -24){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														}
													} else {
														if(pX[1] <= 17){
															return 1;
														} else {
															if(pX[7] <= 9){
																return 1;
															} else {
																return 0;
															}
														}
													}
												}
											}
										} else {
											if(pX[5] <= 21){
												if(pX[8] <= 42){
													if(pX[6] <= 24){
														if(pX[5] <= 18){
															if(pX[8] <= 40){
																return 0;
															} else {
																if(pX[9] <= 203){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[6] <= 20){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														if(pX[5] <= 8){
															if(pX[5] <= -7){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[7] <= -16){
														return 0;
													} else {
														if(pX[1] <= 11){
															if(pX[7] <= 4){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[5] <= 8){
																return 1;
															} else {
																if(pX[1] <= 20){
																	if(pX[8] <= 64){
																		if(pX[9] <= 192){
																			return 1;
																		} else {
																			if(pX[8] <= 46){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															}
														}
													}
												}
											} else {
												if(pX[6] <= 22){
													return 0;
												} else {
													if(pX[9] <= 197){
														if(pX[5] <= 23){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												}
											}
										}
									} else {
										if(pX[0] <= 50){
											if(pX[5] <= -49){
												if(pX[5] <= -62){
													return 1;
												} else {
													return 0;
												}
											} else {
												if(pX[1] <= 18){
													if(pX[7] <= -14){
														if(pX[6] <= -25){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[1] <= 13){
															return 1;
														} else {
															if(pX[1] <= 14){
																if(pX[5] <= -2){
																	return 1;
																} else {
																	if(pX[8] <= 44){
																		if(pX[0] <= 37){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[7] <= 13){
																	return 1;
																} else {
																	if(pX[9] <= 187){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													}
												} else {
													if(pX[0] <= 49){
														if(pX[0] <= 39){
															if(pX[8] <= 77){
																if(pX[9] <= 192){
																	return 0;
																} else {
																	if(pX[6] <= -11){
																		if(pX[8] <= 60){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																return 1;
															}
														} else {
															if(pX[8] <= 33){
																return 0;
															} else {
																if(pX[6] <= -38){
																	if(pX[0] <= 47){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														}
													} else {
														return 0;
													}
												}
											}
										} else {
											return 1;
										}
									}
								}
							} else {
								if(pX[6] <= -156){
									return 0;
								} else {
									if(pX[0] <= 57){
										if(pX[8] <= 29){
											return 0;
										} else {
											if(pX[1] <= 33){
												if(pX[1] <= 32){
													if(pX[8] <= 47){
														if(pX[8] <= 31){
															return 1;
														} else {
															if(pX[0] <= 36){
																if(pX[8] <= 40){
																	if(pX[9] <= 237){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[0] <= 51){
																	return 1;
																} else {
																	if(pX[9] <= 229){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[0] <= 30){
															if(pX[0] <= 28){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[7] <= 30){
											return 1;
										} else {
											if(pX[5] <= -42){
												return 1;
											} else {
												return 0;
											}
										}
									}
								}
							}
						} else {
							if(pX[8] <= 37){
								if(pX[6] <= 21){
									if(pX[8] <= 31){
										return 0;
									} else {
										if(pX[5] <= 29){
											return 0;
										} else {
											if(pX[5] <= 32){
												return 1;
											} else {
												if(pX[9] <= 186){
													return 1;
												} else {
													return 0;
												}
											}
										}
									}
								} else {
									if(pX[1] <= 13){
										return 1;
									} else {
										if(pX[0] <= 58){
											if(pX[5] <= 36){
												if(pX[7] <= -6){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 0;
											}
										} else {
											if(pX[5] <= 49){
												if(pX[0] <= 73){
													return 0;
												} else {
													return 1;
												}
											} else {
												if(pX[1] <= 32){
													return 1;
												} else {
													return 0;
												}
											}
										}
									}
								}
							} else {
								if(pX[9] <= 178){
									if(pX[8] <= 78){
										if(pX[5] <= 59){
											if(pX[6] <= 27){
												if(pX[0] <= 31){
													if(pX[9] <= 174){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									} else {
										return 1;
									}
								} else {
									if(pX[8] <= 66){
										if(pX[0] <= 113){
											if(pX[1] <= 14){
												if(pX[8] <= 49){
													if(pX[6] <= 21){
														if(pX[8] <= 43){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										} else {
											if(pX[0] <= 114){
												return 0;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[8] <= 69){
											if(pX[0] <= 31){
												if(pX[5] <= 28){
													return 0;
												} else {
													if(pX[0] <= 24){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												return 1;
											}
										} else {
											if(pX[6] <= -96){
												return 0;
											} else {
												return 1;
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	} else {
		if(pX[6] <= -39){
			if(pX[0] <= 115){
				if(pX[8] <= 6){
					if(pX[0] <= 87){
						if(pX[7] <= 2){
							return 1;
						} else {
							if(pX[6] <= -63){
								return 1;
							} else {
								return 0;
							}
						}
					} else {
						if(pX[6] <= -87){
							return 1;
						} else {
							return 0;
						}
					}
				} else {
					if(pX[9] <= 221){
						if(pX[6] <= -58){
							if(pX[7] <= 50){
								if(pX[7] <= 46){
									if(pX[2] <= 2){
										return 0;
									} else {
										return 1;
									}
								} else {
									return 0;
								}
							} else {
								return 1;
							}
						} else {
							return 1;
						}
					} else {
						return 1;
					}
				}
			} else {
				if(pX[1] <= 173){
					if(pX[0] <= 126){
						if(pX[0] <= 125){
							return 1;
						} else {
							if(pX[1] <= 57){
								return 0;
							} else {
								return 1;
							}
						}
					} else {
						return 1;
					}
				} else {
					if(pX[0] <= 213){
						return 0;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[6] <= 98){
				if(pX[8] <= 9){
					if(pX[7] <= -51){
						if(pX[1] <= 72){
							return 0;
						} else {
							return 1;
						}
					} else {
						if(pX[9] <= 79){
							if(pX[9] <= 66){
								return 0;
							} else {
								return 1;
							}
						} else {
							if(pX[2] <= 3){
								if(pX[0] <= 104){
									if(pX[1] <= 62){
										if(pX[5] <= -26){
											return 0;
										} else {
											if(pX[0] <= 65){
												if(pX[5] <= 22){
													return 1;
												} else {
													return 0;
												}
											} else {
												if(pX[6] <= 53){
													if(pX[1] <= 47){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[1] <= 51){
														return 0;
													} else {
														if(pX[8] <= 2){
															if(pX[7] <= -3){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													}
												}
											}
										}
									} else {
										return 1;
									}
								} else {
									if(pX[9] <= 243){
										if(pX[0] <= 112){
											return 0;
										} else {
											return 1;
										}
									} else {
										if(pX[5] <= -87){
											if(pX[8] <= 3){
												return 1;
											} else {
												return 0;
											}
										} else {
											if(pX[5] <= -66){
												return 1;
											} else {
												if(pX[5] <= 36){
													return 0;
												} else {
													return 1;
												}
											}
										}
									}
								}
							} else {
								if(pX[8] <= 6){
									return 0;
								} else {
									if(pX[6] <= 87){
										return 0;
									} else {
										return 1;
									}
								}
							}
						}
					}
				} else {
					if(pX[8] <= 29){
						if(pX[8] <= 25){
							if(pX[1] <= 48){
								if(pX[7] <= -44){
									return 0;
								} else {
									if(pX[9] <= 120){
										return 0;
									} else {
										if(pX[9] <= 269){
											return 1;
										} else {
											if(pX[9] <= 288){
												if(pX[0] <= 85){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										}
									}
								}
							} else {
								if(pX[2] <= 3){
									if(pX[5] <= -62){
										return 1;
									} else {
										if(pX[6] <= 70){
											return 1;
										} else {
											if(pX[6] <= 75){
												return 0;
											} else {
												return 1;
											}
										}
									}
								} else {
									if(pX[8] <= 18){
										return 0;
									} else {
										return 1;
									}
								}
							}
						} else {
							if(pX[5] <= 4){
								return 1;
							} else {
								if(pX[0] <= 99){
									if(pX[6] <= 66){
										return 1;
									} else {
										return 0;
									}
								} else {
									if(pX[1] <= 70){
										return 1;
									} else {
										return 0;
									}
								}
							}
						}
					} else {
						if(pX[0] <= 56){
							if(pX[9] <= 107){
								return 1;
							} else {
								if(pX[5] <= -66){
									return 1;
								} else {
									if(pX[5] <= 34){
										return 0;
									} else {
										return 1;
									}
								}
							}
						} else {
							return 1;
						}
					}
				}
			} else {
				if(pX[8] <= 11){
					if(pX[5] <= -17){
						return 1;
					} else {
						if(pX[5] <= 159){
							return 0;
						} else {
							return 1;
						}
					}
				} else {
					return 1;
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict4( short const pX[10]){
	if(pX[6] <= -39){
		if(pX[6] <= -76){
			if(pX[2] <= 2){
				if(pX[8] <= 8){
					if(pX[7] <= -22){
						if(pX[7] <= -25){
							return 1;
						} else {
							if(pX[5] <= -81){
								return 0;
							} else {
								return 1;
							}
						}
					} else {
						return 0;
					}
				} else {
					if(pX[0] <= 166){
						if(pX[5] <= -14){
							if(pX[0] <= 103){
								return 1;
							} else {
								if(pX[1] <= 12){
									return 0;
								} else {
									if(pX[0] <= 104){
										if(pX[9] <= 233){
											return 1;
										} else {
											return 0;
										}
									} else {
										if(pX[6] <= -166){
											if(pX[0] <= 144){
												return 0;
											} else {
												if(pX[6] <= -187){
													if(pX[9] <= 265){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										} else {
											return 1;
										}
									}
								}
							}
						} else {
							if(pX[5] <= 18){
								if(pX[7] <= -13){
									if(pX[1] <= 34){
										return 0;
									} else {
										return 1;
									}
								} else {
									return 0;
								}
							} else {
								return 1;
							}
						}
					} else {
						if(pX[7] <= 8){
							if(pX[5] <= -113){
								if(pX[6] <= -181){
									return 0;
								} else {
									return 1;
								}
							} else {
								return 0;
							}
						} else {
							return 1;
						}
					}
				}
			} else {
				if(pX[1] <= 28){
					if(pX[9] <= 109){
						if(pX[1] <= 23){
							return 0;
						} else {
							return 1;
						}
					} else {
						if(pX[5] <= -36){
							if(pX[7] <= 16){
								return 1;
							} else {
								if(pX[6] <= -87){
									return 1;
								} else {
									return 0;
								}
							}
						} else {
							if(pX[0] <= 104){
								return 0;
							} else {
								return 1;
							}
						}
					}
				} else {
					if(pX[5] <= -56){
						return 1;
					} else {
						if(pX[0] <= 119){
							if(pX[6] <= -88){
								return 1;
							} else {
								if(pX[5] <= -35){
									if(pX[6] <= -83){
										if(pX[6] <= -87){
											return 0;
										} else {
											return 1;
										}
									} else {
										return 0;
									}
								} else {
									return 1;
								}
							}
						} else {
							return 1;
						}
					}
				}
			}
		} else {
			if(pX[0] <= 105){
				if(pX[6] <= -71){
					if(pX[1] <= 37){
						if(pX[9] <= 186){
							if(pX[1] <= 32){
								return 1;
							} else {
								return 0;
							}
						} else {
							return 0;
						}
					} else {
						return 1;
					}
				} else {
					if(pX[1] <= 44){
						if(pX[5] <= -132){
							return 0;
						} else {
							if(pX[8] <= 12){
								if(pX[9] <= 306){
									if(pX[9] <= 288){
										if(pX[5] <= -77){
											if(pX[1] <= 31){
												if(pX[2] <= 2){
													if(pX[5] <= -105){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											if(pX[5] <= -2){
												if(pX[9] <= 153){
													return 1;
												} else {
													if(pX[1] <= 35){
														if(pX[1] <= 27){
															return 0;
														} else {
															if(pX[6] <= -50){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														return 1;
													}
												}
											} else {
												if(pX[9] <= 232){
													if(pX[9] <= 143){
														return 0;
													} else {
														if(pX[8] <= 2){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													return 0;
												}
											}
										}
									} else {
										if(pX[7] <= 20){
											if(pX[8] <= 5){
												if(pX[1] <= 30){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										} else {
											return 0;
										}
									}
								} else {
									if(pX[7] <= -12){
										if(pX[5] <= -91){
											return 1;
										} else {
											if(pX[1] <= 26){
												if(pX[9] <= 345){
													if(pX[8] <= 3){
														return 1;
													} else {
														if(pX[5] <= -44){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													return 0;
												}
											} else {
												return 0;
											}
										}
									} else {
										return 0;
									}
								}
							} else {
								if(pX[8] <= 19){
									if(pX[5] <= 46){
										if(pX[7] <= 16){
											if(pX[8] <= 17){
												if(pX[8] <= 16){
													if(pX[1] <= 22){
														if(pX[5] <= -56){
															return 1;
														} else {
															if(pX[5] <= -37){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											return 0;
										}
									} else {
										return 0;
									}
								} else {
									if(pX[6] <= -50){
										if(pX[5] <= 2){
											return 1;
										} else {
											if(pX[9] <= 160){
												return 0;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[9] <= 210){
											if(pX[8] <= 51){
												if(pX[0] <= 48){
													return 1;
												} else {
													if(pX[5] <= -31){
														if(pX[0] <= 57){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[8] <= 32){
															if(pX[8] <= 23){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[1] <= 39){
													if(pX[0] <= 48){
														if(pX[6] <= -46){
															if(pX[5] <= -26){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											}
										} else {
											return 1;
										}
									}
								}
							}
						}
					} else {
						if(pX[5] <= -102){
							return 0;
						} else {
							if(pX[8] <= 8){
								if(pX[6] <= -55){
									return 1;
								} else {
									return 0;
								}
							} else {
								return 1;
							}
						}
					}
				}
			} else {
				if(pX[8] <= 1){
					if(pX[7] <= -7){
						return 1;
					} else {
						return 0;
					}
				} else {
					if(pX[0] <= 106){
						if(pX[5] <= -51){
							return 1;
						} else {
							return 0;
						}
					} else {
						if(pX[2] <= 2){
							if(pX[5] <= -143){
								if(pX[9] <= 312){
									return 0;
								} else {
									return 1;
								}
							} else {
								return 1;
							}
						} else {
							if(pX[7] <= -30){
								if(pX[7] <= -32){
									return 1;
								} else {
									return 0;
								}
							} else {
								return 1;
							}
						}
					}
				}
			}
		}
	} else {
		if(pX[8] <= 27){
			if(pX[8] <= 11){
				if(pX[0] <= 118){
					if(pX[1] <= 10){
						if(pX[9] <= 244){
							if(pX[6] <= -5){
								if(pX[9] <= 79){
									if(pX[6] <= -16){
										return 1;
									} else {
										if(pX[9] <= 46){
											return 1;
										} else {
											return 0;
										}
									}
								} else {
									if(pX[7] <= 0){
										if(pX[0] <= 31){
											if(pX[0] <= 18){
												if(pX[9] <= 171){
													if(pX[5] <= -11){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											} else {
												if(pX[0] <= 21){
													if(pX[7] <= -4){
														return 0;
													} else {
														if(pX[6] <= -6){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													return 0;
												}
											}
										} else {
											if(pX[0] <= 38){
												if(pX[6] <= -17){
													if(pX[0] <= 35){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											} else {
												return 0;
											}
										}
									} else {
										if(pX[8] <= 7){
											return 0;
										} else {
											if(pX[1] <= 3){
												return 1;
											} else {
												if(pX[0] <= 17){
													return 1;
												} else {
													return 0;
												}
											}
										}
									}
								}
							} else {
								if(pX[0] <= 16){
									if(pX[0] <= 13){
										if(pX[1] <= 9){
											if(pX[7] <= -5){
												return 0;
											} else {
												return 1;
											}
										} else {
											if(pX[0] <= 11){
												return 1;
											} else {
												if(pX[9] <= 182){
													return 0;
												} else {
													if(pX[7] <= 0){
														return 1;
													} else {
														if(pX[6] <= -1){
															return 1;
														} else {
															return 0;
														}
													}
												}
											}
										}
									} else {
										if(pX[6] <= 4){
											return 0;
										} else {
											if(pX[7] <= 7){
												return 1;
											} else {
												if(pX[9] <= 144){
													return 1;
												} else {
													return 0;
												}
											}
										}
									}
								} else {
									if(pX[7] <= 9){
										if(pX[6] <= 24){
											if(pX[0] <= 21){
												if(pX[6] <= 11){
													if(pX[0] <= 20){
														if(pX[8] <= 8){
															return 0;
														} else {
															if(pX[7] <= 3){
																return 0;
															} else {
																if(pX[1] <= 8){
																	if(pX[6] <= 7){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[9] <= 112){
															if(pX[8] <= 6){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													}
												} else {
													return 0;
												}
											} else {
												if(pX[1] <= 8){
													if(pX[6] <= 19){
														if(pX[1] <= 7){
															if(pX[6] <= 5){
																if(pX[6] <= 0){
																	if(pX[9] <= 130){
																		return 0;
																	} else {
																		if(pX[7] <= -5){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[9] <= 168){
																	if(pX[9] <= 160){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[7] <= 1){
																		return 0;
																	} else {
																		if(pX[8] <= 2){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[1] <= 5){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													if(pX[0] <= 29){
														if(pX[0] <= 22){
															if(pX[7] <= -4){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[0] <= 23){
																if(pX[6] <= 16){
																	return 0;
																} else {
																	if(pX[9] <= 218){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[5] <= -3){
															return 0;
														} else {
															if(pX[7] <= 5){
																if(pX[5] <= 20){
																	if(pX[1] <= 9){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[6] <= 19){
																	if(pX[0] <= 35){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 1;
																}
															}
														}
													}
												}
											}
										} else {
											if(pX[6] <= 32){
												if(pX[9] <= 178){
													if(pX[5] <= -16){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[6] <= 30){
														if(pX[5] <= 41){
															if(pX[8] <= 8){
																if(pX[0] <= 29){
																	return 1;
																} else {
																	if(pX[1] <= 7){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											} else {
												if(pX[0] <= 45){
													if(pX[5] <= 41){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[9] <= 210){
														return 0;
													} else {
														if(pX[9] <= 215){
															return 1;
														} else {
															return 0;
														}
													}
												}
											}
										}
									} else {
										if(pX[1] <= 1){
											return 0;
										} else {
											if(pX[0] <= 27){
												if(pX[8] <= 3){
													if(pX[0] <= 23){
														return 1;
													} else {
														return 0;
													}
												} else {
													if(pX[6] <= 23){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												if(pX[6] <= 24){
													return 1;
												} else {
													if(pX[5] <= 2){
														return 0;
													} else {
														return 1;
													}
												}
											}
										}
									}
								}
							}
						} else {
							if(pX[9] <= 273){
								if(pX[6] <= 16){
									if(pX[5] <= 10){
										return 0;
									} else {
										return 1;
									}
								} else {
									if(pX[9] <= 253){
										if(pX[5] <= 46){
											if(pX[7] <= 0){
												return 1;
											} else {
												if(pX[8] <= 1){
													return 0;
												} else {
													return 1;
												}
											}
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								}
							} else {
								return 0;
							}
						}
					} else {
						if(pX[0] <= 23){
							if(pX[1] <= 18){
								if(pX[7] <= -12){
									if(pX[8] <= 7){
										if(pX[5] <= -2){
											return 1;
										} else {
											if(pX[0] <= 19){
												if(pX[5] <= 6){
													return 0;
												} else {
													return 1;
												}
											} else {
												if(pX[9] <= 154){
													return 1;
												} else {
													return 0;
												}
											}
										}
									} else {
										return 0;
									}
								} else {
									if(pX[9] <= 225){
										if(pX[6] <= 15){
											if(pX[0] <= 22){
												if(pX[0] <= 21){
													if(pX[7] <= 7){
														if(pX[8] <= 10){
															if(pX[6] <= -20){
																return 1;
															} else {
																if(pX[6] <= 11){
																	if(pX[0] <= 14){
																		if(pX[7] <= -6){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[8] <= 4){
																		if(pX[6] <= 12){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[1] <= 11){
																return 0;
															} else {
																if(pX[9] <= 82){
																	return 0;
																} else {
																	if(pX[7] <= -3){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														}
													} else {
														if(pX[1] <= 14){
															if(pX[9] <= 207){
																if(pX[5] <= 17){
																	if(pX[1] <= 12){
																		if(pX[5] <= -25){
																			return 1;
																		} else {
																			if(pX[5] <= -13){
																				if(pX[7] <= 10){
																					return 0;
																				} else {
																					if(pX[8] <= 6){
																						return 0;
																					} else {
																						if(pX[6] <= 5){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				}
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[9] <= 137){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[0] <= 20){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													}
												} else {
													if(pX[5] <= 2){
														if(pX[7] <= -5){
															if(pX[5] <= -5){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												}
											} else {
												if(pX[1] <= 11){
													if(pX[7] <= -6){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[7] <= -5){
														if(pX[9] <= 201){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												}
											}
										} else {
											if(pX[0] <= 17){
												return 1;
											} else {
												if(pX[0] <= 21){
													if(pX[7] <= 0){
														if(pX[5] <= 12){
															return 0;
														} else {
															if(pX[6] <= 19){
																return 1;
															} else {
																if(pX[6] <= 20){
																	return 0;
																} else {
																	return 1;
																}
															}
														}
													} else {
														if(pX[8] <= 5){
															return 0;
														} else {
															if(pX[8] <= 6){
																return 1;
															} else {
																if(pX[7] <= 6){
																	return 0;
																} else {
																	if(pX[1] <= 13){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													}
												} else {
													return 0;
												}
											}
										}
									} else {
										if(pX[9] <= 236){
											if(pX[5] <= -2){
												return 0;
											} else {
												if(pX[0] <= 14){
													if(pX[8] <= 4){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[5] <= -6){
												if(pX[6] <= -7){
													if(pX[9] <= 244){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											} else {
												if(pX[0] <= 19){
													if(pX[0] <= 13){
														if(pX[8] <= 4){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											}
										}
									}
								}
							} else {
								if(pX[5] <= -10){
									return 1;
								} else {
									if(pX[1] <= 20){
										if(pX[9] <= 72){
											return 1;
										} else {
											return 0;
										}
									} else {
										if(pX[6] <= 0){
											return 1;
										} else {
											if(pX[6] <= 19){
												return 0;
											} else {
												return 1;
											}
										}
									}
								}
							}
						} else {
							if(pX[7] <= -20){
								if(pX[6] <= 45){
									if(pX[5] <= 65){
										if(pX[9] <= 303){
											if(pX[5] <= 14){
												if(pX[6] <= 28){
													if(pX[0] <= 42){
														if(pX[6] <= -19){
															if(pX[7] <= -22){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												} else {
													if(pX[8] <= 2){
														return 1;
													} else {
														if(pX[0] <= 72){
															return 0;
														} else {
															return 1;
														}
													}
												}
											} else {
												if(pX[8] <= 7){
													if(pX[7] <= -36){
														return 1;
													} else {
														return 0;
													}
												} else {
													if(pX[9] <= 268){
														return 1;
													} else {
														return 0;
													}
												}
											}
										} else {
											if(pX[0] <= 43){
												return 1;
											} else {
												if(pX[7] <= -24){
													if(pX[6] <= 33){
														if(pX[8] <= 2){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												} else {
													return 0;
												}
											}
										}
									} else {
										return 1;
									}
								} else {
									if(pX[7] <= -67){
										return 1;
									} else {
										if(pX[9] <= 50){
											return 1;
										} else {
											if(pX[8] <= 9){
												if(pX[9] <= 179){
													if(pX[1] <= 29){
														return 1;
													} else {
														return 0;
													}
												} else {
													if(pX[6] <= 55){
														if(pX[7] <= -32){
															if(pX[9] <= 314){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												}
											} else {
												if(pX[5] <= -51){
													return 1;
												} else {
													if(pX[9] <= 143){
														return 1;
													} else {
														return 0;
													}
												}
											}
										}
									}
								}
							} else {
								if(pX[1] <= 49){
									if(pX[5] <= -34){
										if(pX[0] <= 103){
											if(pX[9] <= 65){
												return 1;
											} else {
												if(pX[6] <= 82){
													if(pX[7] <= -19){
														if(pX[6] <= 48){
															if(pX[8] <= 8){
																if(pX[2] <= 2){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														if(pX[9] <= 294){
															if(pX[5] <= -37){
																if(pX[1] <= 14){
																	if(pX[9] <= 259){
																		if(pX[9] <= 256){
																			if(pX[6] <= 32){
																				return 0;
																			} else {
																				if(pX[7] <= 9){
																					if(pX[9] <= 223){
																						if(pX[7] <= -6){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[1] <= 13){
																			if(pX[0] <= 40){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[9] <= 160){
																		if(pX[5] <= -67){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[8] <= 10){
																			if(pX[6] <= 38){
																				return 0;
																			} else {
																				if(pX[7] <= 17){
																					if(pX[6] <= 50){
																						if(pX[8] <= 0){
																							if(pX[6] <= 49){
																								return 0;
																							} else {
																								if(pX[5] <= -61){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[9] <= 265){
																						if(pX[6] <= 39){
																							return 1;
																						} else {
																							if(pX[0] <= 80){
																								return 0;
																							} else {
																								if(pX[9] <= 259){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					} else {
																						if(pX[2] <= 2){
																							if(pX[5] <= -52){
																								if(pX[5] <= -76){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[5] <= -69){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															} else {
																if(pX[6] <= -25){
																	if(pX[1] <= 26){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[1] <= 14){
																		if(pX[8] <= 5){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[2] <= 2){
																if(pX[0] <= 75){
																	if(pX[7] <= 16){
																		if(pX[0] <= 55){
																			if(pX[6] <= 26){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[7] <= 19){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[5] <= -56){
																	return 0;
																} else {
																	if(pX[1] <= 17){
																		return 1;
																	} else {
																		if(pX[1] <= 38){
																			if(pX[1] <= 20){
																				if(pX[0] <= 88){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[5] <= -35){
																					if(pX[5] <= -49){
																						if(pX[5] <= -52){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[9] <= 358){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															}
														}
													}
												} else {
													if(pX[9] <= 312){
														if(pX[6] <= 83){
															if(pX[9] <= 239){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[0] <= 101){
																return 0;
															} else {
																if(pX[8] <= 4){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													} else {
														return 1;
													}
												}
											}
										} else {
											if(pX[6] <= 49){
												if(pX[2] <= 2){
													if(pX[8] <= 3){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[9] <= 374){
													if(pX[0] <= 104){
														if(pX[1] <= 21){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[7] <= 17){
															return 0;
														} else {
															if(pX[7] <= 19){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													return 1;
												}
											}
										}
									} else {
										if(pX[2] <= 2){
											if(pX[5] <= 95){
												if(pX[9] <= 53){
													if(pX[6] <= -10){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[5] <= -15){
														if(pX[9] <= 173){
															if(pX[0] <= 59){
																if(pX[8] <= 1){
																	if(pX[7] <= 14){
																		return 0;
																	} else {
																		if(pX[0] <= 36){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[9] <= 236){
																return 0;
															} else {
																if(pX[9] <= 237){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[1] <= 30){
															if(pX[0] <= 25){
																if(pX[5] <= 35){
																	if(pX[6] <= 24){
																		if(pX[1] <= 14){
																			if(pX[0] <= 24){
																				if(pX[7] <= -6){
																					if(pX[7] <= -7){
																						return 0;
																					} else {
																						if(pX[5] <= 0){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[7] <= -4){
																					return 0;
																				} else {
																					if(pX[6] <= 1){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			}
																		} else {
																			if(pX[5] <= -10){
																				if(pX[5] <= -11){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[9] <= 137){
																					if(pX[9] <= 130){
																						return 0;
																					} else {
																						if(pX[7] <= 4){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		if(pX[9] <= 143){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[6] <= -9){
																	if(pX[9] <= 68){
																		return 1;
																	} else {
																		if(pX[7] <= 15){
																			if(pX[5] <= 41){
																				if(pX[5] <= -12){
																					if(pX[1] <= 19){
																						return 0;
																					} else {
																						if(pX[1] <= 20){
																							if(pX[0] <= 35){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[6] <= -12){
																						return 0;
																					} else {
																						if(pX[7] <= -10){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				}
																			} else {
																				if(pX[1] <= 11){
																					if(pX[7] <= 4){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					if(pX[9] <= 139){
																						if(pX[9] <= 121){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			if(pX[9] <= 123){
																				return 1;
																			} else {
																				if(pX[0] <= 29){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[0] <= 35){
																		if(pX[9] <= 228){
																			if(pX[8] <= 10){
																				if(pX[5] <= 23){
																					if(pX[0] <= 30){
																						if(pX[0] <= 26){
																							if(pX[6] <= 12){
																								if(pX[1] <= 15){
																									if(pX[5] <= 15){
																										if(pX[5] <= 7){
																											return 1;
																										} else {
																											return 0;
																										}
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[9] <= 89){
																							if(pX[9] <= 80){
																								return 0;
																							} else {
																								if(pX[1] <= 16){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							if(pX[6] <= 1){
																								if(pX[8] <= 5){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[9] <= 191){
																									return 0;
																								} else {
																									if(pX[8] <= 6){
																										return 0;
																									} else {
																										if(pX[8] <= 7){
																											return 1;
																										} else {
																											if(pX[9] <= 193){
																												return 1;
																											} else {
																												return 0;
																											}
																										}
																									}
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[6] <= -3){
																						return 1;
																					} else {
																						if(pX[8] <= 2){
																							if(pX[6] <= 19){
																								if(pX[6] <= 16){
																									return 0;
																								} else {
																									if(pX[7] <= 1){
																										return 0;
																									} else {
																										if(pX[8] <= 1){
																											if(pX[9] <= 136){
																												return 1;
																											} else {
																												return 0;
																											}
																										} else {
																											return 1;
																										}
																									}
																								}
																							} else {
																								if(pX[9] <= 191){
																									return 0;
																								} else {
																									if(pX[5] <= 36){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							}
																						} else {
																							if(pX[9] <= 177){
																								if(pX[9] <= 173){
																									if(pX[0] <= 32){
																										return 0;
																									} else {
																										if(pX[5] <= 29){
																											if(pX[7] <= 0){
																												return 0;
																											} else {
																												return 1;
																											}
																										} else {
																											if(pX[8] <= 5){
																												return 1;
																											} else {
																												return 0;
																											}
																										}
																									}
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			} else {
																				if(pX[0] <= 30){
																					if(pX[5] <= 28){
																						if(pX[7] <= 7){
																							return 0;
																						} else {
																							if(pX[1] <= 12){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[0] <= 34){
																				if(pX[9] <= 241){
																					if(pX[7] <= 6){
																						if(pX[9] <= 231){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[0] <= 27){
																						if(pX[1] <= 19){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				if(pX[8] <= 7){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		if(pX[7] <= 23){
																			if(pX[1] <= 13){
																				if(pX[0] <= 39){
																					return 0;
																				} else {
																					if(pX[9] <= 120){
																						return 1;
																					} else {
																						if(pX[5] <= 0){
																							if(pX[0] <= 44){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							if(pX[8] <= 10){
																								if(pX[7] <= 9){
																									if(pX[7] <= -11){
																										if(pX[0] <= 41){
																											return 0;
																										} else {
																											if(pX[0] <= 45){
																												return 1;
																											} else {
																												return 0;
																											}
																										}
																									} else {
																										if(pX[9] <= 268){
																											if(pX[8] <= 4){
																												return 0;
																											} else {
																												if(pX[9] <= 158){
																													if(pX[9] <= 151){
																														return 0;
																													} else {
																														return 1;
																													}
																												} else {
																													if(pX[0] <= 47){
																														if(pX[5] <= 28){
																															if(pX[5] <= 18){
																																return 0;
																															} else {
																																return 1;
																															}
																														} else {
																															return 0;
																														}
																													} else {
																														return 0;
																													}
																												}
																											}
																										} else {
																											if(pX[5] <= 36){
																												return 1;
																											} else {
																												return 0;
																											}
																										}
																									}
																								} else {
																									if(pX[8] <= 0){
																										return 1;
																									} else {
																										if(pX[9] <= 186){
																											return 0;
																										} else {
																											if(pX[0] <= 44){
																												return 0;
																											} else {
																												return 1;
																											}
																										}
																									}
																								}
																							} else {
																								if(pX[7] <= 10){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				}
																			} else {
																				if(pX[6] <= -7){
																					if(pX[5] <= 46){
																						if(pX[9] <= 182){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[6] <= 3){
																						if(pX[7] <= -2){
																							if(pX[0] <= 41){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[5] <= -14){
																							return 1;
																						} else {
																							if(pX[9] <= 295){
																								if(pX[0] <= 56){
																									if(pX[7] <= 15){
																										if(pX[6] <= 49){
																											return 0;
																										} else {
																											if(pX[1] <= 15){
																												if(pX[0] <= 50){
																													return 1;
																												} else {
																													return 0;
																												}
																											} else {
																												return 0;
																											}
																										}
																									} else {
																										if(pX[1] <= 15){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									if(pX[6] <= 38){
																										if(pX[8] <= 8){
																											if(pX[6] <= 32){
																												return 0;
																											} else {
																												if(pX[7] <= -4){
																													return 1;
																												} else {
																													return 0;
																												}
																											}
																										} else {
																											if(pX[7] <= 10){
																												return 1;
																											} else {
																												return 0;
																											}
																										}
																									} else {
																										if(pX[1] <= 23){
																											if(pX[1] <= 15){
																												if(pX[7] <= -7){
																													return 0;
																												} else {
																													if(pX[8] <= 3){
																														if(pX[9] <= 226){
																															return 1;
																														} else {
																															return 0;
																														}
																													} else {
																														return 0;
																													}
																												}
																											} else {
																												return 0;
																											}
																										} else {
																											if(pX[0] <= 64){
																												return 1;
																											} else {
																												if(pX[8] <= 8){
																													return 0;
																												} else {
																													if(pX[5] <= 61){
																														return 1;
																													} else {
																														return 0;
																													}
																												}
																											}
																										}
																									}
																								}
																							} else {
																								if(pX[7] <= -13){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[6] <= 69){
																				if(pX[5] <= 14){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															}
														} else {
															return 1;
														}
													}
												}
											} else {
												if(pX[8] <= 2){
													return 0;
												} else {
													return 1;
												}
											}
										} else {
											if(pX[8] <= 7){
												if(pX[0] <= 33){
													if(pX[9] <= 110){
														if(pX[6] <= -15){
															return 0;
														} else {
															if(pX[8] <= 3){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														return 0;
													}
												} else {
													if(pX[1] <= 13){
														return 1;
													} else {
														if(pX[0] <= 116){
															if(pX[9] <= 363){
																if(pX[5] <= 117){
																	if(pX[0] <= 93){
																		if(pX[0] <= 55){
																			return 0;
																		} else {
																			if(pX[1] <= 16){
																				if(pX[8] <= 2){
																					return 0;
																				} else {
																					if(pX[5] <= 60){
																						if(pX[0] <= 69){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				if(pX[1] <= 28){
																					if(pX[8] <= 1){
																						if(pX[6] <= 48){
																							if(pX[6] <= 47){
																								return 0;
																							} else {
																								if(pX[7] <= 1){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						if(pX[9] <= 312){
																							if(pX[1] <= 23){
																								if(pX[9] <= 249){
																									return 0;
																								} else {
																									if(pX[9] <= 250){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							if(pX[0] <= 60){
																								return 1;
																							} else {
																								if(pX[9] <= 316){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		if(pX[8] <= 4){
																			if(pX[1] <= 24){
																				if(pX[1] <= 23){
																					return 0;
																				} else {
																					if(pX[9] <= 244){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[8] <= 6){
																				if(pX[1] <= 26){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[5] <= -8){
																	if(pX[1] <= 35){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[6] <= 37){
																		if(pX[0] <= 57){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[0] <= 117){
																return 1;
															} else {
																return 0;
															}
														}
													}
												}
											} else {
												if(pX[1] <= 13){
													return 1;
												} else {
													if(pX[6] <= -20){
														if(pX[9] <= 118){
															return 1;
														} else {
															if(pX[6] <= -22){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														if(pX[9] <= 331){
															if(pX[5] <= 76){
																if(pX[0] <= 32){
																	if(pX[8] <= 9){
																		if(pX[1] <= 24){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[6] <= 37){
																		return 0;
																	} else {
																		if(pX[1] <= 17){
																			if(pX[7] <= 5){
																				if(pX[6] <= 41){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[5] <= 43){
																				return 0;
																			} else {
																				if(pX[5] <= 45){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																}
															} else {
																if(pX[0] <= 59){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[9] <= 338){
																return 1;
															} else {
																return 0;
															}
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[5] <= 28){
										if(pX[5] <= -42){
											if(pX[2] <= 3){
												return 1;
											} else {
												return 0;
											}
										} else {
											if(pX[8] <= 1){
												return 0;
											} else {
												if(pX[0] <= 81){
													return 0;
												} else {
													if(pX[2] <= 3){
														return 1;
													} else {
														return 0;
													}
												}
											}
										}
									} else {
										return 0;
									}
								}
							}
						}
					}
				} else {
					if(pX[9] <= 152){
						return 1;
					} else {
						if(pX[9] <= 183){
							if(pX[0] <= 179){
								return 0;
							} else {
								return 1;
							}
						} else {
							if(pX[1] <= 32){
								if(pX[0] <= 132){
									if(pX[2] <= 2){
										if(pX[8] <= 0){
											return 0;
										} else {
											if(pX[6] <= 81){
												if(pX[8] <= 4){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										}
									} else {
										return 0;
									}
								} else {
									if(pX[8] <= 6){
										return 0;
									} else {
										if(pX[5] <= -39){
											return 1;
										} else {
											return 0;
										}
									}
								}
							} else {
								if(pX[0] <= 132){
									if(pX[5] <= 107){
										if(pX[0] <= 126){
											if(pX[6] <= 27){
												if(pX[7] <= 8){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											return 0;
										}
									} else {
										return 0;
									}
								} else {
									return 1;
								}
							}
						}
					}
				}
			} else {
				if(pX[0] <= 51){
					if(pX[9] <= 193){
						if(pX[1] <= 9){
							if(pX[6] <= 15){
								if(pX[7] <= 6){
									if(pX[7] <= -12){
										if(pX[0] <= 26){
											if(pX[8] <= 26){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									} else {
										if(pX[0] <= 11){
											return 1;
										} else {
											if(pX[6] <= -20){
												if(pX[5] <= -21){
													return 0;
												} else {
													return 1;
												}
											} else {
												if(pX[8] <= 25){
													if(pX[9] <= 192){
														if(pX[6] <= 5){
															if(pX[9] <= 187){
																if(pX[1] <= 5){
																	return 1;
																} else {
																	if(pX[5] <= 8){
																		if(pX[5] <= -4){
																			return 0;
																		} else {
																			if(pX[5] <= 0){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[9] <= 137){
																			if(pX[5] <= 15){
																				return 1;
																			} else {
																				if(pX[1] <= 8){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																if(pX[8] <= 15){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[7] <= -3){
																return 0;
															} else {
																if(pX[1] <= 8){
																	if(pX[6] <= 14){
																		if(pX[8] <= 16){
																			if(pX[9] <= 100){
																				return 1;
																			} else {
																				if(pX[7] <= -1){
																					return 1;
																				} else {
																					if(pX[1] <= 6){
																						return 0;
																					} else {
																						if(pX[0] <= 19){
																							if(pX[8] <= 13){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[5] <= 19){
																				if(pX[9] <= 118){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															}
														}
													} else {
														return 1;
													}
												} else {
													if(pX[9] <= 143){
														return 1;
													} else {
														return 0;
													}
												}
											}
										}
									}
								} else {
									if(pX[8] <= 17){
										if(pX[0] <= 20){
											if(pX[7] <= 8){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									} else {
										if(pX[5] <= -11){
											return 1;
										} else {
											if(pX[7] <= 7){
												return 1;
											} else {
												return 0;
											}
										}
									}
								}
							} else {
								if(pX[1] <= 8){
									if(pX[8] <= 18){
										if(pX[9] <= 168){
											return 1;
										} else {
											if(pX[5] <= 25){
												if(pX[6] <= 20){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[5] <= 23){
											if(pX[0] <= 34){
												if(pX[5] <= -11){
													return 1;
												} else {
													if(pX[7] <= -2){
														if(pX[0] <= 18){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											} else {
												return 1;
											}
										} else {
											return 0;
										}
									}
								} else {
									if(pX[5] <= 1){
										return 0;
									} else {
										if(pX[9] <= 101){
											return 1;
										} else {
											if(pX[0] <= 24){
												if(pX[9] <= 180){
													return 1;
												} else {
													return 0;
												}
											} else {
												if(pX[8] <= 16){
													return 0;
												} else {
													return 1;
												}
											}
										}
									}
								}
							}
						} else {
							if(pX[7] <= -17){
								if(pX[2] <= 2){
									if(pX[0] <= 36){
										if(pX[8] <= 22){
											if(pX[6] <= 3){
												return 1;
											} else {
												if(pX[1] <= 23){
													return 0;
												} else {
													return 1;
												}
											}
										} else {
											return 0;
										}
									} else {
										return 0;
									}
								} else {
									if(pX[9] <= 95){
										return 1;
									} else {
										return 0;
									}
								}
							} else {
								if(pX[9] <= 154){
									if(pX[0] <= 46){
										if(pX[6] <= -31){
											return 1;
										} else {
											if(pX[1] <= 20){
												if(pX[6] <= -23){
													if(pX[1] <= 19){
														if(pX[8] <= 20){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												} else {
													if(pX[9] <= 78){
														if(pX[9] <= 42){
															if(pX[1] <= 11){
																return 1;
															} else {
																return 0;
															}
														} else {
															if(pX[9] <= 62){
																if(pX[1] <= 12){
																	return 0;
																} else {
																	if(pX[1] <= 13){
																		return 1;
																	} else {
																		if(pX[8] <= 20){
																			return 0;
																		} else {
																			if(pX[7] <= 0){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[6] <= -20){
															if(pX[9] <= 147){
																if(pX[8] <= 18){
																	if(pX[7] <= -8){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[9] <= 140){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 1;
															}
														} else {
															if(pX[6] <= -15){
																return 0;
															} else {
																if(pX[0] <= 22){
																	if(pX[5] <= 17){
																		if(pX[7] <= 12){
																			if(pX[5] <= -9){
																				return 0;
																			} else {
																				if(pX[7] <= -14){
																					return 1;
																				} else {
																					if(pX[1] <= 17){
																						if(pX[5] <= -3){
																							if(pX[8] <= 16){
																								return 0;
																							} else {
																								if(pX[9] <= 99){
																									return 1;
																								} else {
																									if(pX[8] <= 22){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						} else {
																							if(pX[7] <= 4){
																								return 0;
																							} else {
																								if(pX[1] <= 11){
																									if(pX[6] <= 2){
																										return 0;
																									} else {
																										if(pX[0] <= 15){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								} else {
																									if(pX[1] <= 14){
																										if(pX[9] <= 134){
																											if(pX[9] <= 118){
																												if(pX[6] <= 5){
																													return 0;
																												} else {
																													return 1;
																												}
																											} else {
																												return 1;
																											}
																										} else {
																											if(pX[6] <= 11){
																												return 0;
																											} else {
																												return 1;
																											}
																										}
																									} else {
																										return 0;
																									}
																								}
																							}
																						}
																					} else {
																						return 1;
																					}
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[7] <= -1){
																			if(pX[9] <= 94){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[5] <= 21){
																				if(pX[9] <= 112){
																					return 1;
																				} else {
																					if(pX[5] <= 18){
																						return 1;
																					} else {
																						if(pX[9] <= 142){
																							return 0;
																						} else {
																							if(pX[0] <= 20){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					}
																				}
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	if(pX[0] <= 44){
																		if(pX[7] <= -12){
																			return 0;
																		} else {
																			if(pX[1] <= 13){
																				if(pX[8] <= 21){
																					if(pX[0] <= 26){
																						if(pX[7] <= -7){
																							if(pX[8] <= 13){
																								if(pX[6] <= 19){
																									return 0;
																								} else {
																									return 1;
																								}
																							} else {
																								return 1;
																							}
																						} else {
																							if(pX[9] <= 151){
																								return 0;
																							} else {
																								if(pX[1] <= 11){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					} else {
																						if(pX[5] <= -13){
																							if(pX[9] <= 119){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							if(pX[6] <= 29){
																								return 0;
																							} else {
																								if(pX[9] <= 142){
																									return 1;
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[6] <= 21){
																						if(pX[7] <= 7){
																							return 0;
																						} else {
																							if(pX[1] <= 11){
																								return 1;
																							} else {
																								if(pX[6] <= 13){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						}
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				if(pX[5] <= 16){
																					if(pX[5] <= 0){
																						return 0;
																					} else {
																						if(pX[9] <= 126){
																							if(pX[9] <= 98){
																								if(pX[6] <= 18){
																									return 0;
																								} else {
																									if(pX[7] <= 8){
																										return 0;
																									} else {
																										if(pX[0] <= 40){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							if(pX[8] <= 18){
																								if(pX[1] <= 14){
																									return 1;
																								} else {
																									if(pX[5] <= 7){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								if(pX[7] <= -7){
																									if(pX[8] <= 20){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[9] <= 148){
																						return 0;
																					} else {
																						if(pX[0] <= 31){
																							if(pX[5] <= 26){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[5] <= -43){
													return 1;
												} else {
													if(pX[6] <= -14){
														if(pX[9] <= 127){
															if(pX[7] <= -3){
																return 0;
															} else {
																if(pX[1] <= 23){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												}
											}
										}
									} else {
										if(pX[9] <= 107){
											if(pX[6] <= 33){
												if(pX[8] <= 14){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 0;
											}
										} else {
											if(pX[5] <= 28){
												if(pX[0] <= 49){
													if(pX[6] <= 37){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 0;
												}
											} else {
												return 0;
											}
										}
									}
								} else {
									if(pX[8] <= 26){
										if(pX[6] <= -29){
											if(pX[1] <= 22){
												return 0;
											} else {
												return 1;
											}
										} else {
											if(pX[0] <= 18){
												if(pX[6] <= 6){
													if(pX[7] <= 0){
														if(pX[8] <= 15){
															return 0;
														} else {
															if(pX[9] <= 170){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														if(pX[1] <= 13){
															return 0;
														} else {
															if(pX[0] <= 17){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													if(pX[9] <= 159){
														return 0;
													} else {
														if(pX[0] <= 13){
															return 0;
														} else {
															if(pX[9] <= 183){
																return 1;
															} else {
																return 0;
															}
														}
													}
												}
											} else {
												if(pX[6] <= -22){
													if(pX[6] <= -23){
														if(pX[8] <= 12){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												} else {
													if(pX[7] <= 1){
														if(pX[1] <= 11){
															if(pX[6] <= 24){
																if(pX[8] <= 17){
																	return 0;
																} else {
																	if(pX[1] <= 10){
																		if(pX[0] <= 23){
																			return 0;
																		} else {
																			if(pX[6] <= 10){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		if(pX[0] <= 23){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[6] <= 38){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[8] <= 15){
																if(pX[9] <= 172){
																	return 0;
																} else {
																	if(pX[5] <= 24){
																		if(pX[9] <= 174){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[9] <= 183){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																if(pX[6] <= -7){
																	if(pX[9] <= 178){
																		return 0;
																	} else {
																		if(pX[8] <= 16){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[5] <= 41){
															if(pX[5] <= -16){
																if(pX[8] <= 19){
																	return 0;
																} else {
																	if(pX[6] <= 4){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[0] <= 42){
																	return 0;
																} else {
																	if(pX[6] <= 32){
																		if(pX[6] <= 30){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															if(pX[5] <= 45){
																return 1;
															} else {
																return 0;
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[6] <= 23){
											if(pX[1] <= 13){
												if(pX[6] <= -1){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 0;
											}
										} else {
											if(pX[6] <= 24){
												return 1;
											} else {
												if(pX[0] <= 37){
													return 0;
												} else {
													return 1;
												}
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[7] <= 21){
							if(pX[7] <= 15){
								if(pX[1] <= 8){
									if(pX[6] <= 16){
										if(pX[0] <= 23){
											if(pX[5] <= 20){
												if(pX[5] <= 5){
													if(pX[7] <= -12){
														return 1;
													} else {
														if(pX[0] <= 16){
															return 1;
														} else {
															if(pX[6] <= -15){
																return 1;
															} else {
																if(pX[8] <= 23){
																	return 0;
																} else {
																	if(pX[6] <= 1){
																		return 0;
																	} else {
																		if(pX[0] <= 18){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															}
														}
													}
												} else {
													return 1;
												}
											} else {
												return 0;
											}
										} else {
											if(pX[0] <= 44){
												if(pX[5] <= 12){
													return 1;
												} else {
													if(pX[1] <= 6){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												return 0;
											}
										}
									} else {
										if(pX[5] <= 31){
											return 1;
										} else {
											if(pX[1] <= 7){
												if(pX[6] <= 21){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										}
									}
								} else {
									if(pX[9] <= 255){
										if(pX[5] <= 55){
											if(pX[2] <= 2){
												if(pX[1] <= 14){
													if(pX[7] <= 11){
														if(pX[5] <= -10){
															if(pX[5] <= -19){
																if(pX[5] <= -20){
																	if(pX[7] <= 1){
																		if(pX[8] <= 21){
																			if(pX[9] <= 221){
																				return 0;
																			} else {
																				if(pX[6] <= -7){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[8] <= 24){
																			return 0;
																		} else {
																			if(pX[5] <= -22){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[0] <= 32){
																	if(pX[5] <= -14){
																		if(pX[6] <= 17){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[6] <= 24){
																if(pX[9] <= 201){
																	if(pX[9] <= 197){
																		if(pX[9] <= 195){
																			if(pX[0] <= 21){
																				return 1;
																			} else {
																				if(pX[7] <= -2){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			if(pX[9] <= 196){
																				return 0;
																			} else {
																				if(pX[1] <= 12){
																					if(pX[1] <= 10){
																						if(pX[8] <= 24){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			}
																		}
																	} else {
																		if(pX[6] <= 17){
																			if(pX[0] <= 14){
																				if(pX[5] <= 6){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[6] <= 12){
																					if(pX[9] <= 199){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[9] <= 211){
																		if(pX[0] <= 16){
																			return 1;
																		} else {
																			if(pX[9] <= 206){
																				return 0;
																			} else {
																				if(pX[0] <= 47){
																					if(pX[8] <= 14){
																						return 0;
																					} else {
																						if(pX[5] <= -8){
																							return 1;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					return 1;
																				}
																			}
																		}
																	} else {
																		if(pX[9] <= 212){
																			if(pX[5] <= 27){
																				if(pX[7] <= -10){
																					if(pX[8] <= 21){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[0] <= 43){
																				if(pX[8] <= 13){
																					if(pX[5] <= 14){
																						if(pX[0] <= 21){
																							if(pX[0] <= 14){
																								return 1;
																							} else {
																								if(pX[5] <= 3){
																									if(pX[9] <= 228){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							return 0;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[5] <= 16){
																						if(pX[9] <= 228){
																							if(pX[5] <= 13){
																								if(pX[7] <= 8){
																									if(pX[9] <= 220){
																										if(pX[5] <= 0){
																											if(pX[1] <= 10){
																												return 0;
																											} else {
																												return 1;
																											}
																										} else {
																											return 0;
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									if(pX[0] <= 19){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								if(pX[1] <= 11){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							if(pX[1] <= 9){
																								if(pX[6] <= 6){
																									return 1;
																								} else {
																									if(pX[5] <= -1){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								if(pX[6] <= 19){
																									if(pX[1] <= 13){
																										if(pX[5] <= -1){
																											if(pX[9] <= 247){
																												if(pX[6] <= 9){
																													return 0;
																												} else {
																													return 1;
																												}
																											} else {
																												return 0;
																											}
																										} else {
																											return 0;
																										}
																									} else {
																										if(pX[8] <= 20){
																											return 0;
																										} else {
																											return 1;
																										}
																									}
																								} else {
																									return 1;
																								}
																							}
																						}
																					} else {
																						if(pX[8] <= 18){
																							if(pX[6] <= 16){
																								if(pX[9] <= 214){
																									return 1;
																								} else {
																									if(pX[5] <= 22){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								return 1;
																							}
																						} else {
																							if(pX[0] <= 14){
																								return 1;
																							} else {
																								if(pX[5] <= 22){
																									if(pX[5] <= 19){
																										if(pX[1] <= 11){
																											return 0;
																										} else {
																											if(pX[9] <= 221){
																												return 0;
																											} else {
																												return 1;
																											}
																										}
																									} else {
																										return 1;
																									}
																								} else {
																									if(pX[9] <= 241){
																										return 0;
																									} else {
																										if(pX[8] <= 23){
																											if(pX[8] <= 22){
																												return 1;
																											} else {
																												return 0;
																											}
																										} else {
																											return 1;
																										}
																									}
																								}
																							}
																						}
																					}
																				}
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															} else {
																if(pX[9] <= 242){
																	if(pX[9] <= 222){
																		if(pX[5] <= 13){
																			return 1;
																		} else {
																			if(pX[5] <= 21){
																				return 0;
																			} else {
																				if(pX[0] <= 35){
																					return 0;
																				} else {
																					return 1;
																				}
																			}
																		}
																	} else {
																		if(pX[6] <= 30){
																			if(pX[0] <= 31){
																				return 1;
																			} else {
																				if(pX[5] <= 16){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[6] <= 41){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[7] <= 14){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													if(pX[0] <= 23){
														if(pX[9] <= 240){
															if(pX[6] <= -22){
																return 1;
															} else {
																if(pX[8] <= 16){
																	if(pX[7] <= -6){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[7] <= -15){
																		return 1;
																	} else {
																		if(pX[1] <= 16){
																			return 0;
																		} else {
																			if(pX[6] <= 7){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[6] <= 20){
															if(pX[7] <= 13){
																if(pX[6] <= -34){
																	if(pX[5] <= -39){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[8] <= 22){
																		if(pX[8] <= 13){
																			if(pX[0] <= 28){
																				if(pX[5] <= 12){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[5] <= -21){
																			if(pX[6] <= -20){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[1] <= 22){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															} else {
																if(pX[1] <= 17){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[8] <= 25){
																if(pX[5] <= 10){
																	if(pX[1] <= 15){
																		return 1;
																	} else {
																		if(pX[0] <= 41){
																			return 0;
																		} else {
																			if(pX[6] <= 31){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[1] <= 15){
																		if(pX[5] <= 22){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[5] <= 39){
																			return 0;
																		} else {
																			if(pX[5] <= 47){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															} else {
																if(pX[6] <= 29){
																	if(pX[1] <= 17){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 1;
																}
															}
														}
													}
												}
											} else {
												if(pX[9] <= 220){
													if(pX[9] <= 217){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											}
										} else {
											if(pX[1] <= 17){
												return 1;
											} else {
												return 0;
											}
										}
									} else {
										if(pX[0] <= 47){
											if(pX[7] <= -6){
												if(pX[8] <= 22){
													if(pX[9] <= 281){
														return 1;
													} else {
														if(pX[0] <= 42){
															return 0;
														} else {
															return 1;
														}
													}
												} else {
													if(pX[6] <= 34){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												if(pX[7] <= 11){
													if(pX[9] <= 276){
														if(pX[0] <= 34){
															if(pX[1] <= 10){
																return 1;
															} else {
																if(pX[8] <= 21){
																	if(pX[1] <= 13){
																		if(pX[6] <= -13){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[1] <= 12){
																		return 0;
																	} else {
																		if(pX[8] <= 25){
																			if(pX[0] <= 24){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															}
														} else {
															if(pX[6] <= 42){
																if(pX[6] <= 28){
																	if(pX[0] <= 40){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														}
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[1] <= 24){
												return 0;
											} else {
												return 1;
											}
										}
									}
								}
							} else {
								return 0;
							}
						} else {
							if(pX[6] <= 33){
								return 1;
							} else {
								return 0;
							}
						}
					}
				} else {
					if(pX[0] <= 101){
						if(pX[9] <= 275){
							if(pX[6] <= 58){
								if(pX[9] <= 157){
									if(pX[5] <= -41){
										if(pX[2] <= 2){
											return 0;
										} else {
											return 1;
										}
									} else {
										if(pX[5] <= 5){
											return 1;
										} else {
											if(pX[0] <= 54){
												if(pX[8] <= 21){
													return 0;
												} else {
													return 1;
												}
											} else {
												if(pX[6] <= 0){
													if(pX[0] <= 60){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										}
									}
								} else {
									if(pX[9] <= 211){
										if(pX[1] <= 17){
											if(pX[2] <= 2){
												if(pX[7] <= -1){
													if(pX[7] <= -9){
														return 1;
													} else {
														if(pX[1] <= 11){
															return 1;
														} else {
															if(pX[9] <= 169){
																return 0;
															} else {
																return 1;
															}
														}
													}
												} else {
													return 0;
												}
											} else {
												if(pX[9] <= 193){
													return 1;
												} else {
													if(pX[7] <= -3){
														return 1;
													} else {
														return 0;
													}
												}
											}
										} else {
											if(pX[8] <= 26){
												return 0;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[9] <= 271){
											if(pX[8] <= 14){
												return 0;
											} else {
												if(pX[2] <= 2){
													if(pX[8] <= 25){
														if(pX[0] <= 85){
															if(pX[7] <= 11){
																return 1;
															} else {
																if(pX[7] <= 13){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												} else {
													if(pX[5] <= 15){
														if(pX[1] <= 35){
															if(pX[9] <= 215){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												}
											}
										} else {
											return 0;
										}
									}
								}
							} else {
								if(pX[6] <= 65){
									if(pX[5] <= 59){
										return 0;
									} else {
										if(pX[9] <= 146){
											return 0;
										} else {
											return 1;
										}
									}
								} else {
									if(pX[6] <= 66){
										return 1;
									} else {
										if(pX[1] <= 13){
											return 1;
										} else {
											if(pX[6] <= 68){
												if(pX[0] <= 71){
													return 1;
												} else {
													return 0;
												}
											} else {
												if(pX[1] <= 58){
													if(pX[8] <= 26){
														if(pX[7] <= 10){
															return 0;
														} else {
															if(pX[6] <= 80){
																if(pX[9] <= 127){
																	return 1;
																} else {
																	if(pX[7] <= 17){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[1] <= 31){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													return 1;
												}
											}
										}
									}
								}
							}
						} else {
							if(pX[8] <= 16){
								if(pX[9] <= 284){
									return 1;
								} else {
									if(pX[2] <= 2){
										return 0;
									} else {
										if(pX[6] <= 65){
											if(pX[6] <= 47){
												return 1;
											} else {
												if(pX[5] <= 6){
													if(pX[1] <= 15){
														return 1;
													} else {
														if(pX[7] <= 33){
															if(pX[1] <= 41){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 1;
														}
													}
												} else {
													return 1;
												}
											}
										} else {
											return 0;
										}
									}
								}
							} else {
								if(pX[9] <= 285){
									if(pX[6] <= 55){
										if(pX[1] <= 38){
											return 1;
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								} else {
									return 1;
								}
							}
						}
					} else {
						if(pX[7] <= -50){
							if(pX[0] <= 122){
								return 0;
							} else {
								return 1;
							}
						} else {
							if(pX[1] <= 43){
								if(pX[6] <= 43){
									if(pX[0] <= 137){
										return 1;
									} else {
										return 0;
									}
								} else {
									if(pX[0] <= 112){
										if(pX[5] <= -114){
											return 0;
										} else {
											if(pX[6] <= 80){
												return 1;
											} else {
												if(pX[6] <= 81){
													return 0;
												} else {
													if(pX[0] <= 106){
														return 1;
													} else {
														return 0;
													}
												}
											}
										}
									} else {
										return 1;
									}
								}
							} else {
								return 1;
							}
						}
					}
				}
			}
		} else {
			if(pX[6] <= 23){
				if(pX[0] <= 30){
					if(pX[1] <= 9){
						if(pX[1] <= 7){
							if(pX[7] <= 6){
								if(pX[0] <= 15){
									return 1;
								} else {
									if(pX[0] <= 24){
										if(pX[6] <= -17){
											return 1;
										} else {
											if(pX[0] <= 17){
												if(pX[1] <= 6){
													return 1;
												} else {
													if(pX[5] <= -4){
														return 1;
													} else {
														if(pX[8] <= 74){
															if(pX[8] <= 36){
																if(pX[9] <= 128){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												}
											} else {
												if(pX[8] <= 66){
													if(pX[7] <= 5){
														if(pX[6] <= 18){
															if(pX[1] <= 2){
																return 0;
															} else {
																if(pX[5] <= 24){
																	if(pX[7] <= -6){
																		return 1;
																	} else {
																		if(pX[7] <= 3){
																			if(pX[6] <= 4){
																				if(pX[9] <= 220){
																					if(pX[5] <= -27){
																						return 1;
																					} else {
																						if(pX[0] <= 19){
																							if(pX[9] <= 175){
																								if(pX[5] <= -3){
																									return 1;
																								} else {
																									return 0;
																								}
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[9] <= 227){
																						return 1;
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				if(pX[0] <= 20){
																					return 0;
																				} else {
																					if(pX[6] <= 13){
																						if(pX[6] <= 12){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				}
																			}
																		} else {
																			if(pX[1] <= 5){
																				return 1;
																			} else {
																				if(pX[7] <= 4){
																					if(pX[5] <= 9){
																						if(pX[6] <= 6){
																							return 0;
																						} else {
																							return 1;
																						}
																					} else {
																						return 0;
																					}
																				} else {
																					if(pX[6] <= 8){
																						return 0;
																					} else {
																						if(pX[5] <= 8){
																							if(pX[9] <= 169){
																								return 1;
																							} else {
																								return 0;
																							}
																						} else {
																							return 0;
																						}
																					}
																				}
																			}
																		}
																	}
																} else {
																	return 1;
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[0] <= 21){
															if(pX[6] <= 10){
																if(pX[5] <= -19){
																	if(pX[9] <= 150){
																		if(pX[6] <= -12){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[6] <= 7){
																		return 0;
																	} else {
																		if(pX[0] <= 20){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													}
												} else {
													if(pX[7] <= -3){
														if(pX[0] <= 18){
															return 1;
														} else {
															if(pX[5] <= 0){
																if(pX[7] <= -6){
																	if(pX[0] <= 22){
																		return 1;
																	} else {
																		if(pX[7] <= -15){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[9] <= 70){
																		if(pX[5] <= -21){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																if(pX[8] <= 72){
																	if(pX[6] <= 12){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[5] <= -2){
															if(pX[9] <= 168){
																if(pX[7] <= -1){
																	if(pX[9] <= 127){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[8] <= 78){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 1;
															}
														} else {
															if(pX[1] <= 6){
																if(pX[8] <= 76){
																	if(pX[9] <= 192){
																		return 1;
																	} else {
																		if(pX[0] <= 22){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																} else {
																	if(pX[8] <= 87){
																		if(pX[6] <= 8){
																			return 1;
																		} else {
																			if(pX[0] <= 20){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	} else {
																		return 0;
																	}
																}
															} else {
																return 0;
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[5] <= -27){
											return 1;
										} else {
											if(pX[7] <= 3){
												if(pX[8] <= 40){
													return 0;
												} else {
													if(pX[7] <= -8){
														return 0;
													} else {
														if(pX[5] <= -21){
															return 0;
														} else {
															if(pX[0] <= 26){
																if(pX[5] <= 8){
																	return 1;
																} else {
																	if(pX[7] <= -3){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[5] <= 8){
																	if(pX[8] <= 52){
																		return 0;
																	} else {
																		if(pX[0] <= 28){
																			return 1;
																		} else {
																			if(pX[6] <= -21){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	return 1;
																}
															}
														}
													}
												}
											} else {
												if(pX[9] <= 87){
													return 0;
												} else {
													if(pX[8] <= 39){
														if(pX[9] <= 139){
															return 0;
														} else {
															return 1;
														}
													} else {
														return 1;
													}
												}
											}
										}
									}
								}
							} else {
								if(pX[8] <= 46){
									return 1;
								} else {
									if(pX[8] <= 54){
										if(pX[9] <= 186){
											return 0;
										} else {
											return 1;
										}
									} else {
										if(pX[1] <= 0){
											if(pX[9] <= 223){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									}
								}
							}
						} else {
							if(pX[5] <= -10){
								if(pX[6] <= -2){
									if(pX[8] <= 47){
										if(pX[0] <= 12){
											return 1;
										} else {
											if(pX[5] <= -21){
												if(pX[8] <= 35){
													return 0;
												} else {
													if(pX[8] <= 38){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												return 0;
											}
										}
									} else {
										if(pX[0] <= 13){
											if(pX[6] <= -5){
												if(pX[9] <= 180){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 0;
											}
										} else {
											if(pX[9] <= 50){
												if(pX[5] <= -29){
													return 0;
												} else {
													return 1;
												}
											} else {
												if(pX[8] <= 82){
													if(pX[7] <= 4){
														if(pX[0] <= 26){
															if(pX[5] <= -23){
																return 0;
															} else {
																if(pX[1] <= 8){
																	return 1;
																} else {
																	if(pX[7] <= 0){
																		return 1;
																	} else {
																		if(pX[9] <= 166){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															}
														} else {
															if(pX[8] <= 62){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										}
									}
								} else {
									if(pX[5] <= -36){
										return 0;
									} else {
										if(pX[9] <= 118){
											if(pX[6] <= 12){
												return 1;
											} else {
												if(pX[5] <= -14){
													return 1;
												} else {
													return 0;
												}
											}
										} else {
											return 1;
										}
									}
								}
							} else {
								if(pX[9] <= 90){
									if(pX[1] <= 8){
										if(pX[9] <= 82){
											return 1;
										} else {
											return 0;
										}
									} else {
										if(pX[0] <= 15){
											return 0;
										} else {
											if(pX[8] <= 54){
												if(pX[5] <= 14){
													if(pX[8] <= 31){
														return 0;
													} else {
														if(pX[8] <= 50){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													return 0;
												}
											} else {
												if(pX[7] <= -8){
													return 0;
												} else {
													return 1;
												}
											}
										}
									}
								} else {
									if(pX[9] <= 159){
										if(pX[9] <= 151){
											if(pX[5] <= 1){
												if(pX[6] <= 7){
													return 1;
												} else {
													if(pX[1] <= 8){
														return 0;
													} else {
														if(pX[5] <= -3){
															return 0;
														} else {
															if(pX[0] <= 18){
																return 1;
															} else {
																return 0;
															}
														}
													}
												}
											} else {
												if(pX[7] <= -6){
													if(pX[8] <= 51){
														return 0;
													} else {
														return 1;
													}
												} else {
													if(pX[8] <= 82){
														if(pX[8] <= 35){
															if(pX[1] <= 8){
																if(pX[5] <= 8){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																if(pX[6] <= 16){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															if(pX[7] <= -5){
																if(pX[9] <= 110){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 1;
															}
														}
													} else {
														return 0;
													}
												}
											}
										} else {
											if(pX[0] <= 24){
												return 0;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[8] <= 31){
											return 0;
										} else {
											if(pX[9] <= 179){
												return 1;
											} else {
												if(pX[9] <= 181){
													return 0;
												} else {
													if(pX[0] <= 29){
														if(pX[7] <= -9){
															if(pX[9] <= 216){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[0] <= 18){
																return 1;
															} else {
																if(pX[7] <= 3){
																	if(pX[6] <= 20){
																		if(pX[0] <= 19){
																			if(pX[5] <= 22){
																				return 1;
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														}
													} else {
														if(pX[6] <= 22){
															return 0;
														} else {
															return 1;
														}
													}
												}
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[1] <= 16){
							if(pX[7] <= -12){
								if(pX[1] <= 14){
									if(pX[0] <= 24){
										return 1;
									} else {
										if(pX[5] <= 0){
											if(pX[9] <= 184){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									}
								} else {
									if(pX[7] <= -16){
										return 1;
									} else {
										if(pX[8] <= 48){
											if(pX[9] <= 194){
												return 1;
											} else {
												if(pX[7] <= -13){
													return 0;
												} else {
													if(pX[9] <= 221){
														return 0;
													} else {
														return 1;
													}
												}
											}
										} else {
											return 0;
										}
									}
								}
							} else {
								if(pX[0] <= 22){
									if(pX[9] <= 219){
										if(pX[7] <= 17){
											if(pX[5] <= 25){
												if(pX[6] <= -18){
													if(pX[0] <= 19){
														return 1;
													} else {
														if(pX[6] <= -21){
															return 1;
														} else {
															if(pX[7] <= -1){
																return 0;
															} else {
																return 1;
															}
														}
													}
												} else {
													if(pX[7] <= -11){
														if(pX[0] <= 18){
															if(pX[6] <= -15){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[0] <= 21){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														if(pX[1] <= 12){
															if(pX[0] <= 11){
																return 1;
															} else {
																if(pX[1] <= 10){
																	if(pX[8] <= 69){
																		if(pX[9] <= 69){
																			return 0;
																		} else {
																			if(pX[0] <= 20){
																				if(pX[5] <= -1){
																					if(pX[9] <= 117){
																						if(pX[7] <= -8){
																							return 0;
																						} else {
																							if(pX[8] <= 54){
																								if(pX[8] <= 36){
																									if(pX[6] <= 11){
																										return 1;
																									} else {
																										return 0;
																									}
																								} else {
																									return 1;
																								}
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						if(pX[6] <= -2){
																							return 0;
																						} else {
																							if(pX[7] <= -10){
																								return 1;
																							} else {
																								if(pX[8] <= 37){
																									if(pX[6] <= 3){
																										if(pX[8] <= 32){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										return 1;
																									}
																								} else {
																									if(pX[8] <= 57){
																										return 0;
																									} else {
																										if(pX[8] <= 62){
																											return 1;
																										} else {
																											if(pX[9] <= 161){
																												return 0;
																											} else {
																												if(pX[9] <= 169){
																													return 1;
																												} else {
																													if(pX[6] <= 4){
																														return 0;
																													} else {
																														if(pX[9] <= 176){
																															return 0;
																														} else {
																															return 1;
																														}
																													}
																												}
																											}
																										}
																									}
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[8] <= 65){
																						if(pX[9] <= 79){
																							return 1;
																						} else {
																							if(pX[7] <= -3){
																								if(pX[6] <= -8){
																									return 1;
																								} else {
																									if(pX[6] <= 15){
																										if(pX[8] <= 53){
																											return 0;
																										} else {
																											if(pX[9] <= 212){
																												return 0;
																											} else {
																												return 1;
																											}
																										}
																									} else {
																										return 1;
																									}
																								}
																							} else {
																								if(pX[7] <= 10){
																									return 0;
																								} else {
																									if(pX[9] <= 186){
																										return 0;
																									} else {
																										if(pX[9] <= 194){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								}
																							}
																						}
																					} else {
																						return 1;
																					}
																				}
																			} else {
																				if(pX[5] <= -6){
																					return 1;
																				} else {
																					if(pX[8] <= 67){
																						if(pX[5] <= 4){
																							return 0;
																						} else {
																							if(pX[9] <= 168){
																								if(pX[6] <= 11){
																									return 1;
																								} else {
																									if(pX[7] <= -3){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						return 1;
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[6] <= 20){
																			if(pX[5] <= -17){
																				if(pX[8] <= 77){
																					return 0;
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[8] <= 35){
																		if(pX[6] <= -5){
																			if(pX[9] <= 149){
																				if(pX[0] <= 14){
																					return 1;
																				} else {
																					if(pX[0] <= 19){
																						return 0;
																					} else {
																						if(pX[8] <= 30){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			if(pX[5] <= 0){
																				return 0;
																			} else {
																				if(pX[9] <= 60){
																					if(pX[6] <= 0){
																						return 0;
																					} else {
																						return 1;
																					}
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		if(pX[7] <= 12){
																			if(pX[7] <= 5){
																				if(pX[9] <= 218){
																					if(pX[9] <= 179){
																						if(pX[7] <= -5){
																							if(pX[6] <= 3){
																								if(pX[8] <= 36){
																									if(pX[7] <= -9){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									if(pX[6] <= -9){
																										if(pX[9] <= 166){
																											if(pX[0] <= 19){
																												if(pX[7] <= -8){
																													return 0;
																												} else {
																													if(pX[6] <= -12){
																														return 1;
																													} else {
																														return 0;
																													}
																												}
																											} else {
																												return 0;
																											}
																										} else {
																											if(pX[9] <= 167){
																												return 1;
																											} else {
																												return 0;
																											}
																										}
																									} else {
																										return 0;
																									}
																								}
																							} else {
																								if(pX[8] <= 61){
																									if(pX[9] <= 147){
																										return 0;
																									} else {
																										if(pX[1] <= 11){
																											return 0;
																										} else {
																											if(pX[5] <= 11){
																												return 0;
																											} else {
																												return 1;
																											}
																										}
																									}
																								} else {
																									if(pX[7] <= -9){
																										if(pX[8] <= 67){
																											return 0;
																										} else {
																											if(pX[9] <= 163){
																												return 0;
																											} else {
																												return 1;
																											}
																										}
																									} else {
																										if(pX[5] <= 11){
																											return 1;
																										} else {
																											return 0;
																										}
																									}
																								}
																							}
																						} else {
																							if(pX[8] <= 38){
																								return 1;
																							} else {
																								if(pX[5] <= 18){
																									if(pX[1] <= 11){
																										if(pX[6] <= 9){
																											if(pX[5] <= 0){
																												return 0;
																											} else {
																												if(pX[6] <= -3){
																													return 0;
																												} else {
																													if(pX[6] <= 2){
																														return 1;
																													} else {
																														return 0;
																													}
																												}
																											}
																										} else {
																											if(pX[9] <= 100){
																												return 0;
																											} else {
																												return 1;
																											}
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									return 1;
																								}
																							}
																						}
																					} else {
																						if(pX[6] <= 15){
																							if(pX[6] <= 3){
																								return 0;
																							} else {
																								if(pX[0] <= 21){
																									if(pX[6] <= 4){
																										if(pX[8] <= 69){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										if(pX[8] <= 65){
																											return 0;
																										} else {
																											if(pX[8] <= 68){
																												return 1;
																											} else {
																												return 0;
																											}
																										}
																									}
																								} else {
																									if(pX[6] <= 12){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						} else {
																							if(pX[9] <= 210){
																								return 0;
																							} else {
																								return 1;
																							}
																						}
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				if(pX[0] <= 12){
																					if(pX[7] <= 8){
																						if(pX[9] <= 167){
																							return 0;
																						} else {
																							if(pX[8] <= 39){
																								return 1;
																							} else {
																								return 0;
																							}
																						}
																					} else {
																						if(pX[8] <= 49){
																							if(pX[9] <= 129){
																								return 0;
																							} else {
																								return 1;
																							}
																						} else {
																							if(pX[6] <= -6){
																								return 0;
																							} else {
																								if(pX[6] <= -5){
																									if(pX[8] <= 82){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							}
																						}
																					}
																				} else {
																					if(pX[6] <= 10){
																						if(pX[0] <= 15){
																							if(pX[6] <= -4){
																								return 1;
																							} else {
																								if(pX[0] <= 14){
																									return 0;
																								} else {
																									return 1;
																								}
																							}
																						} else {
																							if(pX[8] <= 39){
																								if(pX[0] <= 17){
																									if(pX[8] <= 36){
																										return 0;
																									} else {
																										return 1;
																									}
																								} else {
																									return 0;
																								}
																							} else {
																								if(pX[8] <= 82){
																									if(pX[5] <= -8){
																										if(pX[5] <= -14){
																											return 0;
																										} else {
																											return 1;
																										}
																									} else {
																										return 0;
																									}
																								} else {
																									if(pX[5] <= -8){
																										return 1;
																									} else {
																										return 0;
																									}
																								}
																							}
																						}
																					} else {
																						if(pX[7] <= 10){
																							if(pX[6] <= 14){
																								if(pX[0] <= 19){
																									return 1;
																								} else {
																									if(pX[0] <= 21){
																										return 0;
																									} else {
																										return 1;
																									}
																								}
																							} else {
																								if(pX[0] <= 17){
																									return 1;
																								} else {
																									if(pX[8] <= 68){
																										if(pX[5] <= 9){
																											if(pX[1] <= 11){
																												return 1;
																											} else {
																												return 0;
																											}
																										} else {
																											if(pX[0] <= 20){
																												if(pX[1] <= 11){
																													return 0;
																												} else {
																													return 1;
																												}
																											} else {
																												return 0;
																											}
																										}
																									} else {
																										return 1;
																									}
																								}
																							}
																						} else {
																							return 1;
																						}
																					}
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																}
															}
														} else {
															if(pX[0] <= 16){
																if(pX[1] <= 14){
																	return 1;
																} else {
																	if(pX[9] <= 54){
																		return 1;
																	} else {
																		if(pX[7] <= 13){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[9] <= 169){
																	if(pX[6] <= 0){
																		if(pX[9] <= 148){
																			if(pX[7] <= -2){
																				if(pX[7] <= -7){
																					return 1;
																				} else {
																					if(pX[0] <= 20){
																						if(pX[5] <= 6){
																							return 1;
																						} else {
																							return 0;
																						}
																					} else {
																						return 0;
																					}
																				}
																			} else {
																				if(pX[7] <= 10){
																					return 0;
																				} else {
																					if(pX[9] <= 108){
																						return 0;
																					} else {
																						if(pX[5] <= -5){
																							return 0;
																						} else {
																							return 1;
																						}
																					}
																				}
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[8] <= 88){
																			if(pX[7] <= 8){
																				if(pX[1] <= 13){
																					if(pX[8] <= 33){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 0;
																				}
																			} else {
																				if(pX[9] <= 134){
																					return 0;
																				} else {
																					if(pX[8] <= 43){
																						return 0;
																					} else {
																						return 1;
																					}
																				}
																			}
																		} else {
																			if(pX[1] <= 14){
																				return 1;
																			} else {
																				return 0;
																			}
																		}
																	}
																} else {
																	if(pX[9] <= 182){
																		if(pX[5] <= 18){
																			if(pX[7] <= 14){
																				if(pX[6] <= -5){
																					if(pX[0] <= 18){
																						return 1;
																					} else {
																						return 0;
																					}
																				} else {
																					return 1;
																				}
																			} else {
																				return 0;
																			}
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[9] <= 206){
																			return 0;
																		} else {
																			if(pX[7] <= 5){
																				if(pX[9] <= 214){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 0;
																			}
																		}
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[9] <= 183){
													if(pX[1] <= 15){
														if(pX[9] <= 157){
															if(pX[7] <= 7){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											}
										} else {
											return 1;
										}
									} else {
										if(pX[8] <= 45){
											if(pX[7] <= -8){
												if(pX[8] <= 31){
													return 1;
												} else {
													return 0;
												}
											} else {
												if(pX[0] <= 21){
													if(pX[5] <= -10){
														return 0;
													} else {
														if(pX[0] <= 13){
															return 0;
														} else {
															if(pX[1] <= 10){
																if(pX[5] <= 0){
																	return 1;
																} else {
																	if(pX[6] <= -6){
																		return 0;
																	} else {
																		if(pX[8] <= 29){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[0] <= 16){
																	if(pX[7] <= 1){
																		if(pX[6] <= 7){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	if(pX[1] <= 11){
																		if(pX[0] <= 18){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[8] <= 35){
																			return 0;
																		} else {
																			if(pX[5] <= 0){
																				if(pX[1] <= 13){
																					return 1;
																				} else {
																					return 0;
																				}
																			} else {
																				return 1;
																			}
																		}
																	}
																}
															}
														}
													}
												} else {
													return 0;
												}
											}
										} else {
											if(pX[9] <= 256){
												if(pX[6] <= 8){
													if(pX[1] <= 10){
														if(pX[0] <= 14){
															return 0;
														} else {
															if(pX[5] <= 2){
																if(pX[5] <= 0){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																if(pX[9] <= 221){
																	return 0;
																} else {
																	if(pX[5] <= 24){
																		if(pX[6] <= -12){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[8] <= 65){
															if(pX[9] <= 221){
																if(pX[5] <= 0){
																	if(pX[1] <= 11){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[7] <= -7){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[6] <= 4){
																	if(pX[8] <= 56){
																		if(pX[9] <= 228){
																			return 1;
																		} else {
																			if(pX[9] <= 244){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[9] <= 226){
																		if(pX[0] <= 17){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[1] <= 13){
																			return 0;
																		} else {
																			return 1;
																		}
																	}
																}
															}
														} else {
															if(pX[0] <= 17){
																if(pX[8] <= 82){
																	if(pX[5] <= -6){
																		if(pX[6] <= 4){
																			return 0;
																		} else {
																			if(pX[8] <= 69){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[8] <= 79){
																	return 0;
																} else {
																	if(pX[6] <= -9){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														}
													}
												} else {
													if(pX[9] <= 241){
														if(pX[5] <= 26){
															return 1;
														} else {
															if(pX[7] <= -4){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														if(pX[5] <= 20){
															if(pX[7] <= -6){
																return 1;
															} else {
																if(pX[8] <= 52){
																	return 0;
																} else {
																	if(pX[0] <= 18){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															return 1;
														}
													}
												}
											} else {
												return 1;
											}
										}
									}
								} else {
									if(pX[8] <= 43){
										if(pX[1] <= 11){
											if(pX[7] <= 1){
												if(pX[5] <= 5){
													if(pX[0] <= 25){
														if(pX[8] <= 37){
															if(pX[9] <= 190){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												} else {
													if(pX[9] <= 84){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												if(pX[0] <= 29){
													if(pX[7] <= 6){
														if(pX[7] <= 5){
															if(pX[9] <= 189){
																return 0;
															} else {
																if(pX[9] <= 196){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															return 1;
														}
													} else {
														return 0;
													}
												} else {
													if(pX[9] <= 194){
														return 0;
													} else {
														return 1;
													}
												}
											}
										} else {
											if(pX[5] <= 18){
												if(pX[0] <= 27){
													if(pX[7] <= 11){
														if(pX[9] <= 252){
															if(pX[9] <= 181){
																return 0;
															} else {
																if(pX[9] <= 196){
																	if(pX[1] <= 14){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[9] <= 106){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													if(pX[7] <= -9){
														if(pX[0] <= 28){
															return 1;
														} else {
															if(pX[9] <= 159){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														if(pX[7] <= 13){
															if(pX[5] <= -5){
																if(pX[1] <= 12){
																	return 1;
																} else {
																	if(pX[6] <= -10){
																		return 0;
																	} else {
																		if(pX[6] <= 3){
																			return 1;
																		} else {
																			return 0;
																		}
																	}
																}
															} else {
																return 0;
															}
														} else {
															return 1;
														}
													}
												}
											} else {
												if(pX[8] <= 31){
													return 0;
												} else {
													if(pX[6] <= 18){
														if(pX[8] <= 35){
															if(pX[8] <= 32){
																if(pX[1] <= 13){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														} else {
															if(pX[8] <= 38){
																if(pX[8] <= 37){
																	if(pX[6] <= -1){
																		return 1;
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[9] <= 126){
															return 0;
														} else {
															return 1;
														}
													}
												}
											}
										}
									} else {
										if(pX[8] <= 65){
											if(pX[6] <= 19){
												if(pX[9] <= 175){
													if(pX[7] <= 5){
														if(pX[5] <= 23){
															if(pX[5] <= 1){
																if(pX[8] <= 48){
																	if(pX[7] <= 2){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[5] <= -18){
																		if(pX[5] <= -35){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[9] <= 151){
																	if(pX[7] <= 4){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[9] <= 159){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[1] <= 15){
															if(pX[8] <= 59){
																if(pX[8] <= 58){
																	if(pX[0] <= 24){
																		if(pX[1] <= 12){
																			return 1;
																		} else {
																			if(pX[5] <= 9){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														} else {
															if(pX[8] <= 56){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													if(pX[1] <= 12){
														if(pX[9] <= 233){
															return 1;
														} else {
															if(pX[5] <= -1){
																return 1;
															} else {
																return 0;
															}
														}
													} else {
														if(pX[6] <= -14){
															return 1;
														} else {
															if(pX[8] <= 52){
																if(pX[6] <= -4){
																	return 0;
																} else {
																	return 1;
																}
															} else {
																return 0;
															}
														}
													}
												}
											} else {
												if(pX[7] <= -5){
													if(pX[7] <= -7){
														if(pX[6] <= 21){
															return 0;
														} else {
															if(pX[5] <= 2){
																return 0;
															} else {
																return 1;
															}
														}
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											}
										} else {
											if(pX[9] <= 105){
												if(pX[6] <= -22){
													return 1;
												} else {
													if(pX[9] <= 31){
														if(pX[8] <= 84){
															return 1;
														} else {
															return 0;
														}
													} else {
														if(pX[9] <= 58){
															if(pX[9] <= 54){
																if(pX[6] <= -18){
																	return 1;
																} else {
																	return 0;
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[0] <= 28){
													if(pX[9] <= 161){
														if(pX[7] <= -8){
															return 0;
														} else {
															if(pX[0] <= 24){
																return 1;
															} else {
																if(pX[5] <= 25){
																	if(pX[5] <= -28){
																		return 1;
																	} else {
																		if(pX[8] <= 83){
																			if(pX[1] <= 11){
																				return 0;
																			} else {
																				return 1;
																			}
																		} else {
																			return 0;
																		}
																	}
																} else {
																	return 0;
																}
															}
														}
													} else {
														if(pX[0] <= 23){
															if(pX[1] <= 11){
																return 1;
															} else {
																if(pX[9] <= 236){
																	return 0;
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[6] <= 19){
																if(pX[8] <= 87){
																	if(pX[5] <= -19){
																		if(pX[6] <= -5){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[8] <= 77){
																			return 1;
																		} else {
																			if(pX[5] <= 11){
																				return 1;
																			} else {
																				if(pX[1] <= 14){
																					return 1;
																				} else {
																					return 0;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[6] <= 0){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															} else {
																if(pX[5] <= 6){
																	return 1;
																} else {
																	return 0;
																}
															}
														}
													}
												} else {
													if(pX[6] <= 8){
														return 1;
													} else {
														if(pX[5] <= 20){
															return 1;
														} else {
															return 0;
														}
													}
												}
											}
										}
									}
								}
							}
						} else {
							if(pX[8] <= 65){
								if(pX[6] <= -25){
									return 1;
								} else {
									if(pX[9] <= 176){
										if(pX[8] <= 29){
											if(pX[6] <= 12){
												return 0;
											} else {
												if(pX[1] <= 20){
													if(pX[7] <= 1){
														if(pX[6] <= 17){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[9] <= 64){
												if(pX[0] <= 28){
													if(pX[6] <= -11){
														return 0;
													} else {
														if(pX[5] <= 14){
															if(pX[5] <= 0){
																return 0;
															} else {
																if(pX[5] <= 2){
																	return 1;
																} else {
																	return 0;
																}
															}
														} else {
															return 1;
														}
													}
												} else {
													if(pX[5] <= -2){
														return 1;
													} else {
														if(pX[6] <= -3){
															return 0;
														} else {
															return 1;
														}
													}
												}
											} else {
												if(pX[8] <= 38){
													return 0;
												} else {
													if(pX[9] <= 101){
														return 0;
													} else {
														if(pX[1] <= 17){
															if(pX[7] <= 5){
																if(pX[5] <= 4){
																	if(pX[5] <= -5){
																		return 0;
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[0] <= 19){
																	return 0;
																} else {
																	if(pX[6] <= 3){
																		return 0;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[0] <= 25){
																if(pX[6] <= 11){
																	if(pX[7] <= -1){
																		if(pX[1] <= 18){
																			return 0;
																		} else {
																			return 1;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 0;
																}
															} else {
																return 0;
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[6] <= -10){
											if(pX[9] <= 198){
												if(pX[5] <= -23){
													return 1;
												} else {
													return 0;
												}
											} else {
												return 0;
											}
										} else {
											if(pX[9] <= 182){
												return 1;
											} else {
												if(pX[5] <= -4){
													return 0;
												} else {
													if(pX[7] <= 12){
														if(pX[9] <= 244){
															if(pX[6] <= 16){
																if(pX[8] <= 62){
																	if(pX[1] <= 17){
																		if(pX[6] <= -5){
																			return 1;
																		} else {
																			if(pX[9] <= 210){
																				return 0;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		return 1;
																	}
																} else {
																	return 0;
																}
															} else {
																if(pX[9] <= 238){
																	if(pX[5] <= 11){
																		if(pX[1] <= 18){
																			return 1;
																		} else {
																			return 0;
																		}
																	} else {
																		return 0;
																	}
																} else {
																	return 1;
																}
															}
														} else {
															return 0;
														}
													} else {
														if(pX[7] <= 16){
															return 0;
														} else {
															return 1;
														}
													}
												}
											}
										}
									}
								}
							} else {
								if(pX[9] <= 121){
									if(pX[8] <= 86){
										if(pX[0] <= 23){
											if(pX[0] <= 21){
												if(pX[5] <= 3){
													return 0;
												} else {
													if(pX[5] <= 13){
														if(pX[8] <= 81){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 0;
													}
												}
											} else {
												return 1;
											}
										} else {
											if(pX[5] <= -34){
												return 1;
											} else {
												if(pX[7] <= 7){
													return 0;
												} else {
													if(pX[6] <= 11){
														return 0;
													} else {
														if(pX[0] <= 26){
															return 1;
														} else {
															return 0;
														}
													}
												}
											}
										}
									} else {
										return 1;
									}
								} else {
									if(pX[5] <= -18){
										return 1;
									} else {
										if(pX[8] <= 79){
											if(pX[6] <= 3){
												if(pX[6] <= -15){
													return 1;
												} else {
													if(pX[7] <= 0){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												if(pX[9] <= 128){
													return 1;
												} else {
													if(pX[9] <= 241){
														if(pX[7] <= 7){
															if(pX[9] <= 169){
																return 0;
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											}
										} else {
											if(pX[7] <= 14){
												if(pX[0] <= 26){
													return 0;
												} else {
													if(pX[5] <= 16){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												return 1;
											}
										}
									}
								}
							}
						}
					}
				} else {
					if(pX[0] <= 37){
						if(pX[9] <= 76){
							if(pX[7] <= 7){
								if(pX[7] <= -6){
									if(pX[6] <= -29){
										if(pX[9] <= 41){
											return 1;
										} else {
											if(pX[9] <= 60){
												return 0;
											} else {
												return 1;
											}
										}
									} else {
										return 0;
									}
								} else {
									if(pX[7] <= -2){
										if(pX[5] <= 16){
											return 1;
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								}
							} else {
								if(pX[1] <= 9){
									return 1;
								} else {
									return 0;
								}
							}
						} else {
							if(pX[8] <= 39){
								if(pX[9] <= 236){
									if(pX[8] <= 33){
										if(pX[1] <= 9){
											return 1;
										} else {
											if(pX[7] <= 1){
												if(pX[6] <= 7){
													if(pX[6] <= -7){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											} else {
												if(pX[6] <= 22){
													if(pX[5] <= 25){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										}
									} else {
										if(pX[6] <= -20){
											return 1;
										} else {
											if(pX[9] <= 126){
												return 1;
											} else {
												if(pX[5] <= 43){
													if(pX[7] <= 10){
														return 0;
													} else {
														if(pX[7] <= 17){
															if(pX[6] <= 21){
																return 1;
															} else {
																return 0;
															}
														} else {
															return 0;
														}
													}
												} else {
													return 1;
												}
											}
										}
									}
								} else {
									return 1;
								}
							} else {
								if(pX[7] <= -18){
									return 0;
								} else {
									if(pX[8] <= 70){
										if(pX[1] <= 19){
											if(pX[0] <= 31){
												if(pX[1] <= 10){
													if(pX[8] <= 42){
														return 1;
													} else {
														if(pX[7] <= -3){
															return 0;
														} else {
															if(pX[6] <= 6){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													if(pX[7] <= -6){
														if(pX[1] <= 14){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[1] <= 15){
															return 1;
														} else {
															return 0;
														}
													}
												}
											} else {
												if(pX[1] <= 13){
													return 1;
												} else {
													if(pX[1] <= 14){
														if(pX[6] <= -24){
															return 0;
														} else {
															return 1;
														}
													} else {
														if(pX[5] <= -49){
															return 0;
														} else {
															return 1;
														}
													}
												}
											}
										} else {
											if(pX[7] <= -12){
												if(pX[1] <= 21){
													return 0;
												} else {
													if(pX[8] <= 61){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												if(pX[1] <= 21){
													if(pX[8] <= 60){
														return 1;
													} else {
														return 0;
													}
												} else {
													if(pX[7] <= 17){
														return 0;
													} else {
														if(pX[6] <= -12){
															return 0;
														} else {
															return 1;
														}
													}
												}
											}
										}
									} else {
										if(pX[9] <= 128){
											if(pX[5] <= -3){
												if(pX[0] <= 32){
													return 0;
												} else {
													if(pX[6] <= -25){
														if(pX[0] <= 34){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											} else {
												return 1;
											}
										} else {
											if(pX[8] <= 83){
												return 1;
											} else {
												if(pX[7] <= -15){
													if(pX[0] <= 36){
														return 1;
													} else {
														return 0;
													}
												} else {
													return 1;
												}
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[1] <= 2){
							return 0;
						} else {
							if(pX[0] <= 45){
								if(pX[6] <= -30){
									if(pX[9] <= 140){
										if(pX[0] <= 42){
											if(pX[0] <= 40){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								} else {
									if(pX[7] <= -14){
										if(pX[2] <= 2){
											if(pX[1] <= 21){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									} else {
										if(pX[7] <= 11){
											if(pX[9] <= 163){
												if(pX[9] <= 161){
													if(pX[5] <= -51){
														return 0;
													} else {
														if(pX[1] <= 14){
															return 1;
														} else {
															if(pX[5] <= 14){
																return 1;
															} else {
																return 0;
															}
														}
													}
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											if(pX[8] <= 49){
												if(pX[1] <= 24){
													if(pX[5] <= 1){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											} else {
												if(pX[2] <= 2){
													return 1;
												} else {
													return 0;
												}
											}
										}
									}
								}
							} else {
								if(pX[9] <= 156){
									if(pX[7] <= 7){
										if(pX[8] <= 52){
											if(pX[9] <= 146){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 1;
										}
									} else {
										if(pX[7] <= 8){
											if(pX[8] <= 67){
												return 0;
											} else {
												return 1;
											}
										} else {
											if(pX[5] <= -4){
												if(pX[8] <= 48){
													return 1;
												} else {
													if(pX[9] <= 98){
														return 1;
													} else {
														if(pX[1] <= 15){
															return 1;
														} else {
															return 0;
														}
													}
												}
											} else {
												return 1;
											}
										}
									}
								} else {
									return 1;
								}
							}
						}
					}
				}
			} else {
				if(pX[0] <= 55){
					if(pX[1] <= 18){
						if(pX[6] <= 43){
							if(pX[1] <= 12){
								if(pX[8] <= 31){
									if(pX[0] <= 39){
										if(pX[6] <= 26){
											if(pX[0] <= 33){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 1;
										}
									} else {
										return 0;
									}
								} else {
									if(pX[9] <= 281){
										if(pX[8] <= 53){
											if(pX[5] <= 23){
												return 1;
											} else {
												if(pX[5] <= 24){
													if(pX[0] <= 37){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[0] <= 32){
												if(pX[8] <= 56){
													if(pX[9] <= 193){
														return 1;
													} else {
														return 0;
													}
												} else {
													if(pX[7] <= -9){
														return 0;
													} else {
														return 1;
													}
												}
											} else {
												return 1;
											}
										}
									} else {
										return 0;
									}
								}
							} else {
								if(pX[8] <= 35){
									if(pX[8] <= 29){
										return 1;
									} else {
										if(pX[6] <= 26){
											if(pX[5] <= 28){
												if(pX[0] <= 34){
													return 0;
												} else {
													if(pX[0] <= 39){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												return 1;
											}
										} else {
											if(pX[7] <= -11){
												return 1;
											} else {
												return 0;
											}
										}
									}
								} else {
									if(pX[9] <= 77){
										if(pX[1] <= 14){
											if(pX[0] <= 41){
												return 0;
											} else {
												return 1;
											}
										} else {
											if(pX[5] <= 25){
												return 1;
											} else {
												return 0;
											}
										}
									} else {
										if(pX[9] <= 251){
											if(pX[9] <= 200){
												if(pX[5] <= 14){
													if(pX[0] <= 32){
														if(pX[9] <= 198){
															if(pX[0] <= 29){
																return 1;
															} else {
																if(pX[5] <= 3){
																	return 0;
																} else {
																	if(pX[9] <= 148){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															}
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										} else {
											if(pX[6] <= 25){
												return 0;
											} else {
												if(pX[9] <= 253){
													return 0;
												} else {
													return 1;
												}
											}
										}
									}
								}
							}
						} else {
							if(pX[5] <= 48){
								if(pX[6] <= 49){
									return 0;
								} else {
									return 1;
								}
							} else {
								return 1;
							}
						}
					} else {
						if(pX[5] <= 13){
							if(pX[6] <= 25){
								if(pX[1] <= 21){
									if(pX[0] <= 27){
										if(pX[9] <= 170){
											return 0;
										} else {
											return 1;
										}
									} else {
										return 0;
									}
								} else {
									if(pX[8] <= 41){
										return 1;
									} else {
										if(pX[7] <= -10){
											return 1;
										} else {
											return 0;
										}
									}
								}
							} else {
								if(pX[8] <= 71){
									if(pX[5] <= 0){
										if(pX[7] <= -25){
											return 1;
										} else {
											if(pX[0] <= 30){
												return 1;
											} else {
												if(pX[5] <= -68){
													return 1;
												} else {
													if(pX[0] <= 37){
														return 0;
													} else {
														if(pX[1] <= 27){
															if(pX[5] <= -15){
																if(pX[9] <= 123){
																	return 0;
																} else {
																	if(pX[6] <= 39){
																		return 1;
																	} else {
																		return 0;
																	}
																}
															} else {
																return 1;
															}
														} else {
															return 0;
														}
													}
												}
											}
										}
									} else {
										return 0;
									}
								} else {
									if(pX[7] <= 0){
										if(pX[7] <= -12){
											return 1;
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								}
							}
						} else {
							if(pX[8] <= 50){
								if(pX[7] <= 20){
									if(pX[0] <= 28){
										return 1;
									} else {
										if(pX[1] <= 22){
											return 0;
										} else {
											if(pX[6] <= 52){
												if(pX[1] <= 30){
													if(pX[7] <= -20){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 0;
												}
											} else {
												return 0;
											}
										}
									}
								} else {
									return 1;
								}
							} else {
								if(pX[1] <= 36){
									if(pX[5] <= 20){
										if(pX[0] <= 30){
											if(pX[8] <= 58){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 0;
										}
									} else {
										if(pX[0] <= 52){
											if(pX[1] <= 25){
												if(pX[0] <= 33){
													if(pX[8] <= 77){
														return 0;
													} else {
														return 1;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[7] <= 1){
													return 1;
												} else {
													if(pX[8] <= 60){
														return 1;
													} else {
														return 0;
													}
												}
											}
										} else {
											return 0;
										}
									}
								} else {
									return 0;
								}
							}
						}
					}
				} else {
					if(pX[1] <= 34){
						if(pX[8] <= 74){
							if(pX[9] <= 86){
								if(pX[6] <= 48){
									return 1;
								} else {
									if(pX[9] <= 53){
										return 1;
									} else {
										if(pX[8] <= 38){
											return 1;
										} else {
											if(pX[6] <= 77){
												if(pX[0] <= 76){
													return 0;
												} else {
													return 1;
												}
											} else {
												return 0;
											}
										}
									}
								}
							} else {
								if(pX[8] <= 72){
									if(pX[0] <= 68){
										if(pX[6] <= 61){
											if(pX[8] <= 31){
												if(pX[6] <= 35){
													return 0;
												} else {
													if(pX[6] <= 39){
														return 1;
													} else {
														return 0;
													}
												}
											} else {
												return 1;
											}
										} else {
											if(pX[9] <= 127){
												return 0;
											} else {
												if(pX[5] <= -138){
													return 0;
												} else {
													if(pX[7] <= 8){
														if(pX[5] <= 27){
															return 1;
														} else {
															return 0;
														}
													} else {
														return 1;
													}
												}
											}
										}
									} else {
										if(pX[5] <= -134){
											if(pX[1] <= 24){
												return 1;
											} else {
												if(pX[1] <= 28){
													return 0;
												} else {
													if(pX[2] <= 2){
														return 1;
													} else {
														if(pX[8] <= 38){
															return 0;
														} else {
															return 1;
														}
													}
												}
											}
										} else {
											if(pX[7] <= -9){
												if(pX[6] <= 55){
													if(pX[7] <= -12){
														return 1;
													} else {
														if(pX[5] <= 32){
															return 1;
														} else {
															return 0;
														}
													}
												} else {
													return 1;
												}
											} else {
												return 1;
											}
										}
									}
								} else {
									if(pX[8] <= 73){
										if(pX[6] <= 42){
											return 1;
										} else {
											return 0;
										}
									} else {
										return 1;
									}
								}
							}
						} else {
							if(pX[5] <= 78){
								return 1;
							} else {
								if(pX[9] <= 101){
									if(pX[8] <= 85){
										return 1;
									} else {
										return 0;
									}
								} else {
									return 1;
								}
							}
						}
					} else {
						if(pX[0] <= 63){
							if(pX[0] <= 61){
								return 1;
							} else {
								return 0;
							}
						} else {
							if(pX[5] <= 7){
								return 1;
							} else {
								if(pX[8] <= 29){
									if(pX[6] <= 67){
										return 1;
									} else {
										if(pX[7] <= 43){
											if(pX[1] <= 80){
												return 1;
											} else {
												return 0;
											}
										} else {
											return 0;
										}
									}
								} else {
									return 1;
								}
							}
						}
					}
				}
			}
		}
	}
}

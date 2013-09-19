int adjustTime (int value, int change, int limit){
	
	value += change;
	if (value >= limit)
		value -= limit;
	return value;	
}

int incrementHours (int h){
	return adjustTime(h, 1, 24);
}
int decrementHours (int h){
	return adjustTime(h,23,24);
}
int incrementMinutes (int m){
	return adjustTime(m, 1, 60);
}
int decrementMinutes (int m){
	return adjustTime(m, 59, 60);
}
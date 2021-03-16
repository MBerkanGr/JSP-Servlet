package com.mehmetberkan;

import java.util.ListResourceBundle;

public class BundleSinifiRU extends ListResourceBundle{

	@Override
	protected Object[][] getContents()  {
		return contents;
	}

	static final Object[][] contents = {
			
			{"onAd.mesajkisim1" , "Лев"},
			{"onAd.mesajkisim2" , "леопард"},
			{"onAd.mesajkisim3" , "чайка"},
			{"onAd.mesajkisim4" , "Тигр"}
			
	};
	
}

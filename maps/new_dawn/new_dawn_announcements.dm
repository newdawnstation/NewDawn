/datum/map/new_dawn
	emergency_shuttle_docked_message = "Внимание всем постам: спасательные челноки и шаттл разблокированы. У вас есть %ETD% чтобы поднятся на борт."
	emergency_shuttle_leaving_dock = "Внимание всем постам: Спасательный шаттл был запущен, прибытие в точку сбора через %ETA%."

	emergency_shuttle_called_message = "Внимание всем постам: вступили в силу процедуры экстренной эвакуации. Спасательные челноки и шаттл будут разблокированы через %ETA%"
	emergency_shuttle_called_sound = sound('sound/AI/torch/abandonship.ogg', volume = 45)

	emergency_shuttle_recall_message = "Внимание всем постам: процедуры экстренной эвакуации были отменены. Возвращение в обычное рабочее состояние."

	command_report_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45)

	grid_check_message = "Ввиду обнаружения аномальной активности в энергосети станции энергоснабжение было приостановлено на неопределённый срок в качестве меры предосторожности."
	grid_check_sound = sound('sound/AI/torch/poweroff.ogg', volume = 45)

	grid_restored_message = "Энергия станции была восстановлена."
	grid_restored_sound = sound('sound/AI/torch/poweron.ogg', volume = 45)

	meteor_detected_sound = sound('sound/AI/torch/meteors.ogg', volume = 45)

	radiation_detected_message = "В райное станции %STATION_NAME% был замечен высокий уровень радиации. Персоналу рекомендуется укрыться в ближайшем защищённом обслуживающем туннеле."
	radiation_detected_sound = sound('sound/AI/torch/radiation.ogg', volume = 45)

	space_time_anomaly_sound = sound('sound/AI/torch/spanomalies.ogg', volume = 45)

	unknown_biological_entities_message = "В райное станции %STATION_NAME% были замечены неизвестные биологические объекты, всему персоналу быть наготове и ждать указаний."

	unidentified_lifesigns_message = "Замечены неидентифицированные признаки жизни. Рекомендуется исключить возможность проникновения на станцию."
	unidentified_lifesigns_sound = sound('sound/AI/torch/aliens.ogg', volume = 45)

	lifesign_spawn_sound = sound('sound/AI/torch/aliens.ogg', volume = 45)

	electrical_storm_moderate_sound = sound('sound/AI/torch/electricalstormmoderate.ogg', volume = 45)
	electrical_storm_major_sound = sound('sound/AI/torch/electricalstormmajor.ogg', volume = 45)

/datum/map/new_dawn/level_x_biohazard_sound(var/bio_level)
	switch(bio_level)
		if(7)
			return sound('sound/AI/torch/outbreak7.ogg', volume = 45)
		else
			return sound('sound/AI/torch/outbreak5.ogg', volume = 45)

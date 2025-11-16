-- Insert data into the auth.users table
INSERT INTO
"auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at") VALUES
('00000000-0000-0000-0000-000000000000', '5af62b0e-3da4-4c44-adf7-5b1b7c9c4cb6', 'authenticated', 'authenticated', 'ecamposc@labotec.com', extensions.crypt('labotec2060', extensions.gen_salt('bf'::text)), '2024-01-01 22:27:00.166861+00', NULL, '', NULL, 'e91d41043ca2c83c3be5a6ee7a4abc8a4f4fa2afc0a8453c502af931', '2024-01-01 16:22:13.780421+00', '', '', NULL, '2024-01-01 23:21:12.077887+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-01-01 22:27:00.158026+00', '2024-01-01 17:40:15.332205+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL);

-- Insert data into the auth.identities table
INSERT INTO
"auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id")
VALUES
('5af62b0e-3da4-4c44-adf7-5b1b7c9c4cb6', '5af62b0e-3da4-4c44-adf7-5b1b7c9c4cb6', '{"sub": "5af62b0e-3da4-4c44-adf7-5b1b7c9c4cb6", "email": "ecamposc@labotec.com", "email_verified": false, "phone_verified": false}', 'email', '2024-01-01 22:27:00.163787+00', '2024-01-01 22:27:00.163855+00', '2024-01-01 22:27:00.163855+00', '35f91d2f-db60-474c-8dd2-3fcbed9869bd');

INSERT INTO personalities (personality_id, created_at, is_doctor, key, is_child_voice, oai_voice, voice_prompt, title, subtitle, short_description, character_prompt, creator_id, is_story)
VALUES ('fa62546f-9a43-4774-b36b-830785d193f5',
        '2024-12-27 14:19:25.151389+00',
        'False',
        'kids_astronomy',
        'True',
        'coral',
        'Warm, youthful voice with gentle Argentine inflection and a sense of wonder',
        'Sofi, la Guía Estelar (es)',
        'Tu amiga de ciencia y constelaciones',
        'Conocé a Sofi, una estrella del cielo argentino que te invita a explorar la astronomía. Desde “Constellation Quests” hasta pequeños quizzes, te mostrará por qué las estrellas brillan y cómo reconocer la magia de las constelaciones más famosas.',
        'Sos Sofi, la Guía Estelar, una estrella brillante en el cielo austral que adora enseñar a niños y jóvenes sobre el espacio y las ciencias básicas. Empezá cada interacción invitando a descubrir constelaciones como la Cruz del Sur, compartí datos fascinantes sobre planetas y galaxias, y proponé miniquizzes de ciencia para fomentar la curiosidad. Con un tono dulce y entusiasta, transmití la magia de la astronomía y explicá fenómenos como por qué las estrellas titilan o cómo ocurren los eclipses.
        A través de “Constellation Quests,” desafiá a los niños a identificar figuras en el firmamento y aprender un poco de la historia detrás de cada una. Cuando la conversación se desvíe, aprovechá para conectar el tema con la inmensidad del universo o con otros datos científicos básicos. Siempre animá a los chicos a plantear preguntas, recordándoles que descubrir cosas nuevas es parte de la diversión.
        Tu objetivo principal es encender la chispa de la exploración y el conocimiento, mostrando que el cielo nocturno está repleto de maravillas esperando ser estudiadas. Al final de cada interacción, dejá un mensaje inspirador que motive a los niños a seguir mirando las estrellas con asombro y a preguntarse qué más hay por aprender sobre nuestro vasto cosmos.',
        NULL,
        'False');
INSERT INTO personalities (personality_id, created_at, is_doctor, key, is_child_voice, oai_voice, voice_prompt, title, subtitle, short_description, character_prompt, creator_id, is_story)
VALUES ('d1f40bbe-3374-49bc-9fb6-7e1e132d56e2',
        '2024-12-27 14:19:25.151389+00',
        'False',
        'kids_football_teacher',
        'True',
        'echo',
        'Passionate voice with stadium-projecting energy and Argentine slang',
        'Fito, el Futbolero Argentino (es)',
        'Tu compañero de trivia y aventuras futboleras',
        'Conocé a Fito, un entusiasta del fútbol que te acerca datos e historias de los ídolos argentinos. Aprendé números con el “Goal Count Challenge” y descubrí curiosidades con “Player Fact Quiz,” viviendo la pasión de la cancha a cada paso.', 'Sos Fito, el Futbolero Argentino, un personaje de IA que vive y respira fútbol desde el corazón de Buenos Aires. Tu pasión por el deporte más popular de Argentina te lleva a memorizar estadísticas de goles, historias de partidos épicos y anécdotas de las grandes figuras del balompié nacional. Empezá cada interacción con entusiasmo, contagiando a los chicos y chicas tu fervor futbolero: “¡Vamos con toda la energía, crack!”
        Tu objetivo principal es enseñar y entretener a través de desafíos y datos curiosos. Mantené un tono juguetón: con el “Goal Count Challenge,” invitá a los niños a sumar goles imaginarios y a practicar números y operaciones matemáticas sencillas. Con “Player Fact Quiz,” compartí detalles de ídolos como Maradona y Messi, motivando la curiosidad por la historia de sus hazañas.
        Si la conversación se sale de lo deportivo, retomá el tema destacando la importancia del trabajo en equipo, la perseverancia y la disciplina que el fútbol enseña. Si el niño o la niña quiere hablar de tácticas, demostrá tu conocimiento explicando sistemas de juego simples, siempre con palabras accesibles y un tono amigable. Recordá celebrar cada logro con frases de aliento: “¡Bien jugado!” o “¡Qué crack sos!”
        En definitiva, tu esencia es la energía del potrero y el amor por la pelota, deseando que todos se sientan parte de un gran equipo imaginario que aprende a través del fútbol. Tu meta es compartir la cultura futbolera argentina con orgullo y transformar cada charla en un golazo de diversión y aprendizaje.',
        NULL,
        'False');

INSERT INTO public.languages (language_id, created_at, code, name, flag)
    VALUES ('41e408fc-0998-49ae-b397-05b35bf9249a', '2024-11-26 01:52:46.957686+00', 'en-US', 'English (US)', '🇺🇸 ');
INSERT INTO public.languages (language_id, created_at, code, name, flag)
    VALUES ('83195a38-b7d5-4799-a3bb-169cff450347', '2024-11-26 01:53:07.682479+00', 'de-DE', 'German (Germany)', '🇩🇪 ');
INSERT INTO public.languages (language_id, created_at, code, name, flag)
    VALUES ('9d0f85c9-100c-49e1-91da-7da129da3fb4', '2024-11-26 20:14:24.404284+00', 'es-AR', 'Spanish (Argentina)', '🇦🇷 ');
INSERT INTO public.languages (language_id, created_at, code, name, flag)
    VALUES ('c92f5ac5-3a3d-420c-bef4-d0ef29f6fef4', '2024-11-26 20:30:28.72244+00', 'es-ES', 'Spanish (Spain)', '🇪🇸 ');

-- Insert data into the public.users table
INSERT INTO
public.users (user_id, supervisor_name, is_premium, personality_id, email, session_time, supervisee_name, supervisee_persona, supervisee_age, language_code)
VALUES
('5af62b0e-3da4-4c44-adf7-5b1b7c9c4cb6', 'Aria', true,'d1f40bbe-3374-49bc-9fb6-7e1e132d56e2', 'ecamposc@labotec.com', 0, 'Tom', 'Tom likes westerns and rap music', 10, 'es-ES');

-- -- Add the foreign key constraint to the public.users table
-- ALTER TABLE public.users
-- ADD CONSTRAINT fk_toy_id
-- FOREIGN KEY (toy_id) REFERENCES public.toys(toy_id);
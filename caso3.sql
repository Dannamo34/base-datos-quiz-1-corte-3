SELECT 
        p.first_name AS persona_nombre,
        r.name AS rol,
        m.name AS modulo,
        v.name AS vista
    FROM 
        user u
    JOIN 
        person p ON u.person_id = p.id
    JOIN 
        user_role ur ON u.id = ur.user_id
    JOIN 
        role r ON ur.role_id = r.id
    JOIN 
        role_module rm ON r.id = rm.role_id
    JOIN 
        module m ON rm.module_id = m.id
    JOIN 
        module_view mv ON m.id = mv.module_id
    JOIN 
        view v ON mv.view_id = v.id
    WHERE 
        u.username = input_username
        AND u.password = input_password
    ORDER BY 
        rol, modulo, vista;
END $$

DELIMITER ;

CALL GetUserAccess('jane.doe', 'password123');
 consulta 2 
SELECT 
    r.name AS rol_nombre,
    m.name AS modulo_nombre,
    v.name AS vista_nombre
FROM 
    role r
JOIN 
    role_module rm ON r.id = rm.role_id
JOIN 
    module m ON rm.module_id = m.id
JOIN 
    module_view mv ON m.id = mv.module_id
JOIN 
    view v ON mv.view_id = v.id
WHERE 
    r.name = 'Administrator';

imagen [img/copy2.png]


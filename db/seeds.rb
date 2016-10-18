Project.destroy_all
Worker.destroy_all

Project.create(name: 'Repair Deathstar', total_hours: 0)
Project.create(name: 'Power Wash Hogwartz', total_hours: 0)

Worker.create(name: 'Bebop', total_hours_per_day: 0, total_hours_per_project: 0)
Worker.create(name: 'Rocksteady', total_hours_per_day: 0, total_hours_per_project: 0)


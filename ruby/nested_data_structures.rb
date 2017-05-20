classroom = {
  teacher_desk: {
    name: 'Ms. DeAngelis',
    age: '26',
    supplies: [ 'tape', 'pens', 'highlighters', 'stapler', 'hallpasses'
      ]
  },
  desk_one: {
    name: 'Jacob',
    age: '16',
    supplies: [ 'pencil', 'highlighter', 'journal']
  },
  desk_two: {
    name: 'Juliana',
    age: '15',
    supplies: ['gel-pen', 'pencil', 'notebook paper']
  }
}

classroom[:teacher_desk][:supplies]

classroom[:desk_two][:supplies][1]

classroom[:desk_one][:name]

classroom[:desk_one][:supplies].push("post its")